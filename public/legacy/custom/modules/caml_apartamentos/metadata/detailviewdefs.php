<?php
$module_name = 'caml_apartamentos';
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
          0 => 
          array (
            'name' => 'tipo',
            'studio' => 'visible',
            'label' => 'LBL_TIPO',
          ),
          1 => 
          array (
            'name' => 'bloque',
            'label' => 'LBL_BLOQUE',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'unidad',
            'label' => 'LBL_UNIDAD',
          ),
          1 => 
          array (
            'name' => 'estado_ocupacion',
            'studio' => 'visible',
            'label' => 'LBL_ESTADO_OCUPACION',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'valor_admin',
            'label' => 'LBL_VALOR_ADMIN',
          ),
          1 => '',
        ),
        3 => 
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
        4 => 
        array (
          0 => 'description',
          1 => 
          array (
            'name' => 'accounts_caml_apartamentos_1_name',
          ),
        ),
      ),
    ),
  ),
);
;
?>
