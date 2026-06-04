<?php
$module_name = 'caml_tarifa';
$viewdefs [$module_name] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
        ),
      ),
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
    ),
    'panels' => 
    array (
      'default' => 
      array (
        0 => 
        array (
          0 => 'name',
          1 => 'assigned_user_name',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'tipo_cobro',
            'studio' => 'visible',
            'label' => 'LBL_TIPO_COBRO',
          ),
          1 => 
          array (
            'name' => 'valor',
            'label' => 'LBL_VALOR',
          ),
        ),
        2 => 
        array (
          0 => '',
          1 => 
          array (
            'name' => 'minuto_plena',
            'label' => 'LBL_MINUTO_PLENA',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'minuto_inicial',
            'label' => 'LBL_MINUTO_INICIAL',
          ),
          1 => 
          array (
            'name' => 'minuto_final',
            'label' => 'LBL_MINUTO_FINAL',
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'date_entered',
            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
            'label' => 'LBL_DATE_ENTERED',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
            'label' => 'LBL_DATE_MODIFIED',
          ),
        ),
        5 => 
        array (
          0 => 'description',
        ),
      ),
    ),
  ),
);
;
?>
