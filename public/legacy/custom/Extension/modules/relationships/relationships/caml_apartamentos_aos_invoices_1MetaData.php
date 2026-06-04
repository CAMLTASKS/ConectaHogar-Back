<?php
// created: 2026-06-03 17:37:50
$dictionary["caml_apartamentos_aos_invoices_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'caml_apartamentos_aos_invoices_1' => 
    array (
      'lhs_module' => 'caml_apartamentos',
      'lhs_table' => 'caml_apartamentos',
      'lhs_key' => 'id',
      'rhs_module' => 'AOS_Invoices',
      'rhs_table' => 'aos_invoices',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'caml_apartamentos_aos_invoices_1_c',
      'join_key_lhs' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
      'join_key_rhs' => 'caml_apartamentos_aos_invoices_1aos_invoices_idb',
    ),
  ),
  'table' => 'caml_apartamentos_aos_invoices_1_c',
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
      'name' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'caml_apartamentos_aos_invoices_1aos_invoices_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'caml_apartamentos_aos_invoices_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'caml_apartamentos_aos_invoices_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'caml_apartamentos_aos_invoices_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'caml_apartamentos_aos_invoices_1aos_invoices_idb',
      ),
    ),
  ),
);