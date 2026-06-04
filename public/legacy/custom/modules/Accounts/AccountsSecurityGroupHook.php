<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class AccountsSecurityGroupHook
{
    public function createSecurityGroupForContext($bean, $event, $arguments)
    {
        // 1. Identificar si es un registro NUEVO de forma robusta
        // Si fetched_row está vacío o no tiene ID, significa que no existía en la BD antes de esta acción.
        $is_new = (empty($bean->fetched_row) || empty($bean->fetched_row['id']));

        if ($is_new) {

            $group_name = "Grupo - " . $bean->name;

            // 2. Verificar si el grupo ya existe para evitar duplicidad
            $check_group = BeanFactory::newBean('SecurityGroups');
            $existing = $check_group->get_list("", "securitygroups.name = '" . db_convert($group_name, 'text') . "'");

            if (empty($existing['list'])) {
                // 3. Instanciar y rellenar el nuevo Grupo de Seguridad
                $security_group = BeanFactory::newBean('SecurityGroups');
                $security_group->name = $group_name;
                $security_group->description = "Grupo de aislamiento exclusivo para los residentes y registros de: " . $bean->name;
                
                // Si no hay usuario asignado, usamos el usuario actual del sistema
                $security_group->assigned_user_id = !empty($bean->assigned_user_id) ? $bean->assigned_user_id : $GLOBALS['current_user']->id;
                $security_group->save();

                // 4. Vincular el Grupo a la Cuenta (Account)
                // Usamos el ID del grupo directamente para guardarlo limpiamente en la tabla intermedia
                $bean->load_relationship('SecurityGroups');
                if ($bean->SecurityGroups) {
                    $bean->SecurityGroups->add($security_group->id);
                    $GLOBALS['log']->info("ConectaHogar: Grupo de seguridad '{$group_name}' generado y enlazado correctamente.");
                } else {
                    $GLOBALS['log']->fatal("ConectaHogar: No se pudo cargar la relación 'SecurityGroups' en Accounts.");
                }
            }
        }
    }

    public function validateUniqueNIT($bean, $event, $arguments)
    {
        // Solo validar si el NIT (ownership) no está vacío
        if (!empty($bean->ownership)) {
            $check_account = BeanFactory::newBean('Accounts');

            // Añadir el prefijo 'accounts.' a los campos para evitar la ambigüedad en los JOINs
            $query = "accounts.ownership = '" . db_convert($bean->ownership, 'text') . "' AND accounts.id != '" . db_convert($bean->id, 'text') . "'";
            $existing = $check_account->get_list("", $query);

            if (!empty($existing['list'])) {
                require_once('include/api/SugarApiException.php');
                throw new SugarApiExceptionInvalidParameter("Error: Ya existe un Conjunto Residencial registrado con el NIT: " . $bean->ownership);
            }
        }
    }
}