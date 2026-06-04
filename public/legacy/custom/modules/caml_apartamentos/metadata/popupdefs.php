<?php
$popupMeta = array (
    'moduleMain' => 'caml_apartamentos',
    'varName' => 'caml_apartamentos',
    'orderBy' => 'caml_apartamentos.name',
    'whereClauses' => array (
  'name' => 'caml_apartamentos.name',
  'bloque' => 'caml_apartamentos.bloque',
  'unidad' => 'caml_apartamentos.unidad',
  'accounts_caml_apartamentos_1_name' => 'caml_apartamentos.accounts_caml_apartamentos_1_name',
  'assigned_user_id' => 'caml_apartamentos.assigned_user_id',
),
    'searchInputs' => array (
  1 => 'name',
  4 => 'bloque',
  5 => 'unidad',
  6 => 'accounts_caml_apartamentos_1_name',
  7 => 'assigned_user_id',
),
    'searchdefs' => array (
  'name' => 
  array (
    'name' => 'name',
    'width' => '10%',
  ),
  'bloque' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BLOQUE',
    'width' => '10%',
    'name' => 'bloque',
  ),
  'unidad' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_UNIDAD',
    'width' => '10%',
    'name' => 'unidad',
  ),
  'accounts_caml_apartamentos_1_name' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_ACCOUNTS_CAML_APARTAMENTOS_1_FROM_ACCOUNTS_TITLE',
    'id' => 'ACCOUNTS_CAML_APARTAMENTOS_1ACCOUNTS_IDA',
    'width' => '10%',
    'name' => 'accounts_caml_apartamentos_1_name',
  ),
  'assigned_user_id' => 
  array (
    'name' => 'assigned_user_id',
    'label' => 'LBL_ASSIGNED_TO',
    'type' => 'enum',
    'function' => 
    array (
      'name' => 'get_user_array',
      'params' => 
      array (
        0 => false,
      ),
    ),
    'width' => '10%',
  ),
),
    'listviewdefs' => array (
  'TIPO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TIPO',
    'width' => '10%',
    'default' => true,
    'name' => 'tipo',
  ),
  'ACCOUNTS_CAML_APARTAMENTOS_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_ACCOUNTS_CAML_APARTAMENTOS_1_FROM_ACCOUNTS_TITLE',
    'id' => 'ACCOUNTS_CAML_APARTAMENTOS_1ACCOUNTS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'UNIDAD' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_UNIDAD',
    'width' => '10%',
    'default' => true,
    'link' => true,
    'name' => 'unidad',
  ),
  'BLOQUE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BLOQUE',
    'width' => '10%',
    'default' => true,
    'name' => 'bloque',
  ),
  'ESTADO_OCUPACION' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ESTADO_OCUPACION',
    'width' => '10%',
    'default' => true,
    'name' => 'estado_ocupacion',
  ),
  'VALOR_ADMIN' => 
  array (
    'type' => 'decimal',
    'label' => 'LBL_VALOR_ADMIN',
    'width' => '10%',
    'default' => true,
    'name' => 'valor_admin',
  ),
),
);
