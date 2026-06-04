<?php
// created: 2026-06-04 11:17:11
$dictionary["aos_invoices_caml_pagos_1"] = array (
  'true_relationship_type' => 'one-to-many',
  'from_studio' => true,
  'relationships' => 
  array (
    'aos_invoices_caml_pagos_1' => 
    array (
      'lhs_module' => 'AOS_Invoices',
      'lhs_table' => 'aos_invoices',
      'lhs_key' => 'id',
      'rhs_module' => 'caml_pagos',
      'rhs_table' => 'caml_pagos',
      'rhs_key' => 'id',
      'relationship_type' => 'many-to-many',
      'join_table' => 'aos_invoices_caml_pagos_1_c',
      'join_key_lhs' => 'aos_invoices_caml_pagos_1aos_invoices_ida',
      'join_key_rhs' => 'aos_invoices_caml_pagos_1caml_pagos_idb',
    ),
  ),
  'table' => 'aos_invoices_caml_pagos_1_c',
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
      'name' => 'aos_invoices_caml_pagos_1aos_invoices_ida',
      'type' => 'varchar',
      'len' => 36,
    ),
    4 => 
    array (
      'name' => 'aos_invoices_caml_pagos_1caml_pagos_idb',
      'type' => 'varchar',
      'len' => 36,
    ),
  ),
  'indices' => 
  array (
    0 => 
    array (
      'name' => 'aos_invoices_caml_pagos_1spk',
      'type' => 'primary',
      'fields' => 
      array (
        0 => 'id',
      ),
    ),
    1 => 
    array (
      'name' => 'aos_invoices_caml_pagos_1_ida1',
      'type' => 'index',
      'fields' => 
      array (
        0 => 'aos_invoices_caml_pagos_1aos_invoices_ida',
      ),
    ),
    2 => 
    array (
      'name' => 'aos_invoices_caml_pagos_1_alt',
      'type' => 'alternate_key',
      'fields' => 
      array (
        0 => 'aos_invoices_caml_pagos_1caml_pagos_idb',
      ),
    ),
  ),
);