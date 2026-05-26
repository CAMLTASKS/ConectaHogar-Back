<?php
$module_name = 'caml_vehiculos';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'TIPO_VEHICULO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TIPO_VEHICULO',
    'width' => '10%',
    'default' => true,
  ),
  'MARCA_COLOR' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_MARCA_COLOR',
    'width' => '10%',
    'default' => true,
  ),
  'APARTAMENTO' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_APARTAMENTO',
    'id' => 'CAML_APARTAMENTOS_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'ASSIGNED_USER_NAME' => 
  array (
    'width' => '9%',
    'label' => 'LBL_ASSIGNED_TO_NAME',
    'module' => 'Employees',
    'id' => 'ASSIGNED_USER_ID',
    'default' => true,
  ),
);
