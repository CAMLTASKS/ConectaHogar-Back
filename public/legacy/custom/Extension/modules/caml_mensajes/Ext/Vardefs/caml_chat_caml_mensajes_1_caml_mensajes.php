<?php
// created: 2026-06-04 16:05:20
$dictionary["caml_mensajes"]["fields"]["caml_chat_caml_mensajes_1"] = array (
  'name' => 'caml_chat_caml_mensajes_1',
  'type' => 'link',
  'relationship' => 'caml_chat_caml_mensajes_1',
  'source' => 'non-db',
  'module' => 'caml_chat',
  'bean_name' => 'caml_chat',
  'vname' => 'LBL_CAML_CHAT_CAML_MENSAJES_1_FROM_CAML_CHAT_TITLE',
  'id_name' => 'caml_chat_caml_mensajes_1caml_chat_ida',
);
$dictionary["caml_mensajes"]["fields"]["caml_chat_caml_mensajes_1_name"] = array (
  'name' => 'caml_chat_caml_mensajes_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_CAML_CHAT_CAML_MENSAJES_1_FROM_CAML_CHAT_TITLE',
  'save' => true,
  'id_name' => 'caml_chat_caml_mensajes_1caml_chat_ida',
  'link' => 'caml_chat_caml_mensajes_1',
  'table' => 'caml_chat',
  'module' => 'caml_chat',
  'rname' => 'name',
);
$dictionary["caml_mensajes"]["fields"]["caml_chat_caml_mensajes_1caml_chat_ida"] = array (
  'name' => 'caml_chat_caml_mensajes_1caml_chat_ida',
  'type' => 'link',
  'relationship' => 'caml_chat_caml_mensajes_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_CAML_CHAT_CAML_MENSAJES_1_FROM_CAML_MENSAJES_TITLE',
);
