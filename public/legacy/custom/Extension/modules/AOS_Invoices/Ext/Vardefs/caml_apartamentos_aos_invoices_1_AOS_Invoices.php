<?php
// created: 2026-06-03 17:37:50
$dictionary["AOS_Invoices"]["fields"]["caml_apartamentos_aos_invoices_1"] = array (
  'name' => 'caml_apartamentos_aos_invoices_1',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_aos_invoices_1',
  'source' => 'non-db',
  'module' => 'caml_apartamentos',
  'bean_name' => 'caml_apartamentos',
  'vname' => 'LBL_CAML_APARTAMENTOS_AOS_INVOICES_1_FROM_CAML_APARTAMENTOS_TITLE',
  'id_name' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
);
$dictionary["AOS_Invoices"]["fields"]["caml_apartamentos_aos_invoices_1_name"] = array (
  'name' => 'caml_apartamentos_aos_invoices_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CAML_APARTAMENTOS_AOS_INVOICES_1_FROM_CAML_APARTAMENTOS_TITLE',
  'save' => true,
  'id_name' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
  'link' => 'caml_apartamentos_aos_invoices_1',
  'table' => 'caml_apartamentos',
  'module' => 'caml_apartamentos',
  'rname' => 'name',
);
$dictionary["AOS_Invoices"]["fields"]["caml_apartamentos_aos_invoices_1caml_apartamentos_ida"] = array (
  'name' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_aos_invoices_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CAML_APARTAMENTOS_AOS_INVOICES_1_FROM_AOS_INVOICES_TITLE',
);
