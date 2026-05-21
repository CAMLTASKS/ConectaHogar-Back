<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class ContactsConectaHogarHook
{
    private function getCurrentUser()
    {
        global $current_user;
        if (!empty($current_user) && !empty($current_user->id)) {
            return $current_user;
        }
        if (isset($_SESSION['authenticated_user_id'])) {
            return BeanFactory::getBean('Users', $_SESSION['authenticated_user_id']);
        }
        return null;
    }

    /**
     * Función para abortar el guardado de forma agresiva y mostrar error
     */
    private function abortarGuardado($mensaje)
    {
        $html = "
        <div style='max-width: 600px; margin: 50px auto; padding: 30px; font-family: Arial, sans-serif; text-align: center; border: 1px solid #ffc107; border-radius: 8px; background-color: #fff9e6; box-shadow: 0 4px 8px rgba(0,0,0,0.1);'>
            <h2 style='color: #d9534f; margin-bottom: 20px;'>⚠️ No se pudo guardar el residente</h2>
            <p style='font-size: 16px; color: #333; line-height: 1.5; margin-bottom: 30px;'>{$mensaje}</p>
            <button onclick='window.history.back();' style='padding: 12px 25px; background-color: #007bff; color: white; border: none; border-radius: 5px; font-size: 16px; cursor: pointer; transition: background-color 0.3s;'>Volver al formulario</button>
        </div>
        ";
        $GLOBALS['log']->fatal("ConectaHogar Log: PROCESO ABORTADO -> " . $mensaje);
        sugar_die($html);
    }

    /**
     * MANEJADOR BEFORE_SAVE
     */
    public function processBeforeSave($bean, $event, $arguments)
    {
        $is_update = (!empty($bean->fetched_row) && !empty($bean->fetched_row['id']));
        
        $GLOBALS['log']->fatal("ConectaHogar Log: >>> INICIANDO BEFORE_SAVE <<< Modo: " . ($is_update ? 'EDICION' : 'CREACION') . " para ID: " . $bean->id);
        
        if ($is_update) {
            $GLOBALS['log']->fatal("ConectaHogar Log: Es una Edición. Saltando validación estricta.");
        } else {
            $session_user = $this->getCurrentUser();
            $db = DBManagerFactory::getInstance();

            // 1. EXTRACTOR DE CORREO
            $email_to_validate = '';
            if (!empty($bean->email1)) {
                $email_to_validate = trim($bean->email1);
            } elseif (isset($bean->email_addresses) && is_array($bean->email_addresses)) {
                foreach ($bean->email_addresses as $addr) {
                    if (!empty($addr['email_address'])) {
                        $email_to_validate = trim($addr['email_address']);
                        break;
                    }
                }
            }
            if (empty($email_to_validate)) {
                if (!empty($_REQUEST['Contacts0emailAddress0'])) {
                    $email_to_validate = trim($_REQUEST['Contacts0emailAddress0']);
                } elseif (!empty($_REQUEST['email1'])) {
                    $email_to_validate = trim($_REQUEST['email1']);
                }
            }

            // 2. VALIDACIONES ESTRICTAS DE DUPLICADOS
            if (!empty($session_user) && !empty($session_user->id)) {
                $session_user->load_relationship('SecurityGroups');
                $admin_groups = $session_user->SecurityGroups->get();

                if (!empty($admin_groups)) {
                    $group_conditions = "sg.securitygroup_id IN ('" . implode("','", $admin_groups) . "')";

                    // --- LLAVE 1: Identificación (Cédula) repetida en el conjunto ---
                    if (!empty($bean->title)) {
                        $query_id = "SELECT c.id FROM contacts c 
                                     INNER JOIN securitygroups_records sg ON c.id = sg.record_id AND sg.module_dir = 'Contacts' AND sg.deleted = 0
                                     WHERE c.title = '" . $db->quote(trim($bean->title)) . "' 
                                       AND c.deleted = 0 
                                       AND {$group_conditions}";

                        $res_id = $db->query($query_id);
                        if ($db->fetchByAssoc($res_id)) {
                            $this->abortarGuardado("El residente con la identificación/apto <b>'{$bean->title}'</b> ya está registrado en su conjunto residencial.");
                        }
                    }

                    // --- LLAVE 2: Correo Electrónico repetido a nivel global (email_addresses) ---
                    if (!empty($email_to_validate)) {
                        $clean_email = strtolower(trim($email_to_validate));
                        
                        // Buscamos directamente en la tabla maestra de correos del CRM
                        $query_email = "SELECT id FROM email_addresses WHERE LOWER(email_address) = '" . $db->quote($clean_email) . "' AND deleted = 0 LIMIT 1";
                        $res_email = $db->query($query_email);

                        if ($db->fetchByAssoc($res_email)) {
                            $this->abortarGuardado("El correo electrónico <b>'{$email_to_validate}'</b> ya se encuentra en uso por otra persona en el sistema. Si desea agregarlo a su conjunto, debe hacer una RELACIÓN, no crear un contacto nuevo.");
                        }
                    }
                }
            }
        }

        // 3. VALIDACIÓN C: Bloqueo de Acceso Móvil
        if (!empty($bean->id) && isset($bean->estado_cuenta_c)) {
            $db = DBManagerFactory::getInstance();
            if ($bean->estado_cuenta_c === 'Inactivo' || $bean->estado_cuenta_c === 'Bloqueado') {
                $user_query = "SELECT id FROM users WHERE portal_contact_id = '" . $db->quote($bean->id) . "' AND deleted = 0";
                $result = $db->query($user_query);
                if ($row = $db->fetchByAssoc($result)) {
                    $user_bean = BeanFactory::getBean('Users', $row['id']);
                    if ($user_bean->status !== 'Inactive') {
                        $user_bean->status = 'Inactive';
                        $user_bean->save();
                    }
                    $db->query("UPDATE oauth_access_tokens SET revoked = 1 WHERE user_id = '" . $db->quote($row['id']) . "'");
                }
            } elseif ($bean->estado_cuenta_c === 'Activo') {
                $user_query = "SELECT id FROM users WHERE portal_contact_id = '" . $db->quote($bean->id) . "' AND deleted = 0";
                $result = $db->query($user_query);
                if ($row = $db->fetchByAssoc($result)) {
                    $user_bean = BeanFactory::getBean('Users', $row['id']);
                    if ($user_bean->status !== 'Active') {
                        $user_bean->status = 'Active';
                        $user_bean->save();
                    }
                }
            }
        }
        $GLOBALS['log']->fatal("ConectaHogar Log: >>> FINALIZADO BEFORE_SAVE SIN ERRORES <<<");
    }

    /**
     * MANEJADOR AFTER_SAVE
     */
    public function processAfterSave($bean, $event, $arguments)
    {
        $GLOBALS['log']->fatal("ConectaHogar Log: >>> INICIANDO AFTER_SAVE <<< para ID: " . $bean->id);
        $session_user = $this->getCurrentUser();
        $db = DBManagerFactory::getInstance();

        if (isset($GLOBALS['conectahogar_processing_contact']) && $GLOBALS['conectahogar_processing_contact'] === true) {
            return;
        }
        $GLOBALS['conectahogar_processing_contact'] = true;

        // Recuperar grupos de seguridad del administrador
        $group_ids = array();
        if (!empty($session_user) && !empty($session_user->id)) {
            $session_user->load_relationship('SecurityGroups');
            $group_ids = $session_user->SecurityGroups->get();
        }

        if (!empty($group_ids)) {
            $bean->load_relationship('SecurityGroups');
            foreach ($group_ids as $group_id) {
                $bean->SecurityGroups->add($group_id);
            }
        }

        // Obtener el correo
        $email = trim($bean->email1 ?? '');
        if (empty($email) && !empty($bean->id)) {
            $email_query = "SELECT ea.email_address FROM email_addresses ea
                            INNER JOIN email_addr_bean_rel rel ON ea.id = rel.email_address_id
                            WHERE rel.bean_id = '" . $db->quote($bean->id) . "' AND rel.bean_module = 'Contacts' AND rel.deleted = 0 AND ea.deleted = 0 LIMIT 1";
            $res_email = $db->query($email_query);
            if ($row_email = $db->fetchByAssoc($res_email)) {
                $email = trim($row_email['email_address']);
            }
        }

        // 4. CONTROL DE USUARIOS
        if (!empty($email)) {
            $user_name = strtolower($email);
            $user_id_existente = null;

            $check_user_query = "SELECT id FROM users WHERE LOWER(user_name) = '" . $db->quote($user_name) . "' AND deleted = 0 LIMIT 1";
            $res_user = $db->query($check_user_query);

            if ($row_user = $db->fetchByAssoc($res_user)) {
                $user_id_existente = $row_user['id'];
            }

            if (empty($user_id_existente)) {
                $GLOBALS['log']->fatal("ConectaHogar Log: Creando nuevo usuario App.");
                $new_user = BeanFactory::newBean('Users');
                $new_user->user_name = $user_name;
                $new_user->first_name = $bean->first_name;
                $new_user->last_name = $bean->last_name;
                $new_user->email1 = $email;
                
                // Mapeo de datos importantes al usuario para que no quede vacío
                $new_user->phone_mobile = $bean->phone_mobile;
                $new_user->phone_work = $bean->phone_work;
                $new_user->title = $bean->title; // Aseguramos que la identificación pase
                
                $new_user->status = (isset($bean->estado_cuenta_c) && ($bean->estado_cuenta_c === 'Inactivo' || $bean->estado_cuenta_c === 'Bloqueado')) ? 'Inactive' : 'Active';
                $new_user->portal_contact_id = $bean->id;
                $new_user->is_admin = 0;
                $new_user->user_hash = password_hash(create_guid(), PASSWORD_BCRYPT);
                $new_user->save();

                $target_user_id = $new_user->id;
            } else {
                $GLOBALS['log']->fatal("ConectaHogar Log: Sincronizando usuario existente.");
                $target_user_id = $user_id_existente;
            }

            if (!empty($target_user_id)) {
                $user_relation_bean = BeanFactory::getBean('Users', $target_user_id);
                
                if (!empty($group_ids)) {
                    $user_relation_bean->load_relationship('SecurityGroups');
                    foreach ($group_ids as $group_id) {
                        $user_relation_bean->SecurityGroups->add($group_id);
                    }
                }

                $role_bean = BeanFactory::newBean('ACLRoles');
                $role_list = $role_bean->get_list("", "acl_roles.name = 'Rol Residente App'");
                if (!empty($role_list['list'])) {
                    $user_relation_bean->load_relationship('aclroles');
                    $user_relation_bean->aclroles->add($role_list['list'][0]->id);
                }
            }
        }

        $GLOBALS['log']->fatal("ConectaHogar Log: >>> FINALIZADO AFTER_SAVE <<<");
        unset($GLOBALS['conectahogar_processing_contact']);
    }
}