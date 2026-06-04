<?php
// created: 2026-06-04 13:56:43
$subpanel_layout['list_fields'] = array (
  'name' => 
  array (
    'vname' => 'LBL_NAME',
    'widget_class' => 'SubPanelDetailViewLink',
    'width' => '45%',
    'default' => true,
  ),
  'tarifa_c' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_TARIFA',
    'id' => 'CAML_TARIFA_ID_C',
    'link' => true,
    'width' => '10%',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'caml_tarifa',
    'target_record_key' => 'caml_tarifa_id_c',
  ),
  'total_pagar' => 
  array (
    'type' => 'currency',
    'vname' => 'LBL_TOTAL_PAGAR',
    'currency_format' => true,
    'width' => '10%',
    'default' => true,
  ),
  'vehiculo_c' => 
  array (
    'type' => 'relate',
    'default' => true,
    'studio' => 'visible',
    'vname' => 'LBL_VEHICULO',
    'id' => 'CAML_VEHICULOS_ID_C',
    'link' => true,
    'width' => '10%',
    'widget_class' => 'SubPanelDetailViewLink',
    'target_module' => 'caml_vehiculos',
    'target_record_key' => 'caml_vehiculos_id_c',
  ),
  'estado_pago' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'vname' => 'LBL_ESTADO_PAGO',
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
    'module' => 'caml_control_accesos',
    'width' => '4%',
    'default' => true,
  ),
  'remove_button' => 
  array (
    'vname' => 'LBL_REMOVE',
    'widget_class' => 'SubPanelRemoveButton',
    'module' => 'caml_control_accesos',
    'width' => '5%',
    'default' => true,
  ),
);