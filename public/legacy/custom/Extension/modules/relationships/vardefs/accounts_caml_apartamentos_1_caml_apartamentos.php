<?php
// created: 2026-05-25 17:55:31
$dictionary["caml_apartamentos"]["fields"]["accounts_caml_apartamentos_1"] = array (
  'name' => 'accounts_caml_apartamentos_1',
  'type' => 'link',
  'relationship' => 'accounts_caml_apartamentos_1',
  'source' => 'non-db',
  'module' => 'Accounts',
  'bean_name' => 'Account',
  'vname' => 'LBL_ACCOUNTS_CAML_APARTAMENTOS_1_FROM_ACCOUNTS_TITLE',
  'id_name' => 'accounts_caml_apartamentos_1accounts_ida',
);
$dictionary["caml_apartamentos"]["fields"]["accounts_caml_apartamentos_1_name"] = array (
  'name' => 'accounts_caml_apartamentos_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_ACCOUNTS_CAML_APARTAMENTOS_1_FROM_ACCOUNTS_TITLE',
  'save' => true,
  'id_name' => 'accounts_caml_apartamentos_1accounts_ida',
  'link' => 'accounts_caml_apartamentos_1',
  'table' => 'accounts',
  'module' => 'Accounts',
  'rname' => 'name',
);
$dictionary["caml_apartamentos"]["fields"]["accounts_caml_apartamentos_1accounts_ida"] = array (
  'name' => 'accounts_caml_apartamentos_1accounts_ida',
  'type' => 'link',
  'relationship' => 'accounts_caml_apartamentos_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_ACCOUNTS_CAML_APARTAMENTOS_1_FROM_CAML_APARTAMENTOS_TITLE',
);
