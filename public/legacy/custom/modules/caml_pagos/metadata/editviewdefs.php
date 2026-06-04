<?php
$module_name = 'caml_pagos';
$viewdefs [$module_name] = 
array (
  'EditView' => 
  array (
    'templateMeta' => 
    array (
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'useTabs' => false,
      'tabDefs' => 
      array (
        'DEFAULT' => 
        array (
          'newTab' => false,
          'panelDefault' => 'expanded',
        ),
      ),
      'syncDetailEditViews' => true,
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'codigo',
            'label' => 'LBL_CODIGO',
          ),
          1 => 
          array (
            'name' => 'estado_pago',
            'studio' => 'visible',
            'label' => 'LBL_ESTADO_PAGO',
          ),
        ),
        1 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'monto',
            'label' => 'LBL_MONTO',
          ),
          1 => 
          array (
            'name' => 'forma_pago',
            'studio' => 'visible',
            'label' => 'LBL_FORMA_PAGO',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'aos_invoices_caml_pagos_1_name',
          ),
          1 => 
          array (
            'name' => 'date_entered',
            'comment' => 'Date record created',
            'label' => 'LBL_DATE_ENTERED',
          ),
        ),
        4 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
;
?>
