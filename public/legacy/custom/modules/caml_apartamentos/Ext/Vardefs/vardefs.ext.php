<?php 
 //WARNING: The contents of this file are auto-generated


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


// created: 2026-05-25 17:56:06
$dictionary["caml_apartamentos"]["fields"]["caml_apartamentos_contacts_1"] = array (
  'name' => 'caml_apartamentos_contacts_1',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_contacts_1',
  'source' => 'non-db',
  'module' => 'Contacts',
  'bean_name' => 'Contact',
  'vname' => 'LBL_CAML_APARTAMENTOS_CONTACTS_1_FROM_CONTACTS_TITLE',
);


// created: 2026-06-03 17:37:50
$dictionary["caml_apartamentos"]["fields"]["caml_apartamentos_aos_invoices_1"] = array (
  'name' => 'caml_apartamentos_aos_invoices_1',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_aos_invoices_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'side' => 'right',
  'vname' => 'LBL_CAML_APARTAMENTOS_AOS_INVOICES_1_FROM_AOS_INVOICES_TITLE',
);

?>