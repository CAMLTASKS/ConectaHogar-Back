<?php
$module_name = 'caml_apartamentos';
$listViewDefs [$module_name] = 
array (
  'TIPO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TIPO',
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

  ),
  'BLOQUE' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_BLOQUE',
    'width' => '10%',
    'default' => true,
  ),
  'ESTADO_OCUPACION' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ESTADO_OCUPACION',
    'width' => '10%',
    'default' => true,
  ),
  'VALOR_ADMIN' => 
  array (
    'type' => 'decimal',
    'label' => 'LBL_VALOR_ADMIN',
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => false,
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => false,
    'link' => true,
  ),
);
