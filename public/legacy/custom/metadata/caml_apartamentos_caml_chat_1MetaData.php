<?php
// created: 2026-06-04 16:08:58
$dictionary["caml_apartamentos_caml_chat_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'caml_apartamentos_caml_chat_1' => 
    array (
      'lhs_module' => 'caml_apartamentos',
      'lhs_table' => 'caml_apartamentos',
      'lhs_key' => 'id',
      'rhs_module' => 'caml_chat',
      'rhs_table' => 'caml_chat',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'caml_apartamentos_caml_chat_1_c',
      'join_key_lhs' => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
      'join_key_rhs' => 'caml_apartamentos_caml_chat_1caml_chat_idb',
    ),
  ),
  'table' => 'caml_apartamentos_caml_chat_1_c',
  'fields' => 
  array (
    0 => 
    array (
      'name' => 'id',
      'type' => 'varchar',
      'len' => 36,
    ),
    1 => 
    array (
      'name' => 'date_modified',
      'type' => 'datetime',
    ),
    2 => 
    array (
      'name' => 'deleted',
      'type' => 'bool',
      'len' => '1',
      'default' => '0',
      'required' => true,
    ),
    3 => 
    array (
      'name' => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'caml_apartamentos_caml_chat_1caml_chat_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'caml_apartamentos_caml_chat_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'caml_apartamentos_caml_chat_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'caml_apartamentos_caml_chat_1caml_apartamentos_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'caml_apartamentos_caml_chat_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'caml_apartamentos_caml_chat_1caml_chat_idb',
      ),
    ),
  ),
);