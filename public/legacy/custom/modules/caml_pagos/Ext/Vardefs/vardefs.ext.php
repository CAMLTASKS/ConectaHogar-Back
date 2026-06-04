<?php 
 //WARNING: The contents of this file are auto-generated


// created: 2026-06-04 11:17:11
$dictionary["caml_pagos"]["fields"]["aos_invoices_caml_pagos_1"] = array (
  'name' => 'aos_invoices_caml_pagos_1',
  'type' => 'link',
  'relationship' => 'aos_invoices_caml_pagos_1',
  'source' => 'non-db',
  'module' => 'AOS_Invoices',
  'bean_name' => 'AOS_Invoices',
  'vname' => 'LBL_AOS_INVOICES_CAML_PAGOS_1_FROM_AOS_INVOICES_TITLE',
  'id_name' => 'aos_invoices_caml_pagos_1aos_invoices_ida',
);
$dictionary["caml_pagos"]["fields"]["aos_invoices_caml_pagos_1_name"] = array (
  'name' => 'aos_invoices_caml_pagos_1_name',
  'type' => 'relate',
  'source' => 'non-db',
  'vname' => 'LBL_AOS_INVOICES_CAML_PAGOS_1_FROM_AOS_INVOICES_TITLE',
  'save' => true,
  'id_name' => 'aos_invoices_caml_pagos_1aos_invoices_ida',
  'link' => 'aos_invoices_caml_pagos_1',
  'table' => 'aos_invoices',
  'module' => 'AOS_Invoices',
  'rname' => 'name',
);
$dictionary["caml_pagos"]["fields"]["aos_invoices_caml_pagos_1aos_invoices_ida"] = array (
  'name' => 'aos_invoices_caml_pagos_1aos_invoices_ida',
  'type' => 'link',
  'relationship' => 'aos_invoices_caml_pagos_1',
  'source' => 'non-db',
  'reportable' => false,
  'side' => 'right',
  'vname' => 'LBL_AOS_INVOICES_CAML_PAGOS_1_FROM_CAML_PAGOS_TITLE',
);

?>