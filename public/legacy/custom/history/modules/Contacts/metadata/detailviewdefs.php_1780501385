<?php
$viewdefs ['Contacts'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          'SEND_CONFIRM_OPT_IN_EMAIL' => 
          array (
            'customCode' => '<input type="submit" class="button hidden" disabled="disabled" title="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}" onclick="this.form.return_module.value=\'Contacts\'; this.form.return_action.value=\'Contacts\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Contacts\'; this.form.module_tab.value=\'Contacts\';" name="send_confirm_opt_in_email" value="{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}"/>',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
              'htmlOptions' => 
              array (
                'class' => 'button hidden',
                'id' => 'send_confirm_opt_in_email',
                'title' => '{$APP.LBL_SEND_CONFIRM_OPT_IN_EMAIL}',
                'onclick' => 'this.form.return_module.value=\'Contacts\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'sendConfirmOptInEmail\'; this.form.module.value=\'Contacts\'; this.form.module_tab.value=\'Contacts\';',
                'name' => 'send_confirm_opt_in_email',
                'disabled' => true,
              ),
            ),
          ),
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
          4 => 
          array (
            'customCode' => '<input type="submit" class="button" title="{$APP.LBL_MANAGE_SUBSCRIPTIONS}" onclick="this.form.return_module.value=\'Contacts\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Contacts\';" name="Manage Subscriptions" value="{$APP.LBL_MANAGE_SUBSCRIPTIONS}"/>',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
              'htmlOptions' => 
              array (
                'class' => 'button',
                'id' => 'manage_subscriptions_button',
                'title' => '{$APP.LBL_MANAGE_SUBSCRIPTIONS}',
                'onclick' => 'this.form.return_module.value=\'Contacts\'; this.form.return_action.value=\'DetailView\'; this.form.return_id.value=\'{$fields.id.value}\'; this.form.action.value=\'Subscriptions\'; this.form.module.value=\'Campaigns\'; this.form.module_tab.value=\'Contacts\';',
                'name' => 'Manage Subscriptions',
              ),
            ),
          ),
          'AOS_GENLET' => 
          array (
            'customCode' => '<input type="button" class="button" onClick="showPopup();" value="{$APP.LBL_PRINT_AS_PDF}">',
          ),
          'AOP_CREATE' => 
          array (
            'customCode' => '{if !$fields.joomla_account_id.value && $AOP_PORTAL_ENABLED}<input type="submit" class="button" onClick="this.form.action.value=\'createPortalUser\';" value="{$MOD.LBL_CREATE_PORTAL_USER}"> {/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$MOD.LBL_CREATE_PORTAL_USER}',
              'htmlOptions' => 
              array (
                'title' => '{$MOD.LBL_CREATE_PORTAL_USER}',
                'class' => 'button',
                'onclick' => 'this.form.action.value=\'createPortalUser\';',
                'name' => 'buttonCreatePortalUser',
                'id' => 'createPortalUser_button',
              ),
              'template' => '{if !$fields.joomla_account_id.value && $AOP_PORTAL_ENABLED}[CONTENT]{/if}',
            ),
          ),
          'AOP_DISABLE' => 
          array (
            'customCode' => '{if $fields.joomla_account_id.value && !$fields.portal_account_disabled.value && $AOP_PORTAL_ENABLED}<input type="submit" class="button" onClick="this.form.action.value=\'disablePortalUser\';" value="{$MOD.LBL_DISABLE_PORTAL_USER}"> {/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$MOD.LBL_DISABLE_PORTAL_USER}',
              'htmlOptions' => 
              array (
                'title' => '{$MOD.LBL_DISABLE_PORTAL_USER}',
                'class' => 'button',
                'onclick' => 'this.form.action.value=\'disablePortalUser\';',
                'name' => 'buttonDisablePortalUser',
                'id' => 'disablePortalUser_button',
              ),
              'template' => '{if $fields.joomla_account_id.value && !$fields.portal_account_disabled.value && $AOP_PORTAL_ENABLED}[CONTENT]{/if}',
            ),
          ),
          'AOP_ENABLE' => 
          array (
            'customCode' => '{if $fields.joomla_account_id.value && $fields.portal_account_disabled.value && $AOP_PORTAL_ENABLED}<input type="submit" class="button" onClick="this.form.action.value=\'enablePortalUser\';" value="{$MOD.LBL_ENABLE_PORTAL_USER}"> {/if}',
            'sugar_html' => 
            array (
              'type' => 'submit',
              'value' => '{$MOD.LBL_ENABLE_PORTAL_USER}',
              'htmlOptions' => 
              array (
                'title' => '{$MOD.LBL_ENABLE_PORTAL_USER}',
                'class' => 'button',
                'onclick' => 'this.form.action.value=\'enablePortalUser\';',
                'name' => 'buttonENablePortalUser',
                'id' => 'enablePortalUser_button',
              ),
              'template' => '{if $fields.joomla_account_id.value && $fields.portal_account_disabled.value && $AOP_PORTAL_ENABLED}[CONTENT]{/if}',
            ),
          ),
        ),
      ),
      'maxColumns' => '2',
      'widths' => 
      array (
        0 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
        1 => 
        array (
          'label' => '10',
          'field' => '30',
        ),
      ),
      'includes' => 
      array (
        0 => 
        array (
          'file' => 'modules/Contacts/Contact.js',
        ),
      ),
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_CONTACT_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ADVANCED' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
        'LBL_PANEL_ASSIGNMENT' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
    ),
    'summaryTemplates' => 
    array (
      'edit' => 'LBL_SUMMARY_PERSON',
      'detail' => 'LBL_SUMMARY_PERSON',
    ),
    'topWidget' => 
    array (
      'type' => 'statistics',
      'options' => 
      array (
        'statistics' => 
        array (
          0 => 
          array (
            'labelKey' => '',
            'type' => 'contact-last-touchpoint',
            'hideValueIfEmpty' => true,
          ),
        ),
      ),
      'acls' => 
      array (
        'Contacts' => 
        array (
          0 => 'view',
          1 => 'list',
        ),
      ),
    ),
    'sidebarWidgets' => 
    array (
      0 => 
      array (
        'type' => 'history-timeline',
        'acls' => 
        array (
          'Contacts' => 
          array (
            0 => 'view',
            1 => 'list',
          ),
        ),
      ),
    ),
    'recordActions' => 
    array (
      'actions' => 
      array (
        'print-as-pdf' => 
        array (
          'key' => 'contact-print-as-pdf',
          'labelKey' => 'LBL_PRINT_AS_PDF',
          'asyncProcess' => true,
          'modes' => 
          array (
            0 => 'detail',
          ),
          'acl' => 
          array (
            0 => 'view',
          ),
          'aclModule' => 'AOS_PDF_Templates',
          'params' => 
          array (
            'createNote' => true,
            'fileNaming' => 'template',
            'selectModal' => 
            array (
              'module' => 'AOS_PDF_Templates',
            ),
          ),
        ),
        'create-portal-user' => 
        array (
          'key' => 'create-portal-user',
          'asyncProcess' => true,
          'labelKey' => 'LBL_CREATE_PORTAL_USER',
          'modes' => 
          array (
            0 => 'detail',
          ),
          'acl' => 
          array (
            0 => 'view',
          ),
          'availability' => 
          array (
            0 => 'portal-enabled',
          ),
          'displayLogic' => 
          array (
            'onPortalDisabled' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'portal_account_disabled' => 
                  array (
                    0 => 'true',
                  ),
                ),
              ),
            ),
            'onCreatedUser' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'joomla_account_id' => 
                  array (
                    0 => 
                    array (
                      'operator' => 'not-empty',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        'enable-portal-user' => 
        array (
          'key' => 'enable-portal-user',
          'asyncProcess' => true,
          'labelKey' => 'LBL_ENABLE_PORTAL_USER',
          'modes' => 
          array (
            0 => 'detail',
          ),
          'acl' => 
          array (
            0 => 'view',
          ),
          'availability' => 
          array (
            0 => 'portal-enabled',
          ),
          'displayLogic' => 
          array (
            'onPortalEnabled' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'portal_account_disabled' => 
                  array (
                    0 => 'false',
                  ),
                ),
              ),
            ),
            'onJoomlaIDEmpty' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'joomla_account_id' => 
                  array (
                    0 => 
                    array (
                      'operator' => 'is-empty',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        'disable-portal-user' => 
        array (
          'key' => 'disable-portal-user',
          'asyncProcess' => true,
          'labelKey' => 'LBL_DISABLE_PORTAL_USER',
          'modes' => 
          array (
            0 => 'detail',
          ),
          'acl' => 
          array (
            0 => 'view',
          ),
          'availability' => 
          array (
            0 => 'portal-enabled',
          ),
          'displayLogic' => 
          array (
            'onPortalEnabled' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'portal_account_disabled' => 
                  array (
                    0 => 'true',
                  ),
                ),
              ),
            ),
            'onJoomlaIDEmpty' => 
            array (
              'modes' => 
              array (
                0 => 'detail',
                1 => 'edit',
                2 => 'create',
              ),
              'params' => 
              array (
                'activeOnFields' => 
                array (
                  'joomla_account_id' => 
                  array (
                    0 => 
                    array (
                      'operator' => 'is-empty',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_contact_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'tipo_residente_c',
            'studio' => 'visible',
            'label' => 'LBL_TIPO_RESIDENTE',
          ),
          1 => '',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'full_name',
            'label' => 'LBL_NAME',
          ),
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'title',
            'comment' => 'The title of the contact',
            'label' => 'LBL_TITLE',
          ),
          1 => 
          array (
            'name' => 'birthdate',
            'comment' => 'The birthdate of the contact',
            'label' => 'LBL_BIRTHDATE',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'primary_address_street',
            'label' => 'LBL_PRIMARY_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'primary',
            ),
          ),
          1 => 
          array (
            'name' => 'alt_address_street',
            'label' => 'LBL_ALTERNATE_ADDRESS',
            'type' => 'address',
            'displayParams' => 
            array (
              'key' => 'alt',
            ),
          ),
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'description',
            'comment' => 'Full text of the note',
            'label' => 'LBL_DESCRIPTION',
          ),
          1 => '',
        ),
      ),
      'LBL_PANEL_ADVANCED' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'email1',
            'studio' => 'false',
            'label' => 'LBL_EMAIL_ADDRESS',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'phone_mobile',
            'label' => 'LBL_MOBILE_PHONE',
          ),
          1 => 
          array (
            'name' => 'phone_home',
            'comment' => 'Home phone number of the contact',
            'label' => 'LBL_HOME_PHONE',
          ),
        ),
      ),
      'LBL_PANEL_ASSIGNMENT' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'date_entered',
            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
            'label' => 'LBL_DATE_ENTERED',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
            'label' => 'LBL_DATE_MODIFIED',
          ),
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'estado_cuenta_c',
            'studio' => 'visible',
            'label' => 'LBL_ESTADO_CUENTA',
          ),
          1 => '',
        ),
        2 => 
        array (
          0 => 
          array (
            'name' => 'account_name',
            'label' => 'LBL_ACCOUNT_NAME',
          ),
          1 => '',
        ),
      ),
    ),
  ),
);
;
?>
