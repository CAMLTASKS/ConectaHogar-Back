<?php
$hook_array['before_save'][] = Array(
    1, 
    'Heredar grupos de seguridad del Apartamento', 
    'custom/modules/AOS_Invoices/SecuritySuiteHook.php', 
    'SecuritySuiteHook', 
    'inheritGroupFromAccount'
);