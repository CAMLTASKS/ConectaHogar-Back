<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */
$relationships = array (
  'caml_apartamentos_aos_invoices_1' => 
  array (
    'id' => '121c9bf5-6cee-4324-82d9-99d05b94843f',
    'relationship_name' => 'caml_apartamentos_aos_invoices_1',
    'lhs_module' => 'caml_apartamentos',
    'lhs_table' => 'caml_apartamentos',
    'lhs_key' => 'id',
    'rhs_module' => 'AOS_Invoices',
    'rhs_table' => 'aos_invoices',
    'rhs_key' => 'id',
    'join_table' => 'caml_apartamentos_aos_invoices_1_c',
    'join_key_lhs' => 'caml_apartamentos_aos_invoices_1caml_apartamentos_ida',
    'join_key_rhs' => 'caml_apartamentos_aos_invoices_1aos_invoices_idb',
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => NULL,
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'caml_apartamentos_created_by' => 
  array (
    'id' => '1ddd5b76-2f93-4a10-ad54-725c9f981b13',
    'relationship_name' => 'caml_apartamentos_created_by',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_apartamentos',
    'rhs_table' => 'caml_apartamentos',
    'rhs_key' => 'created_by',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'caml_apartamentos_contacts_1' => 
  array (
    'id' => '5840afc1-d920-487d-9d96-9d74b272f15b',
    'relationship_name' => 'caml_apartamentos_contacts_1',
    'lhs_module' => 'caml_apartamentos',
    'lhs_table' => 'caml_apartamentos',
    'lhs_key' => 'id',
    'rhs_module' => 'Contacts',
    'rhs_table' => 'contacts',
    'rhs_key' => 'id',
    'join_table' => 'caml_apartamentos_contacts_1_c',
    'join_key_lhs' => 'caml_apartamentos_contacts_1caml_apartamentos_ida',
    'join_key_rhs' => 'caml_apartamentos_contacts_1contacts_idb',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => 'default',
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'caml_apartamentos_assigned_user' => 
  array (
    'id' => '6c7954b4-ad9a-4515-94c7-1a2dfdeb7f30',
    'relationship_name' => 'caml_apartamentos_assigned_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_apartamentos',
    'rhs_table' => 'caml_apartamentos',
    'rhs_key' => 'assigned_user_id',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'securitygroups_caml_apartamentos' => 
  array (
    'id' => '712b825f-2fb5-4214-bcff-6f324675be8e',
    'relationship_name' => 'securitygroups_caml_apartamentos',
    'lhs_module' => 'SecurityGroups',
    'lhs_table' => 'securitygroups',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_apartamentos',
    'rhs_table' => 'caml_apartamentos',
    'rhs_key' => 'id',
    'join_table' => 'securitygroups_records',
    'join_key_lhs' => 'securitygroup_id',
    'join_key_rhs' => 'record_id',
    'relationship_type' => 'many-to-many',
    'relationship_role_column' => 'module',
    'relationship_role_column_value' => 'caml_apartamentos',
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => 'default',
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'accounts_caml_apartamentos_1' => 
  array (
    'id' => 'a9f2f8f9-45da-403b-93de-62588f7b58d6',
    'relationship_name' => 'accounts_caml_apartamentos_1',
    'lhs_module' => 'Accounts',
    'lhs_table' => 'accounts',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_apartamentos',
    'rhs_table' => 'caml_apartamentos',
    'rhs_key' => 'id',
    'join_table' => 'accounts_caml_apartamentos_1_c',
    'join_key_lhs' => 'accounts_caml_apartamentos_1accounts_ida',
    'join_key_rhs' => 'accounts_caml_apartamentos_1caml_apartamentos_idb',
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => NULL,
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'caml_apartamentos_modified_user' => 
  array (
    'id' => 'ad8375e5-d2f1-4429-8a6c-167995c32ab5',
    'relationship_name' => 'caml_apartamentos_modified_user',
    'lhs_module' => 'Users',
    'lhs_table' => 'users',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_apartamentos',
    'rhs_table' => 'caml_apartamentos',
    'rhs_key' => 'modified_user_id',
    'join_table' => NULL,
    'join_key_lhs' => NULL,
    'join_key_rhs' => NULL,
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => NULL,
    'lhs_subpanel' => NULL,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
  ),
  'caml_apartamentos_caml_control_accesos_1' => 
  array (
    'id' => 'db53819a-a821-4e9c-916e-2408fa9df4a3',
    'relationship_name' => 'caml_apartamentos_caml_control_accesos_1',
    'lhs_module' => 'caml_apartamentos',
    'lhs_table' => 'caml_apartamentos',
    'lhs_key' => 'id',
    'rhs_module' => 'caml_control_accesos',
    'rhs_table' => 'caml_control_accesos',
    'rhs_key' => 'id',
    'join_table' => 'caml_apartamentos_caml_control_accesos_1_c',
    'join_key_lhs' => 'caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida',
    'join_key_rhs' => 'caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb',
    'relationship_type' => 'one-to-many',
    'relationship_role_column' => NULL,
    'relationship_role_column_value' => NULL,
    'reverse' => '0',
    'deleted' => '0',
    'readonly' => true,
    'rhs_subpanel' => 'default',
    'lhs_subpanel' => NULL,
    'from_studio' => true,
    'is_custom' => true,
    'relationship_only' => false,
    'for_activities' => false,
  ),
  'caml_apartamentos_caml_chat_1' => 
  array (
    'rhs_label' => 'Chat conjunto',
    'lhs_label' => 'Apartamentos',
    'rhs_subpanel' => 'default',
    'lhs_module' => 'caml_apartamentos',
    'rhs_module' => 'caml_chat',
    'relationship_type' => 'one-to-many',
    'readonly' => true,
    'deleted' => false,
    'relationship_only' => false,
    'for_activities' => false,
    'is_custom' => false,
    'from_studio' => true,
    'relationship_name' => 'caml_apartamentos_caml_chat_1',
  ),
);