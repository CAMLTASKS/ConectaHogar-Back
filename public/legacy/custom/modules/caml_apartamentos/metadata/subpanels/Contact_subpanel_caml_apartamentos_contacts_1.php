<?php
// created: 2026-05-25 18:11:29
$subpanel_layout['list_fields'] = array (
  'tipo' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_TIPO',
    'width' => '10%',
    'default' => true,
    'link' => true,
  ),
  'bloque' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_BLOQUE',
    'width' => '10%',
    'default' => true,
  ),
  'unidad' => 
  array (
    'type' => 'varchar',
    'vname' => 'LBL_UNIDAD',
    'width' => '10%',
    'default' => true,
  ),
  'estado_ocupacion' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_ESTADO_OCUPACION',
    'width' => '10%',
    'default' => true,
  ),
  'date_modified' => 
  array (
    'vname' => 'LBL_DATE_MODIFIED',
    'width' => '45%',
    'default' => true,
  ),
  'edit_button' => 
  array (
    'vname' => 'LBL_EDIT_BUTTON',
    'widget_class' => 'SubPanelEditButton',
    'module' => 'caml_apartamentos',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'caml_apartamentos',
    'width' => '5%',
    'default' => true,
  ),
);