<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class AccountsSecurityGroupHook
{
    public function createSecurityGroupForContext($bean, $event, $arguments)
    {
        // Solo actuar si es un registro NUEVO (Creación de Conjunto Residencial)
        if (!isset($arguments['isUpdate']) || $arguments['isUpdate'] === false) {

            $group_name = "Grupo - " . $bean->name;

            // 1. Verificar si el grupo ya existe para evitar duplicidad de nombres
            $check_group = BeanFactory::newBean('SecurityGroups');
            $existing = $check_group->get_list("", "name = '" . db_convert($group_name, 'text') . "'");

            if (empty($existing['list'])) {
                // 2. Instanciar y rellenar el nuevo Grupo de Seguridad
                $security_group = BeanFactory::newBean('SecurityGroups');
                $security_group->name = $group_name;
                $security_group->description = "Grupo de aislamiento exclusivo para los residentes y registros de: " . $bean->name;
                $security_group->assigned_user_id = $bean->assigned_user_id; // Heredar administrador responsable
                $security_group->save();

                // 3. Vincular de inmediato el nuevo Conjunto (Account) a este Grupo creado
                $bean->load_relationship('SecurityGroups');
                $bean->SecurityGroups->add($security_group->id);

                $GLOBALS['log']->info("ConectaHogar: Grupo de seguridad '{$group_name}' generado y enlazado correctamente.");
            }
        }
    }


    public function validateUniqueNIT($bean, $event, $arguments)
    {
        // Solo validar si el NIT (ownership) no está vacío
        if (!empty($bean->ownership)) {
            $check_account = BeanFactory::newBean('Accounts');

            // Buscar si existe otra cuenta con el mismo NIT que no sea la actual
            $query = "ownership = '" . db_convert($bean->ownership, 'text') . "' AND id != '" . db_convert($bean->id, 'text') . "'";
            $existing = $check_account->get_list("", $query);

            if (!empty($existing['list'])) {
                // Lanzar un error en la interfaz de SuiteCRM y detener el guardado
                require_once('include/api/SugarApiException.php');
                throw new SugarApiExceptionInvalidParameter("Error: Ya existe un Conjunto Residencial registrado con el NIT: " . $bean->ownership);
            }
        }
    }
}
