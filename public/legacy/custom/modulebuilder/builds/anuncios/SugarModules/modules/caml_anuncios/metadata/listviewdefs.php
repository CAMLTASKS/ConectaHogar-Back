<?php
$module_name = 'caml_anuncios';
$OBJECT_NAME = 'CAML_ANUNCIOS';
$listViewDefs [$module_name] = 
array (
  'DOCUMENT_NAME' => 
  array (
    'width' => '40%',
    'label' => 'LBL_NAME',
    'link' => true,
    'default' => true,
  ),
  'TIPO_ANUNCIO' => 
  array (
    'type' => 'enum',
    'studio' => 'visible',
    'label' => 'LBL_TIPO_ANUNCIO',
    'width' => '10%',
    'default' => true,
  ),
  'STATUS' => 
  array (
    'type' => 'varchar',
    'label' => 'LBL_DOC_STATUS',
    'width' => '10%',
    'default' => true,
  ),
  'SUBCATEGORY_ID' => 
  array (
    'width' => '40%',
    'label' => 'LBL_LIST_SUBCATEGORY',
    'default' => true,
  ),
  'CREATED_BY_NAME' => 
  array (
    'width' => '2%',
    'label' => 'LBL_LIST_LAST_REV_CREATOR',
    'default' => true,
    'sortable' => false,
  ),
  'ACTIVE_DATE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_ACTIVE_DATE',
    'default' => true,
  ),
  'EXP_DATE' => 
  array (
    'width' => '10%',
    'label' => 'LBL_LIST_EXP_DATE',
    'default' => true,
  ),
  'MODIFIED_BY_NAME' => 
  array (
    'width' => '10%',
    'label' => 'LBL_MODIFIED_USER',
    'module' => 'Users',
    'id' => 'USERS_ID',
    'default' => false,
    'sortable' => false,
    'related_fields' => 
    array (
      0 => 'modified_user_id',
    ),
  ),
);
