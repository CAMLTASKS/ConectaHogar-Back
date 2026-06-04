<?php
// created: 2026-06-04 16:08:58
$dictionary["caml_chat"]["fields"]["caml_apartamentos_caml_chat_1"] = array (
  'name' => 'caml_apartamentos_caml_chat_1',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_caml_chat_1',
  'source' => 'non-db',
  'module' => 'caml_apartamentos',
  'bean_name' => 'caml_apartamentos',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CHAT_1_FROM_CAML_APARTAMENTOS_TITLE',
  'id_name' => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
);
$dictionary["caml_chat"]["fields"]["caml_apartamentos_caml_chat_1_name"] = array (
  'name' => 'caml_apartamentos_caml_chat_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CHAT_1_FROM_CAML_APARTAMENTOS_TITLE',
  'save' => true,
  'id_name' => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
  'link' => 'caml_apartamentos_caml_chat_1',
  'table' => 'caml_apartamentos',
  'module' => 'caml_apartamentos',
  'rname' => 'name',
);
$dictionary["caml_chat"]["fields"]["caml_apartamentos_caml_chat_1caml_apartamentos_ida"] = array (
  'name' => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
  'type' => 'link',
  'relationship' => 'caml_apartamentos_caml_chat_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CAML_APARTAMENTOS_CAML_CHAT_1_FROM_CAML_CHAT_TITLE',
);
