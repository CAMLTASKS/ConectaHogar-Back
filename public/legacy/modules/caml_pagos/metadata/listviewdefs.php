<?php
$module_name = 'caml_pagos';
$listViewDefs [$module_name] = 
array (
  'CODIGO' => 
  array (
    'type' => 'int',
    'label' => 'LBL_CODIGO',
    'width' => '10%',
    'default' => true,
  ),
  'NAME' => 
  array (
    'width' => '32%',
    'label' => 'LBL_NAME',
    'default' => true,
    'link' => true,
  ),
  'FACTURA' => 
  array (
    'type' => 'relate',
    'studio' => 'visible',
    'label' => 'LBL_FACTURA',
    'id' => 'AOS_INVOICES_ID_C',
    'link' => true,
    'width' => '10%',
    'default' => true,
  ),
  'MONTO' => 
  array (
    'type' => 'currency',
    'label' => 'LBL_MONTO',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'ESTADO_PAGO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_ESTADO_PAGO',
    'width' => '10%',
    'default' => true,
  ),
  'FORMA_PAGO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_FORMA_PAGO',
    'width' => '10%',
    'default' => true,
  ),
  'DATE_ENTERED' => 
  array (
    'type' => 'datetime',
    'label' => 'LBL_DATE_ENTERED',
    'width' => '10%',
    'default' => true,
  ),
  'CREATED_BY_NAME' => 
  array (
    'type' => 'relate',
    'link' => true,
    'label' => 'LBL_CREATED',
    'id' => 'CREATED_BY',
    'width' => '10%',
    'default' => true,
  ),
);
