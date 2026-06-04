<?php
$module_name = 'caml_control_accesos';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1_FROM_CAML_APARTAMENTOS_TITLE',
    'id' => 'CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1CAML_APARTAMENTOS_IDA',
    'width' => '10%',
    'default' => true,
  ),
  'TARIFA_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_TARIFA',
    'id' => 'CAML_TARIFA_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'VEHICULO_C' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'label' => 'LBL_VEHICULO',
    'id' => 'CAML_VEHICULOS_ID_C',
    'link' => true,
    'width' => '10%',
  ),
  'FECHA_INGRESO' => 
  array (
    'type' => 'datetimecombo',
    'label' => 'LBL_FECHA_INGRESO',
    'width' => '10%',
    'default' => true,
  ),
  'FECHA_SALIDA' => 
  array (
    'type' => 'datetimecombo',
    'label' => 'LBL_FECHA_SALIDA',
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
;
?>
