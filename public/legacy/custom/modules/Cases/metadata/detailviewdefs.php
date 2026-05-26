<?php
$viewdefs ['Cases'] = 
array (
  'DetailView' => 
  array (
    'templateMeta' => 
    array (
      'form' => 
      array (
        'buttons' => 
        array (
          0 => 'EDIT',
          1 => 'DUPLICATE',
          2 => 'DELETE',
          3 => 'FIND_DUPLICATES',
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
      'useTabs' => true,
      'tabDefs' => 
      array (
        'LBL_CASE_INFORMATION' => 
        array (
          'newTab' => true,
          'panelDefault' => 'expanded',
        ),
      ),
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
            'type' => 'case-days-open',
            'endLabelKey' => 'LBL_STAT_DAYS',
            'hideValueIfEmpty' => true,
          ),
          1 => 
          array (
            'labelKey' => 'LBL_TOTAL_CASES_FOR_THIS_ACCOUNT',
            'type' => 'cases-per-account',
            'endLabelKey' => 'LBL_SINCE',
            'hideValueIfEmpty' => true,
          ),
        ),
      ),
    ),
    'sidebarWidgets' => 
    array (
      0 => 
      array (
        'type' => 'record-thread',
        'labelKey' => 'LBL_CASE_UPDATES',
        'options' => 
        array (
          'recordThread' => 
          array (
            'module' => 'case-updates',
            'class' => 'case-updates',
            'filters' => 
            array (
              'parentFilters' => 
              array (
                'id' => 'case_id',
              ),
              'orderBy' => 'date_entered',
              'sortOrder' => 'DESC',
            ),
            'item' => 
            array (
              'itemClass' => 'case-updates-item pt-2 pb-2',
              'collapsible' => true,
              'dynamicClass' => 
              array (
                0 => 'source',
                1 => 'internal',
              ),
              'layout' => 
              array (
                'header' => 
                array (
                  'rows' => 
                  array (
                  ),
                ),
                'body' => 
                array (
                  'rows' => 
                  array (
                    0 => 
                    array (
                      'align' => 'end',
                      'justify' => 'between',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 'author',
                          'labelDisplay' => 'none',
                          'hideIfEmpty' => true,
                          'class' => 'font-weight-bold item-title',
                        ),
                        1 => 
                        array (
                          'field' => 'internal',
                          'labelDisplay' => 'inline',
                          'labelClass' => 'm-0',
                          'display' => 'none',
                          'hideIfEmpty' => true,
                          'class' => 'small ml-auto font-weight-light',
                        ),
                      ),
                    ),
                    1 => 
                    array (
                      'align' => 'start',
                      'justify' => 'start',
                      'class' => 'flex-grow-1 item-content',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 
                          array (
                            'name' => 'description',
                            'type' => 'html',
                          ),
                          'labelDisplay' => 'none',
                        ),
                      ),
                    ),
                    2 => 
                    array (
                      'justify' => 'left',
                      'class' => 'flex-grow-1 item-content-extra',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 
                          array (
                            'name' => 'notes',
                            'type' => 'line-items',
                            'lineItems' => 
                            array (
                              'labelOnFirstLine' => true,
                              'definition' => 
                              array (
                                'name' => 'notes_fields',
                                'vname' => 'LBL_FILENAME',
                                'type' => 'composite',
                                'layout' => 
                                array (
                                  0 => 'filename',
                                ),
                                'display' => 'inline',
                                'attributeFields' => 
                                array (
                                  'filename' => 
                                  array (
                                    'name' => 'filename',
                                    'type' => 'file',
                                    'vname' => 'LBL_FILENAME',
                                    'labelKey' => 'LBL_FILENAME',
                                    'required' => true,
                                    'valueParent' => 'record',
                                    'showLabel' => 
                                    array (
                                      0 => '*',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          'labelDisplay' => 'none',
                          'hideIfEmpty' => false,
                          'class' => 'small ml-auto font-weight-light',
                        ),
                      ),
                    ),
                    3 => 
                    array (
                      'justify' => 'end',
                      'class' => 'flex-grow-1',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 'date_entered',
                          'labelDisplay' => 'none',
                          'hideIfEmpty' => true,
                          'class' => 'small ml-auto font-weight-light',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            'create' => 
            array (
              'presetFields' => 
              array (
                'parentValues' => 
                array (
                  'id' => 'case_id',
                ),
              ),
              'layout' => 
              array (
                'header' => 
                array (
                  'rows' => 
                  array (
                  ),
                ),
                'body' => 
                array (
                  'rows' => 
                  array (
                    0 => 
                    array (
                      'justify' => 'start',
                      'class' => 'flex-grow-1',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 
                          array (
                            'name' => 'description',
                            'metadata' => 
                            array (
                              'rows' => 3,
                            ),
                          ),
                          'labelDisplay' => 'top',
                          'class' => 'flex-grow-1',
                        ),
                      ),
                    ),
                    1 => 
                    array (
                      'align' => 'end',
                      'justify' => 'start',
                      'class' => 'flex-grow-1',
                      'cols' => 
                      array (
                        0 => 
                        array (
                          'field' => 'internal',
                          'labelDisplay' => 'inline',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        'acls' => 
        array (
          'Cases' => 
          array (
            0 => 'view',
            1 => 'list',
          ),
        ),
      ),
    ),
    'panels' => 
    array (
      'lbl_case_information' => 
      array (
        0 => 
        array (
          0 => 
          array (
            'name' => 'case_number',
            'label' => 'LBL_CASE_NUMBER',
          ),
          1 => 'priority',
        ),
        1 => 
        array (
          0 => 
          array (
            'name' => 'state',
            'comment' => 'The state of the case (i.e. open/closed)',
            'label' => 'LBL_STATE',
          ),
        ),
        2 => 
        array (
          0 => 'type',
          1 => 
          array (
            'name' => 'categoria_c',
            'studio' => 'visible',
            'label' => 'LBL_CATEGORIA',
          ),
        ),
        3 => 
        array (
          0 => 
          array (
            'name' => 'apartamento_c',
            'studio' => 'visible',
            'label' => 'LBL_APARTAMENTO',
          ),
          1 => '',
        ),
        4 => 
        array (
          0 => 
          array (
            'name' => 'name',
            'label' => 'LBL_SUBJECT',
          ),
        ),
        5 => 
        array (
          0 => 'description',
        ),
        6 => 
        array (
          0 => 'resolution',
        ),
        7 => 
        array (
          0 => 
          array (
            'name' => 'assigned_user_name',
            'label' => 'LBL_ASSIGNED_TO',
          ),
          1 => '',
        ),
        8 => 
        array (
          0 => 
          array (
            'name' => 'date_entered',
            'customCode' => '{$fields.date_entered.value} {$APP.LBL_BY} {$fields.created_by_name.value}',
          ),
          1 => 
          array (
            'name' => 'date_modified',
            'label' => 'LBL_DATE_MODIFIED',
            'customCode' => '{$fields.date_modified.value} {$APP.LBL_BY} {$fields.modified_by_name.value}',
          ),
        ),
      ),
    ),
  ),
);
;
?>
