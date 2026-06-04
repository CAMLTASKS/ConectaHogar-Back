<?php
 // created: 2026-06-04 16:05:20
$layout_defs["caml_chat"]["subpanel_setup"]['caml_chat_caml_mensajes_1'] = array (
  'order' => 100,
  'module' => 'caml_mensajes',
  'subpanel_name' => 'default',
  'sort_order' => 'asc',
  'sort_by' => 'id',
  'title_key' => 'LBL_CAML_CHAT_CAML_MENSAJES_1_FROM_CAML_MENSAJES_TITLE',
  'get_subpanel_data' => 'caml_chat_caml_mensajes_1',
  'top_buttons' => 
  array (
    0 => 
    array (
      'widget_class' => 'SubPanelTopButtonQuickCreate',
    ),
    1 => 
    array (
      'widget_class' => 'SubPanelTopSelectButton',
      'mode' => 'MultiSelect',
    ),
  ),
);
