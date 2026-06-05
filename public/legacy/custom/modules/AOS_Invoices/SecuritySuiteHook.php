<?php
class SecuritySuiteHook {
    public function inheritGroupFromAccount($bean, $event, $arguments) {
        if (isset($bean->processed_security_hook)) return;
        $bean->processed_security_hook = true;

        $account_id = $bean->billing_account_id;
        
        if (!empty($account_id)) {
            $db = DBManagerFactory::getInstance();
            
            // 1. Obtener los IDs de grupos de seguridad de la cuenta
            $query = "SELECT securitygroup_id 
                      FROM securitygroups_records 
                      WHERE record_id = '{$db->quote($account_id)}' 
                      AND module = 'Accounts' 
                      AND deleted = 0";
            
            $result = $db->query($query);
            
            while ($row = $db->fetchByAssoc($result)) {
                $sg_id = $row['securitygroup_id'];
                
                // 2. Verificar si ya existe la relación para evitar duplicados
                $check_query = "SELECT id FROM securitygroups_records 
                                WHERE securitygroup_id = '{$db->quote($sg_id)}' 
                                AND record_id = '{$bean->id}' 
                                AND module = 'AOS_Invoices' 
                                AND deleted = 0";
                                
                $check_res = $db->query($check_query);
                
                if (!$db->fetchByAssoc($check_res)) {
                    // 3. Insertar la relación manualmente
                    $new_id = create_guid();
                    $insert_query = "INSERT INTO securitygroups_records 
                                     (id, securitygroup_id, record_id, module, date_modified, deleted) 
                                     VALUES 
                                     ('{$new_id}', '{$db->quote($sg_id)}', '{$db->quote($bean->id)}', 'AOS_Invoices', NOW(), 0)";
                    $db->query($insert_query);
                    $GLOBALS['log']->fatal("SecuritySuiteHook: Grupo {$sg_id} asignado manualmente a factura {$bean->id}");
                }
            }
        }
    }
}