<?php
$module_name = 'caml_chat';
$listViewDefs [$module_name] = 
array (
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'TEMA' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TEMA',
    'width' => '10%',
    'default' => true,
  ),
  'PRIORIDAD' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_PRIORIDAD',
    'width' => '10%',
    'default' => true,
  ),
  'RESIDENTE' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_RESIDENTE',
    'id' => 'CONTACT_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'ESTADO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ESTADO',
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
