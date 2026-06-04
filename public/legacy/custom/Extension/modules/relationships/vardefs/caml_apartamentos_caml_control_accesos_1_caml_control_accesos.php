<?php
// created: 2026-06-04 12:59:49
$dictionary["caml_control_accesos"]["fields"]["caml_apartamentos_caml_control_accesos_1"] = array (
  'name' => 'caml_apartamentos_caml_control_accesos_1',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_caml_control_accesos_1',
  'source' => 'non-db',
  'module' => 'caml_apartamentos',
  'bean_name' => 'caml_apartamentos',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1_FROM_CAML_APARTAMENTOS_TITLE',
  'id_name' => 'caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida',
);
$dictionary["caml_control_accesos"]["fields"]["caml_apartamentos_caml_control_accesos_1_name"] = array (
  'name' => 'caml_apartamentos_caml_control_accesos_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1_FROM_CAML_APARTAMENTOS_TITLE',
  'save' => true,
  'id_name' => 'caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida',
  'link' => 'caml_apartamentos_caml_control_accesos_1',
  'table' => 'caml_apartamentos',
  'module' => 'caml_apartamentos',
  'rname' => 'name',
);
$dictionary["caml_control_accesos"]["fields"]["caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida"] = array (
  'name' => 'caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_caml_control_accesos_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CONTROL_ACCESOS_1_FROM_CAML_CONTROL_ACCESOS_TITLE',
);
