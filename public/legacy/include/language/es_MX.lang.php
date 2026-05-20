<?php
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SuiteCRM Ltd.
 * Copyright (C) 2011 - 2025 SuiteCRM Ltd.
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


if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

//the left value is the key stored in the db and the right value is ie display value
//to translate, only modify the right value in each key/value pair
$app_list_strings = array(
//e.g. auf Deutsch 'Contacts'=>'Contakten',
    'language_pack_name' => 'Español (Mexico) - es_MX',
    'moduleList' => array(
        'Home' => 'Inicio',
        'ResourceCalendar' => 'Calendario de recursos',
        'Contacts' => 'Contactos',
        'Accounts' => 'Cuentas',
        'Alerts' => 'Notificaciones',
        'Opportunities' => 'Oportunidades',
        'Cases' => 'Casos',
        'Notes' => 'Notas',
        'Calls' => 'Llamadas',
        'TemplateSectionLine' => 'Línea de sección de plantilla',
        'Calls_Reschedule' => 'Reprogramación de llamadas',
        'Emails' => 'e-Mail',
        'EAPM' => 'EAPM(módulo de api externo)',
        'Meetings' => 'Reuniones',
        'Tasks' => 'Tareas',
        'Calendar' => 'Calendario',
        'Leads' => 'Leads',
        'Currencies' => 'Divisas',
        'Activities' => 'Activities',
        'Bugs' => 'Incidencias',
        'Feeds' => 'RSS',
        'iFrames' => 'Mis sitios',
        'TimePeriods' => 'Períodos de Tiempo',
        'ContractTypes' => 'Tipos de Contrato',
        'Schedulers' => 'Planeaciones',
        'Project' => 'Projects',
        'ProjectTask' => 'Tareas de proyecto',
        'Campaigns' => 'Campañas',
        'CampaignLog' => 'Registro de campaña',
        'Documents' => 'Documentos',
        'DocumentRevisions' => 'Versiones',
        'Connectors' => 'Configuración de conectores',
        'Roles' => 'Roles',
        'Notifications' => 'Notificaciones',
        'Sync' => 'Sincronizar',
        'CalendarAccount' => 'Calendar Accounts',
        'Users' => 'Usuarios',
        'Employees' => 'Empleados',
        'Administration' => 'Administration',
        'ACLRoles' => 'Roles',
        'InboundEmail' => 'Cuentas de Email Entrante',
        'Releases' => 'Lanzamientos',
        'Prospects' => 'Público Objetivo',
        'Queues' => 'Colas',
        'EmailMarketing' => 'Marketing por e-Mail',
        'EmailTemplates' => 'Correo electrónico - Plantillas',
        'ProspectLists' => 'Objetivos - Listas',
        'SavedSearch' => 'Búsquedas guardadas',
        'UpgradeWizard' => 'Asistente de actualizaciones',
        'Trackers' => 'Seguimientos',
        'TrackerSessions' => 'Monitorización de Sesiones',
        'TrackerQueries' => 'Consultas de Monitorización',
        'FAQ' => 'Preguntas Frecuentes',
        'Newsletters' => 'Boletines de noticias',
        'SugarFeed' => 'SuiteCRM Feed',
        'SugarFavorites' => 'Favoritos SuiteCRM',

        'OAuthKeys' => 'Claves del Consumidor OAuth',
        'OAuthTokens' => 'Claves OAuth',
        'OAuth2Clients' => 'Clientes OAuth',
        'OAuth2Tokens' => 'OAuth Tokens',
        'OAuth2AuthCodes' => 'OAuth Authorization Codes',
    ),

    'moduleListSingular' => array(
        'Home' => 'Inicio',
        'Dashboard' => 'Cuadro de mando',
        'Contacts' => 'Contacto',
        'Accounts' => 'Cuenta',
        'Opportunities' => 'Oportunidad',
        'Cases' => 'Caso',
        'Notes' => 'Nota',
        'Calls' => 'Llamada',
        'Emails' => 'e-Mail',
        'EmailTemplates' => 'Plantilla de e-Mail',
        'Meetings' => 'Reunión',
        'Tasks' => 'Tarea',
        'Calendar' => 'Calendar',
        'Leads' => 'Cliente Potencial',
        'Activities' => 'Actividad',
        'History' => 'Historial',
        'Bugs' => 'Incidencia',
        'KBDocuments' => 'Base de Conocimiento',
        'Feeds' => 'RSS',
        'iFrames' => 'My Sites',
        'TimePeriods' => 'Período de Tiempo',
        'Project' => 'Proyecto',
        'ProjectTask' => 'Tarea de proyecto',
        'Prospects' => 'Público objetivo',
        'Campaigns' => 'Campaña',
        'Documents' => 'Document',
        'Sync' => 'Sync',
        'Users' => 'Usuario',
        'SugarFavorites' => 'SuiteCRM Favorites',

    ),

    'checkbox_dom' => array(
        '' => '',
        '1' => 'Sí',
        '2' => 'No',
    ),

    //e.g. en français 'Analyst'=>'Analyste',
    'account_type_dom' => array(
        '' => '',
        'Analyst' => 'Analyst',
        'Competitor' => 'Competitor',
        'Customer' => 'Customer',
        'Integrator' => 'Integrator',
        'Investor' => 'Inversor',
        'Partner' => 'Socio',
        'Press' => 'Press',
        'Prospect' => 'Prospect',
        'Reseller' => 'Reseller',
        'Other' => 'Other',
    ),
    //e.g. en español 'Apparel'=>'Ropa',
    'industry_dom' => array(
        '' => '',
        'Apparel' => 'Textile',
        'Banking' => 'Banca',
        'Biotechnology' => 'Biotecnología',
        'Chemicals' => 'Química',
        'Communications' => 'Comunicaciones',
        'Construction' => 'Construcción',
        'Consulting' => 'Consultoría',
        'Education' => 'Educación',
        'Electronics' => 'Electrónica',
        'Energy' => 'Energía',
        'Engineering' => 'Ingeniería',
        'Entertainment' => 'Entretenimiento',
        'Environmental' => 'Medio ambiente',
        'Finance' => 'Finanzas',
        'Government' => 'Gobierno',
        'Healthcare' => 'Salud',
        'Hospitality' => 'Hospitalidad',
        'Insurance' => 'Seguros',
        'Machinery' => 'Maquinaria',
        'Manufacturing' => 'Fabricación',
        'Media' => 'Medios de comunicación',
        'Not For Profit' => 'Sin ánimo de lucro',
        'Recreation' => 'Recreación',
        'Retail' => 'Minoristas',
        'Shipping' => 'Envíos',
        'Technology' => 'Tecnología',
        'Telecommunications' => 'Telecomunicaciones',
        'Transportation' => 'Transporte',
        'Utilities' => 'Servicios públicos',
        'Other' => 'Other',
    ),
    'lead_source_default_key' => 'Self Generated',
    'lead_source_dom' => array(
        '' => '',
        'Cold Call' => 'Llamada en frío',
        'Existing Customer' => 'Cliente existente',
        'Self Generated' => 'Self Generated',
        'Employee' => 'Empleado',
        'Partner' => 'Socio',
        'Public Relations' => 'Relaciones públicas',
        'Direct Mail' => 'Correo directo',
        'Conference' => 'Conferencia',
        'Trade Show' => 'Exposición',
        'Web Site' => 'Sitio Web',
        'Word of mouth' => 'Recomendación',
        'Email' => 'Email',
        'Campaign' => 'Campaña',
        'Other' => 'Other',
    ),
    'opportunity_type_dom' => array(
        '' => '',
        'Existing Business' => 'Existing Business',
        'New Business' => 'New Business',
    ),
    'roi_type_dom' => array(
        'Revenue' => 'Ingresos',
        'Investment' => 'Inversión',
        'Expected_Revenue' => 'Ingresos esperados',
        'Budget' => 'Presupuesto',

    ),
    'subpanel_pagination_type' => [
        'pagination' => 'Paginación',
        'load-more' => 'Cargar más'
    ],
    'listview_pagination_type' => [
        'pagination' => 'Paginación',
        'load-more' => 'Cargar más'
    ],
    'record_modal_pagination_type' => [
        'pagination' => 'Paginación',
        'load-more' => 'Cargar más'
    ],
    //Note:  do not translate opportunity_relationship_type_default_key
//       it is the key for the default opportunity_relationship_type_dom value
    'opportunity_relationship_type_default_key' => 'Primary Decision Maker',
    'opportunity_relationship_type_dom' => array(
        '' => '',
        'Primary Decision Maker' => 'Primary Decision Maker',
        'Business Decision Maker' => 'Tomador de Decisiones de Negocios',
        'Business Evaluator' => 'Evaluador de Negocio',
        'Technical Decision Maker' => 'Tomador de Decisiones Técnicas',
        'Technical Evaluator' => 'Evaluador Técnico',
        'Executive Sponsor' => 'Patrocinador Ejecutivo',
        'Influencer' => 'Influenciador',
        'Other' => 'Other',
    ),
    //Note:  do not translate case_relationship_type_default_key
//       it is the key for the default case_relationship_type_dom value
    'case_relationship_type_default_key' => 'Primary Contact',
    'case_relationship_type_dom' => array(
        '' => '',
        'Primary Contact' => 'Primary Contact',
        'Alternate Contact' => 'Contacto secundario',
    ),
    'payment_terms' => array(
        '' => '',
        'Net 15' => 'Neto 15',
        'Net 30' => 'Neto 30',
    ),
    'sales_stage_default_key' => 'Prospecting',
    'sales_stage_dom' => array(
        'Prospecting' => 'Prospecting',
        'Qualification' => 'Calificación',
        'Needs Analysis' => 'Análisis de las necesidades',
        'Value Proposition' => 'Propuesta de Valor',
        'Id. Decision Makers' => 'Identificar a los tomadores de decisión',
        'Perception Analysis' => 'Análisis de Percepción',
        'Proposal/Price Quote' => 'Propuesta/Presupuesto',
        'Negotiation/Review' => 'Negociación/Revisión',
        'Closed Won' => 'Ganado',
        'Closed Lost' => 'Cerrado perdido',
    ),
    'sales_probability_dom' => // keys must be the same as sales_stage_dom
        array(
            'Prospecting' => '10',
            'Qualification' => '20',
            'Needs Analysis' => '25',
            'Value Proposition' => '30',
            'Id. Decision Makers' => '40',
            'Perception Analysis' => '50',
            'Proposal/Price Quote' => '65',
            'Negotiation/Review' => '80',
            'Closed Won' => '100',
            'Closed Lost' => '0',
        ),
    'activity_dom' => array(
        'Call' => 'Call',
        'Meeting' => 'Meeting',
        'Task' => 'Task',
        'Email' => 'Email',
        'Note' => 'Note',
    ),
    'salutation_dom' => array(
        '' => '',
        'Mr.' => 'Sr.',
        'Ms.' => 'Sra.',
        'Mrs.' => 'Sra.',
        'Miss' => 'Señorita',
        'Dr.' => 'Sr.',
        'Prof.' => 'Prof.',
    ),

    'redirect_uri_type_dom' => [
        'pretty_url' => 'Pretty URL (/ep/)',
        'query_string' => 'Query String (index.php?entryPoint=)'
    ],

    //time is in seconds; the greater the time the longer it takes;
    'reminder_max_time' => 90000,
    'reminder_time_options' => array(
        60 => '1 minuto antes',
        300 => '5 minutos antes',
        600 => '10 minutos antes',
        900 => '15 minutos antes',
        1800 => '30 minutos antes',
        3600 => '1 hora antes',
        7200 => '2 horas antes',
        10800 => '3 horas antes',
        18000 => '5 horas antes',
        86400 => '1 día antes',
    ),

    // snooze for alerts
    'snooze_alert_timer' => array(
        60 => 'Posponer por 1 minuto',
        300 => 'Posponer por 5 minutos',
        600 => 'Posponer por 10 minutos',
        900 => 'Posponer por 15 minutos',
        1800 => 'Posponer por 30 minutos',
        3600 => 'Posponer por 1 hora',
        7200 => 'Posponer por 2 horas',
        10800 => 'Posponer por 3 horas',
        18000 => 'Posponer por 5 horas',
        86400 => 'Posponer por 1 día',
    ),

    'snooze_alert_timer_simple' => array(
        60 => '1 minuto',
        300 => '5 minutos',
        600 => '10 minutos',
        900 => '15 minutos',
        1800 => '30 minutos',
        3600 => '1 hour',
        7200 => '2 hours',
        10800 => '3 hours',
        18000 => '5 horas',
        86400 => '1 day',
    ),

    'task_priority_default' => 'Medium',
    'task_priority_dom' => array(
        'High' => 'High',
        'Medium' => 'Medium',
        'Low' => 'Low',
    ),
    'task_status_default' => 'No iniciada',
    'task_status_dom' => array(
        'Not Started' => 'Not Started',
        'In Progress' => 'En progreso',
        'Completed' => 'Completada',
        'Pending Input' => 'Pending Input',
        'Deferred' => 'Retrasada',
    ),
    'meeting_status_default' => 'Planificada',
    'meeting_status_dom' => array(
        'Planned' => 'Planificada',
        'Held' => 'Realizada',
        'Not Held' => 'No realizada',
    ),
    'extapi_meeting_password' => array(
        'WebEx' => 'WebEx',
    ),
    'meeting_type_dom' => array(
        'Other' => 'Other',
        'Sugar' => 'SuiteCRM',
    ),
    'call_status_default' => 'Planificada',
    'call_status_dom' => array(
        'Planned' => 'Planificada',
        'Held' => 'Held',
        'Not Held' => 'Not Held',
    ),
    'call_direction_default' => 'Outbound',
    'call_direction_dom' => array(
        'Inbound' => 'Entrante',
        'Outbound' => 'Outbound',
    ),
    'lead_status_dom' => array(
        '' => '',
        'New' => 'New',
        'Assigned' => 'Assigned',
        'In Process' => 'en proceso',
        'Converted' => 'Convertido',
        'Recycled' => 'Reciclado',
        'Dead' => 'Abandonado',
    ),
    'case_priority_default_key' => 'P2',
    'case_priority_dom' => array(
        'P1' => 'High',
        'P2' => 'Medium',
        'P3' => 'Low',
    ),
    'user_type_dom' => array(
        'RegularUser' => 'Usuario normal',
        'Administrator' => 'Administrador',
    ),
    'user_status_dom' => array(
        'Active' => 'Active',
        'Inactive' => 'Inactiva',
    ),
    'user_factor_auth_interface_dom' => array(
        'FactorAuthEmailCode' => 'Código de correo electrónico',
    ),
    'employee_status_dom' => array(
        'Active' => 'Active',
        'Terminated' => 'Despedido',
        'Leave of Absence' => 'Permiso de ausencia',
    ),
    'messenger_type_dom' => array(
        '' => '',
        'MSN' => 'MSN',
        'Yahoo!' => 'Yahoo!',
        'AOL' => 'AOL',
    ),
    'project_task_priority_options' => array(
        'High' => 'High',
        'Medium' => 'Medium',
        'Low' => 'Low',
    ),
    'project_task_priority_default' => 'Medium',

    'project_task_status_options' => array(
        'Not Started' => 'Not Started',
        'In Progress' => 'In Progress',
        'Completed' => 'Completed',
        'Pending Input' => 'Pending Input',
        'Deferred' => 'Deferred',
    ),
    'project_task_utilization_options' => array(
        '0' => 'ninguno',
        '25' => '25',
        '50' => '50',
        '75' => '75',
        '100' => '100',
    ),

    'project_status_dom' => array(
        'Draft' => 'Draft',
        'In Review' => 'En revisión',
        'Underway' => 'En marcha',
        'On_Hold' => 'En espera',
        'Completed' => 'Completed',
    ),
    'project_status_default' => 'Draft',

    'project_duration_units_dom' => array(
        'Days' => 'Días',
        'Hours' => 'Horas',
    ),

    'activity_status_type_dom' => array(
        '' => '--Ninguno--',
        'active' => 'Active',
        'inactive' => 'Inactive',
    ),

    // Note:  do not translate record_type_default_key
    //        it is the key for the default record_type_module value
    'record_type_default_key' => 'Cuentas',
    'record_type_display' => array(
        '' => '',
        'Accounts' => 'Account',
        'Opportunities' => 'Opportunity',
        'Cases' => 'Case',
        'Leads' => 'Cliente Potencial',
        'Contacts' => 'Contact', // cn (11/22/2005) added to support Emails

        'Bugs' => 'Incidencia',
        'Project' => 'Project',

        'Prospects' => 'Target',
        'ProjectTask' => 'Project Task',

        'Tasks' => 'Task',

        'AOS_Contracts' => 'Contrato',
        'AOS_Invoices' => 'Factura',
        'AOS_Quotes' => 'Cotización',
        'AOS_Products' => 'Product',

    ),

    'record_type_display_notes' => array(
        'Accounts' => 'Account',
        'Contacts' => 'Contact',
        'Opportunities' => 'Opportunity',
        'Campaigns' => 'Campaña',
        'Tasks' => 'Task',
        'Emails' => 'Email',

        'Bugs' => 'Incidencia',
        'Project' => 'Project',
        'ProjectTask' => 'Project Task',
        'Prospects' => 'Target',
        'Cases' => 'Case',
        'Leads' => 'Cliente Potencial',

        'Meetings' => 'Meeting',
        'Calls' => 'Call',

        'AOS_Contracts' => 'Contract',
        'AOS_Invoices' => 'Invoice',
        'AOS_Quotes' => 'Cotización',
        'AOS_Products' => 'Product',
    ),

    'parent_type_display' => array(
        'Accounts' => 'Account',
        'Contacts' => 'Contact',
        'Tasks' => 'Task',
        'Opportunities' => 'Opportunity',

        'Bugs' => 'Incidencia',
        'Cases' => 'Case',
        'Leads' => 'Cliente Potencial',

        'Project' => 'Project',
        'ProjectTask' => 'Project Task',

        'Prospects' => 'Target',

        'AOS_Contracts' => 'Contract',
        'AOS_Invoices' => 'Invoice',
        'AOS_Quotes' => 'Cotización',
        'AOS_Products' => 'Product',

    ),
    'parent_line_items' => array(
        'AOS_Quotes' => 'Cotizaciones',
        'AOS_Invoices' => 'Facturas',
        'AOS_Contracts' => 'Contratos',
    ),
    'issue_priority_default_key' => 'Medium',
    'issue_priority_dom' => array(
        'Urgent' => 'Urgente',
        'High' => 'High',
        'Medium' => 'Medium',
        'Low' => 'Low',
    ),
    'issue_resolution_default_key' => '',
    'issue_resolution_dom' => array(
        '' => '',
        'Accepted' => 'Accepted',
        'Duplicate' => 'Duplicate',
        'Closed' => 'Closed',
        'Out of Date' => 'Out of Date',
        'Invalid' => 'Invalid',
    ),

    'issue_status_default_key' => 'New',
    'issue_status_dom' => array(
        'New' => 'New',
        'Assigned' => 'Assigned',
        'Closed' => 'Closed',
        'Pending' => 'Pending',
        'Rejected' => 'Rejected',
    ),

    'bug_priority_default_key' => 'Medium',
    'bug_priority_dom' => array(
        'Urgent' => 'Urgent',
        'High' => 'High',
        'Medium' => 'Medium',
        'Low' => 'Low',
    ),
    'bug_resolution_default_key' => '',
    'bug_resolution_dom' => array(
        '' => '',
        'Accepted' => 'Accepted',
        'Duplicate' => 'Duplicate',
        'Fixed' => 'Corregida',
        'Out of Date' => 'Out of Date',
        'Invalid' => 'Invalid',
        'Later' => 'Más tarde',
    ),
    'bug_status_default_key' => 'New',
    'bug_status_dom' => array(
        'New' => 'New',
        'Assigned' => 'Assigned',
        'Closed' => 'Closed',
        'Pending' => 'Pending',
        'Rejected' => 'Rejected',
    ),
    'bug_type_default_key' => 'Incidencia',
    'bug_type_dom' => array(
        'Defect' => 'Defecto',
        'Feature' => 'Característica',
    ),
    'case_type_dom' => array(
        'Administration' => 'Administration',
        'Product' => 'Product',
        'User' => 'Usuario',
    ),

    'source_default_key' => '',
    'source_dom' => array(
        '' => '',
        'Internal' => 'Interno',
        'Forum' => 'Foro',
        'Web' => 'Sitio Web',
        'InboundEmail' => 'Email',
    ),

    'file_field_storage_type_dom' => [
        'private-documents' => 'Private Documents',
        'public-documents' => 'Public Documents',
        'archived-documents' => 'Archived Documents',
    ],


    'image_field_storage_type_dom' => [
        'private-images' => 'Private Images',
        'public-images' => 'Public Images',
    ],

    'product_category_default_key' => '',
    'product_category_dom' => array(
        '' => '',
        'Accounts' => 'Cuentas',
        'Activities' => 'Activities',
        'Bugs' => 'Bugs',
        'Calendar' => 'Calendar',
        'Calls' => 'Llamadas',
        'Campaigns' => 'Campaigns',
        'Cases' => 'Casos',
        'Contacts' => 'Contactos',
        'Currencies' => 'Currencies',
        'Dashboard' => 'Dashboard',
        'Documents' => 'Documentos',
        'Emails' => 'Emails',
        'Feeds' => 'Fuentes RSS',
        'Forecasts' => 'Previsiones',
        'Help' => 'Ayuda',
        'Home' => 'Inicio',
        'Leads' => 'Leads',
        'Meetings' => 'Meetings',
        'Notes' => 'Notes',
        'Opportunities' => 'Opportunities',
        'Outlook Plugin' => 'Plugin de Outlook',
        'Projects' => 'Projects',
        'Quotes' => 'Presupuestos',
        'Releases' => 'Releases',
        'RSS' => 'RSS',
        'Studio' => 'Estudio',
        'Upgrade' => 'Actualización',
        'Users' => 'Usuarios',
    ),
    /*Added entries 'Queued' and 'Sending' for 4.0 release..*/
    'campaign_status_dom' => array(
        'Planning' => 'Planeación',
        'Active' => 'Active',
        'Inactive' => 'Inactive',
        'Complete' => 'Completo',
        //'In Queue' => 'In Queue',
        //'Sending' => 'Sending',
    ),
    'campaign_type_dom' => array(
        '' => '',
        'Telesales' => 'Televenta',
        'Mail' => 'Correo',
        'Email' => 'Email',
        'Print' => 'Imprimir',
        'Web' => 'Web',
        'Radio' => 'Opción Radio',
        'Television' => 'Televisión',
        'NewsLetter' => 'Boletín de noticias',
        'Survey' => 'Encuesta',
    ),

    'newsletter_frequency_dom' => array(
        '' => '',
        'Weekly' => 'Semanalmente',
        'Monthly' => 'Mensualmente',
        'Quarterly' => 'Trimestralmente',
        'Annually' => 'Anualmente',
    ),

    'notifymail_sendtype' => array(
        'SMTP' => 'SMTP',
    ),
    'dom_cal_month_long' => array(
        '0' => '',
        '1' => 'Enero',
        '2' => 'Febrero',
        '3' => 'Marzo',
        '4' => 'Abril',
        '5' => 'Mayo',
        '6' => 'Junio',
        '7' => 'Julio',
        '8' => 'Agosto',
        '9' => 'Septiembre',
        '10' => 'Octubre',
        '11' => 'Noviembre',
        '12' => 'Diciembre',
    ),
    'dom_cal_month_short' => array(
        '0' => '',
        '1' => 'Ene',
        '2' => 'Feb',
        '3' => 'Mar',
        '4' => 'Abr',
        '5' => 'May',
        '6' => 'Jun',
        '7' => 'Jul',
        '8' => 'Ago',
        '9' => 'Sep',
        '10' => 'Oct',
        '11' => 'Nov',
        '12' => 'Dic',
    ),
    'dom_cal_day_long' => array(
        '0' => '',
        '1' => 'Domingo',
        '2' => 'Lunes',
        '3' => 'Martes',
        '4' => 'Miércoles',
        '5' => 'Jueves',
        '6' => 'Viernes',
        '7' => 'Sábado',
    ),
    'dom_cal_day_short' => array(
        '0' => '',
        '1' => 'Dom',
        '2' => 'Lun',
        '3' => 'Mar',
        '4' => 'Mie',
        '5' => 'Jue',
        '6' => 'Vie',
        '7' => 'Sab',
    ),
    'dom_meridiem_lowercase' => array(
        'am' => 'am',
        'pm' => 'pm',
    ),
    'dom_meridiem_uppercase' => array(
        'AM' => 'AM',
        'PM' => 'PM',
    ),

    'dom_inbound_email_account_types' => [
        'personal' => 'Personal',
        'group' => 'Grupo',
        'bounce' => 'De rebote',
    ],

    'dom_inbound_email_auth_types' => [
        'basic' => 'Autenticación Básica',
        'oauth' => 'OAuth',
    ],

    'dom_outbound_email_auth_types' => [
        'no_auth' => 'No Auth',
        'basic' => 'Autenticación Básica',
        'oauth' => 'OAuth',
    ],

    'dom_external_oauth_connection_types' => [
        'personal' => 'Personal',
        'group' => 'Group',
    ],

    'dom_external_oauth_provider_types' => [
        'personal' => 'Personal',
        'group' => 'Group',
    ],

    'dom_manual_migration_tasks_types' => [
        'background' => 'Background Process',
        'immediate' => 'Immediate',
    ],

    'dom_manual_migration_tasks_statuses' => [
        'initial' => 'Initial',
        'pending' => 'Pending',
        'running' => 'Running',
        'failed' => 'Failed',
        'completed_with_failures' => 'Completed With Failures',
        'completed' => 'Completed'
    ],

    'dom_processes_types' => [
        'background' => 'Background Process',
        'immediate' => 'Immediate',
    ],

    'dom_processes_statuses' => [
        'initial' => 'Initial',
        'pending' => 'Pending',
        'running' => 'Running',
        'failed' => 'Failed',
        'completed_with_failures' => 'Completed With Failures',
        'completed' => 'Completed'
    ],

    'dom_async_task_phases' => [
        '' => '',
        'queueing' => 'Queueing',
        'processing' => 'Processing',
        'finalizing' => 'Finalizing',
        'completed' => 'Completed',
    ],

    'dom_outbound_email_account_types' => [
        'user' => 'Personal',
        'group' => 'Group',
        'system' => 'Sistema',
        'system-override' => 'Anulación del sistema',
    ],

    'dom_inbound_email_account_status' => [
        'Active' => 'Active',
        'Inactive' => 'Inactive',
    ],

    'dom_email_body_filtering_option' => [
      'multi' => 'Búsqueda de palabras múltiples',
      'single' => 'Búsqueda de una sola palabra',
    ],

    'dom_email_types' => array(
        'out' => 'Enviado',
        'archived' => 'Archivado',
        'draft' => 'Draft',
        'inbound' => 'Inbound',
        'campaign' => 'Campaña',
    ),
    'dom_email_status' => array(
        'archived' => 'Archived',
        'closed' => 'Closed',
        'draft' => 'Borrador',
        'read' => 'Leído',
        'replied' => 'Respondido',
        'sent' => 'Sent',
        'send_error' => 'Error de envío',
        'unread' => 'No leído',
    ),
    'dom_email_archived_status' => array(
        'archived' => 'Archived',
    ),

    'dom_email_server_type' => array(
        '' => '--None--',
        'imap' => 'IMAP',
    ),
    'dom_mailbox_type' => array(/*''           => '--None Specified--',*/
        'pick' => '--None--',
        'createcase' => 'Nuevo caso',
        'bounce' => 'Gestión de rebotes',
    ),
    'dom_email_distribution' => array(
        '' => '--None--',
        'direct' => 'Asignación Directa',
        'roundRobin' => 'Round-Robin',
        'leastBusy' => 'Menos-Ocupado',
    ),
    'dom_email_errors' => array(
        1 => 'Solo seleccione un usuario cuando los artículos se asignen directamente.',
        2 => 'Debes asignar solamente artículos seleccionados cuando estos se asignan de forma directa.',
    ),
    'dom_email_bool' => array(
        'bool_true' => 'Yes',
        'bool_false' => 'No',
    ),
    'dom_int_bool' => array(
        1 => 'Yes',
        0 => 'No',
    ),
    'dom_int_bool_string' => array(
        '1' => 'Yes',
        '0' => 'No',
    ),
    'dom_switch_bool' => array(
        'on' => 'Yes',
        'off' => 'No',
        '' => 'No',
    ),

    'dom_email_link_type' => array(
        'sugar' => 'Cliente de correo de SuiteCRM',
        'mailto' => 'Cliente de correo externo',
    ),

    'dom_editor_type' => array(
        'none' => 'HTML directo',
        'tinymce' => 'TinyMCE Editor',
    ),

    'dom_email_editor_option' => array(
        '' => 'Formato de correo por defecto',
        'html' => 'e-Mail en HTML',
        'plain' => 'e-Mail en texto plano',
    ),

    'schedulers_times_dom' => array(
        'not run' => 'Hora de ejecución pasada, no ejecutado',
        'ready' => 'Listo',
        'in progress' => 'In Progress',
        'failed' => 'Falló',
        'completed' => 'Completed',
        'no curl' => 'No ejecutado: cURL no está disponible',
    ),

    'scheduler_status_dom' => array(
        'Active' => 'Active',
        'Inactive' => 'Inactive',
    ),

    'scheduler_period_dom' => array(
        'min' => 'Minutos',
        'hour' => 'Hours',
    ),
    'document_category_dom' => array(
        '' => '',
        'Marketing' => 'Marketing',
        'Knowledege Base' => 'Base de Conocimiento',
        'Sales' => 'Sales',
    ),

    'email_category_dom' => array(
        '' => '',
        'Archived' => 'Archived',
        // TODO: add more categories here...
    ),

    'document_subcategory_dom' => array(
        '' => '',
        'Marketing Collateral' => 'Marketing Collateral',
        'Product Brochures' => 'Product Brochures',
        'FAQ' => 'Preguntas Frecuentes',
    ),

    'document_status_dom' => array(
        'Active' => 'Active',
        'Draft' => 'Draft',
        'FAQ' => 'Preguntas Frecuentes',
        'Expired' => 'Expired',
        'Under Review' => 'Under Review',
        'Pending' => 'Pending',
    ),
    'document_template_type_dom' => array(
        '' => '',
        'mailmerge' => 'Combinar correspondencia',
        'eula' => 'CLUF',
        'nda' => 'Acuerdo de confidencialidad',
        'license' => 'Contrato de licencia',
    ),
    'dom_meeting_accept_options' => array(
        'accept' => 'Aceptar',
        'decline' => 'Rechazar',
        'tentative' => 'Tentativa',
    ),
    'dom_meeting_accept_status' => array(
        'accept' => 'Accepted',
        'decline' => 'Rechazó',
        'tentative' => 'Tentative',
        'none' => 'Nada',
    ),
    'duration_intervals' => array(
        '0' => '00',
        '15' => '15',
        '30' => '30',
        '45' => '45',
    ),
    'repeat_type_dom' => array(
        '' => 'None',
        'Daily' => 'Diariamente',
        'Weekly' => 'Weekly',
        'Monthly' => 'Monthly',
        'Yearly' => 'Anual',
    ),

    'repeat_intervals' => array(
        '' => '',
        'Daily' => 'día(s)',
        'Weekly' => 'semana(s)',
        'Monthly' => 'mes(es)',
        'Yearly' => 'año(s)',
    ),

    'duration_dom' => array(
        '' => 'None',
        '900' => '15 minutos',
        '1800' => '30 minutos',
        '2700' => '45 minutos',
        '3600' => '1 hora',
        '5400' => '1.5 horas',
        '7200' => '2 horas',
        '10800' => '3 horas',
        '21600' => '6 horas',
        '86400' => '1 día',
        '172800' => '2 días',
        '259200' => '3 días',
        '604800' => '1 semaine',
    ),


//prospect list type dom
    'prospect_list_type_dom' => array(
        'default' => 'Predeterminado',
        'seed' => 'Serie',
        'exempt_domain' => 'Lista de exclusión - Por dominio',
        'exempt_address' => 'Lista de exclusión - Por e-Mail',
        'exempt' => 'Lista de exclusión - Por Id',
        'test' => 'Pruebas',
    ),

    'email_settings_num_dom' => array(
        '10' => '10',
        '20' => '20',
        '50' => '50',
    ),
    'email_marketing_status_dom' => array(
        '' => '',
        'active' => 'Active',
        'draft' => 'Draft',
        'scheduled' => 'Scheduled',
        'pending_send' => 'Pending Send',
        'aborted' => 'Aborted',
        'sending' => 'Sending',
        'sent' => 'Sent',
        'paused' => 'Paused',
    ),
    'email_marketing_duplicate_dom' => [
        'email' => 'Prevent sending to duplicate records and email addresses',
        'record' => 'Prevent sending to duplicate records',
    ],
    'email_marketing_queueing_status_dom' => array(
        'not_started' => 'Not Started',
        'in_progress' => 'In Progress',
        'finished' => 'Finished',
    ),
    'email_marketing_type_dom' => array(
        'legacy' => 'Legacy',
        'marketing' => 'Marketing',
        'survey' => 'Encuesta',
        'transactional' => 'Transactional',
    ),

    'campainglog_activity_type_dom' => array(
        '' => '',
        'targeted' => 'Sent/Attempted',
        'send error' => 'Mensajes rebotados,Otra causa',
        'invalid email' => 'Mensajes rebotados,e-Mail no válido',
        'link' => 'Enlace',
        'viewed' => 'Mensaje visto',
        'removed' => 'Descartados',
        'lead' => 'Clientes potenciales creados',
        'contact' => 'Contactos creados',
        'blocked' => 'Excluídos por dirección o dominio',
        'Survey' => 'Encuesta respondida',
    ),

    'campainglog_target_type_dom' => array(
        'Contacts' => 'Contactos',
        'Users' => 'Usuarios',
        'Prospects' => 'Público Objetivo',
        'Leads' => 'Leads',
        'Accounts' => 'Cuentas',
    ),
    'merge_operators_dom' => array(
        'like' => 'Contiene',
        'exact' => 'Exactamente',
        'start' => 'Inicia con',
    ),

    'custom_fields_importable_dom' => array(
        'true' => 'Yes',
        'false' => 'No',
        'required' => 'Obligatorio',
    ),

    'custom_fields_merge_dup_dom' => array(
        0 => 'Deshabilitado',
        1 => 'Habilitado',
        2 => 'Búsqueda',
        3 => 'Filtro seleccionado por defecto',
        4 => 'Sólo filtro',
    ),

    'projects_priority_options' => array(
        'high' => 'High',
        'medium' => 'Medium',
        'low' => 'Low',
    ),

    'projects_status_options' => array(
        'notstarted' => 'Not Started',
        'inprogress' => 'In Progress',
        'completed' => 'Completed',
    ),
    // strings to pass to Flash charts
    'chart_strings' => array(
        'expandlegend' => 'Expandir leyenda',
        'collapselegend' => 'Contraer leyenda',
        'clickfordrilldown' => 'Click para profundizar',
        'detailview' => 'Más detalles...',
        'piechart' => 'Gráfica circular',
        'groupchart' => 'Gráfico Agrupado',
        'stackedchart' => 'Gráfico Apilado',
        'barchart' => 'Gráfico de Barras',
        'horizontalbarchart' => 'Gráfico de Barras Horizontal',
        'linechart' => 'Gráfico de Líneas',
        'noData' => 'Datos no disponibles',
        'print' => 'Print',
        'pieWedgeName' => 'secciones',
    ),
    'release_status_dom' => array(
        'Active' => 'Active',
        'Inactive' => 'Inactive',
    ),
    'email_settings_for_ssl' => array(
        '0' => '',
        '1' => 'SSL',
        '2' => 'TLS',
    ),
    'import_enclosure_options' => array(
        '\'' => 'Comillas simples (&#39;)',
        '"' => 'Comillas Dobles (&#34;)',
        '' => 'None',
        'other' => 'Otro:',
    ),
    'import_delimeter_options' => array(
        ',' => ',',
        ';' => ';',
        '\t' => '\t',
        '.' => '.',
        ':' => ':',
        '|' => '|',
        'other' => 'Other:',
    ),
    'link_target_dom' => array(
        '_blank' => 'Nueva ventana',
        '_self' => 'Misma ventana',
    ),
    'dashlet_auto_refresh_options' => array(
        '-1' => 'No actualizar automáticamente',
        '30' => 'Cada 30 segundos',
        '60' => 'Cada minuto',
        '180' => 'Cada 3 minutos',
        '300' => 'Cada 5 minutos',
        '600' => 'Cada 10 minutos',
    ),
    'dashlet_auto_refresh_options_admin' => array(
        '-1' => ' Nunca',
        '30' => 'Every 30 seconds',
        '60' => 'Cada minuto',
        '180' => 'Every 3 minutes',
        '300' => 'Every 5 minutes',
        '600' => 'Every 10 minutes',
    ),
    'date_range_search_dom' => array(
        '=' => 'Igual a',
        'not_equal' => 'Diferente de',
        'greater_than' => 'Después de',
        'less_than' => 'Antes',
        'last_7_days' => 'Últimos 7 días',
        'next_7_days' => 'Siguientes 7 días',
        'last_30_days' => 'Últimos 30 días',
        'next_30_days' => 'Próximos 30 días',
        'last_month' => 'Último mes',
        'this_month' => 'Este mes',
        'next_month' => 'Mes siguiente',
        'last_year' => 'Último año',
        'this_year' => 'Este año',
        'next_year' => 'Año siguiente',
        'between' => 'Está entre',
    ),
    'numeric_range_search_dom' => array(
        '=' => 'Equals',
        'not_equal' => 'No es Igual',
        'greater_than' => 'Mayor que',
        'greater_than_equals' => 'Mayor o Igual que',
        'less_than' => 'Menor que',
        'less_than_equals' => 'Menor o Igual a',
        'between' => 'Is Between',
    ),
    'lead_conv_activity_opt' => array(
        'copy' => 'Copiar',
        'move' => 'Mover',
        'donothing' => 'No hacer nada',
    ),
);

$app_strings = array(
    'LBL_SEARCH_RESULTS_TITLE' => 'Resultados',
    'ERR_SEARCH_INVALID_QUERY' => 'Se ha producido un error al realizar la búsqueda. La sintaxis de su consulta podría no ser válida.',
    'ERR_SEARCH_NO_RESULTS' => 'No hay resultados para su búsqueda. Inténtelo de nuevo con otros criterios.',
    'LBL_SEARCH_PERFORMED_IN' => 'Búsqueda realizada',
    'LBL_EMAIL_CODE' => 'Codigo Email:',
    'LBL_SEND' => 'Enviar',
    'LBL_SEND_BUTTON_TITLE' => 'Send',
    'LBL_LOGOUT' => 'Cerrar sesión',
    'LBL_LOGOUT_SUCCESS' => 'La sesión se ha cerrado correctamente',
    'LBL_LOGGED_OUT_MESSAGE' => 'Has cerrado la sesión',
    'LBL_LOGIN_AGAIN' => 'Para volver a iniciar sesión ',
    'LBL_TOUR_NEXT' => 'Siguiente',
    'LBL_TOUR_SKIP' => 'Omitir',
    'LBL_TOUR_BACK' => 'Atrás',
    'LBL_TOUR_TAKE_TOUR' => 'Visita guiada',
    'LBL_MOREDETAIL' => 'Más Detalles', /*for 508 compliance fix*/
    'LBL_EDIT_INLINE' => 'Editar en línea', /*for 508 compliance fix*/
    'LBL_VIEW_INLINE' => 'View', /*for 508 compliance fix*/
    'LBL_BASIC_SEARCH' => 'Filter', /*for 508 compliance fix*/
    'LBL_Blank' => ' ', /*for 508 compliance fix*/
    'LBL_ID_FF_ADD' => 'Agregar', /*for 508 compliance fix*/
    'LBL_ID_FF_ADD_EMAIL' => 'Agregar Correo Electrónico', /*for 508 compliance fix*/
    'LBL_HIDE_SHOW' => 'Ocultar/Mostrar', /*for 508 compliance fix*/
    'LBL_DELETE_INLINE' => 'Eliminar', /*for 508 compliance fix*/
    'LBL_ID_FF_CLEAR' => 'Limpiar', /*for 508 compliance fix*/
    'LBL_ID_FF_VCARD' => 'VCard', /*for 508 compliance fix*/
    'LBL_ID_FF_REMOVE' => 'Quitar', /*for 508 compliance fix*/
    'LBL_ID_FF_REMOVE_EMAIL' => 'Eliminar Correo Electrónico', /*for 508 compliance fix*/
    'LBL_ID_FF_OPT_OUT' => 'Salida Opcional',
    'LBL_ID_FF_INVALID' => 'Hacer Inválido',
    'LBL_ADD' => 'Añadir', /*for 508 compliance fix*/
    'LBL_COMPANY_LOGO' => 'Logo de la Compañia', /*for 508 compliance fix*/
    'LBL_CONNECTORS_POPUPS' => 'Conectores Popups',
    'LBL_CLOSEINLINE' => 'Close',
    'LBL_VIEWINLINE' => 'View',
    'LBL_INFOINLINE' => 'Información',
    'LBL_PRINT' => 'Print',
    'LBL_HELP' => 'Help',
    'LBL_ID_FF_SELECT' => 'Seleccionar',
    'DEFAULT' => 'Básica',
    'LBL_SORT' => 'Ordenar',
    'LBL_EMAIL_SMTP_SSL_OR_TLS' => '¿Habilitar SMTP sobre SSL o TLS?',
    'LBL_NO_ACTION' => 'No hay ninguna acción para ese nombre: %s',
    'LBL_NO_SHORTCUT_MENU' => 'No hay acciones disponibles.',
    'LBL_NO_DATA' => 'Sin datos',

    'LBL_ROUTING_FLAGGED' => 'conjunto de marcas de seguimiento',
    'LBL_ROUTING_TO' => 'a',
    'LBL_ROUTING_TO_ADDRESS' => 'a la dirección',
    'LBL_ROUTING_WITH_TEMPLATE' => 'con la plantilla',

    'NTC_OVERWRITE_ADDRESS_PHONE_CONFIRM' => 'Los campos Teléfono y Dirección de su formulario ya tienen valor asignado. Para sobrescribir dichos valores con el teléfono/dirección de la Cuenta que ha seleccionado, haga clic en "Aceptar". Para mantener los valores actuales, haga clic en "Cancelar"',
    'LBL_DROP_HERE' => '[Soltar aquí]',
    'LBL_EMAIL_ACCOUNTS_GMAIL_DEFAULTS' => 'Establecer configuración para Gmail&#153;',
    'LBL_EMAIL_ACCOUNTS_NAME' => 'Nombre',
    'LBL_EMAIL_ACCOUNTS_OUTBOUND' => 'Propiedades del servidor de correo saliente',
    'LBL_EMAIL_ACCOUNTS_SMTPPASS' => 'Contraseña SMTP',
    'LBL_EMAIL_ACCOUNTS_SMTPPORT' => 'Puerto SMTP',
    'LBL_EMAIL_ACCOUNTS_SMTPSERVER' => 'Servidor SMTP',
    'LBL_EMAIL_ACCOUNTS_SMTPUSER' => 'Usuario SMTP',
    'LBL_EMAIL_ACCOUNTS_SMTPDEFAULT' => 'Por Defecto',
    'LBL_EMAIL_WARNING_MISSING_USER_CREDS' => 'Aviso: Falta el nombre de usuario y la contraseña para la cuenta de correo saliente',
    'LBL_OAUTH_CONNECTION_NOT_SET' => 'Por favor, establece una Conexión Externa OAuth.',
    'LBL_EMAIL_PASSWORD_NOT_SET' => 'Advertencia: No se ha establecido una contraseña.',
    'LBL_EMAIL_WARNING_MISSING_CREDS' => 'Advertencia: Faltan credenciales',
    'LBL_EMAIL_ACCOUNTS_SUBTITLE' => 'Configurar Cuentas de Correo para ver correos entrantes de sus cuentas de correo',
    'LBL_EMAIL_ACCOUNTS_OUTBOUND_SUBTITLE' => 'Proporcionar información del servidor de correo SMTP a utilizar para el correo saliente en Cuentas de Correo',
    'ERR_TIMEOUT' => "Forced failure on timeout",
    'LBL_EMAIL_ADDRESS_BOOK_ADD' => 'Hecho',
    'LBL_EMAIL_ADDRESS_BOOK_CLEAR' => 'Clear',
    'LBL_EMAIL_ADDRESS_BOOK_ADD_TO' => 'Para:',
    'LBL_EMAIL_ADDRESS_BOOK_ADD_CC' => 'CC:',
    'LBL_EMAIL_ADDRESS_BOOK_ADD_BCC' => 'CCO:',
    'LBL_EMAIL_ADDRESS_BOOK_ADRRESS_TYPE' => 'Para/Cc/Cco',
    'LBL_EMAIL_ADDRESS_BOOK_EMAIL_ADDR' => 'Email Address',
    'LBL_EMAIL_ADDRESS_BOOK_FILTER' => 'Filter',
    'LBL_EMAIL_ADDRESS_BOOK_NAME' => 'Nombre',
    'LBL_EMAIL_ADDRESS_BOOK_NOT_FOUND' => 'No se han encontrado ninguna dirección',
    'LBL_EMAIL_ADDRESS_BOOK_SAVE_AND_ADD' => 'Guardar y Agregar a la Libreta de Direcciones',
    'LBL_EMAIL_ADDRESS_BOOK_SELECT_TITLE' => 'Seleccionar Destinatarios de Correo',
    'LBL_EMAIL_ADDRESS_BOOK_TITLE' => 'Libreta de Direcciones',
    'LBL_EMAIL_REMOVE_SMTP_WARNING' => '¡Aviso! La cuenta de correo saliente que está intentando eliminar está asociada a una cuenta de correo entrante existente.  ¿Está seguro de que quiere continuar?',
    'LBL_EMAIL_ADDRESSES' => 'Email Addresses',
    'LBL_EMAIL' => 'Email',
    'LBL_EMAIL_ADDRESS_PRIMARY' => 'Email Address',
    'LBL_EMAIL_ADDRESS_OPT_IN' => 'Ha confirmado que su dirección de correo ha sido habilitada: ',
    'LBL_EMAIL_ADDRESS_OPT_IN_ERR' => 'Imposible confirmar dirección de correo electrónico',
    'LBL_EMAIL_ARCHIVE_TO_SUITE' => 'Importar a SuiteCRM',
    'LBL_EMAIL_ASSIGNMENT' => 'Asignación',
    'LBL_EMAIL_ATTACH_FILE_TO_EMAIL' => 'Adjuntar',
    'LBL_EMAIL_ATTACHMENT' => 'Attach',
    'LBL_EMAIL_ATTACHMENTS' => 'Desde el equipo local',
    'LBL_EMAIL_ATTACHMENTS2' => 'Desde Documentos SuiteCRM',
    'LBL_EMAIL_ATTACHMENTS3' => 'Adjuntos de Plantilla',
    'LBL_EMAIL_ATTACHMENTS_FILE' => 'Archivo',
    'LBL_EMAIL_ATTACHMENTS_DOCUMENT' => 'Document',
    'LBL_EMAIL_BCC' => 'CCO',
    'LBL_EMAIL_CANCEL' => 'Cancelar',
    'LBL_EMAIL_CC' => 'CC',
    'LBL_EMAIL_CHARSET' => 'Juego de caracteres',
    'LBL_EMAIL_CHECK' => 'Comprar e-Mail',
    'LBL_EMAIL_CHECKING_NEW' => 'Comprobando correo nuevo',
    'LBL_EMAIL_CHECKING_DESC' => 'Un momento, por favor... <br><br>Si es la primera comprobación para esta cuenta de correo, puede tardar un poco',
    'LBL_EMAIL_CLOSE' => 'Close',
    'LBL_EMAIL_COFFEE_BREAK' => 'Comprobando Correo Nuevo. <br><br>Las cuentas de correo con gran volumen pueden tardar una cantidad considerable de tiempo',

    'LBL_EMAIL_COMPOSE' => 'Email',
    'LBL_EMAIL_COMPOSE_ERR_NO_RECIPIENTS' => 'Por favor, introduzca los destinatario(s) de este correo electrónico.',
    'LBL_EMAIL_COMPOSE_NO_BODY' => 'El cuerpo de este mensaje está vacío.  ¿Enviar de todas formas?',
    'LBL_EMAIL_COMPOSE_NO_SUBJECT' => 'Este mensaje no tiene asunto.  ¿Enviar de todas formas?',
    'LBL_EMAIL_COMPOSE_NO_SUBJECT_LITERAL' => '(sin asunto)',
    'LBL_EMAIL_COMPOSE_INVALID_ADDRESS' => 'Por favor, introduzca una dirección de correo válida para los campos Para, CC y CCO',

    'LBL_EMAIL_CONFIRM_CLOSE' => '¿Descartar este correo?',
    'LBL_EMAIL_CONFIRM_DELETE_SIGNATURE' => '¿Está seguro de que desea eliminar esta firma?',

    'LBL_EMAIL_SENT_SUCCESS' => 'Correo electrónico enviado',

    'LBL_EMAIL_CREATE_NEW' => '--Crear Al Guardar--',
    'LBL_EMAIL_MULT_GROUP_FOLDER_ACCOUNTS' => 'Múltiple',
    'LBL_EMAIL_MULT_GROUP_FOLDER_ACCOUNTS_EMPTY' => 'Vacío',
    'LBL_EMAIL_DATE_SENT_BY_SENDER' => 'Fecha de Envío por Remitente',
    'LBL_EMAIL_DATE_TODAY' => 'Hoy',
    'LBL_EMAIL_DELETE' => 'Delete',
    'LBL_EMAIL_DELETE_CONFIRM' => '¿Eliminar mensajes seleccionados?',
    'LBL_EMAIL_DELETE_SUCCESS' => 'e-Mail eliminado satisfactoriamente',
    'LBL_EMAIL_DELETING_MESSAGE' => 'Eliminando mensaje',
    'LBL_EMAIL_DETAILS' => 'Detalles',

    'LBL_EMAIL_EDIT_CONTACT_WARN' => 'Sólo se utilizará la dirección principal de cada contacto',

    'LBL_EMAIL_EMPTYING_TRASH' => 'Vaciando papelera',
    'LBL_EMAIL_DELETING_OUTBOUND' => 'Eliminando servidor saliente',
    'LBL_EMAIL_CLEARING_CACHE_FILES' => 'Limpiando archivos de la caché',
    'LBL_EMAIL_EMPTY_MSG' => 'No hay correo electrónico para mostrar.',
    'LBL_EMAIL_EMPTY_ADDR_MSG' => 'No hay direcciones de correo electrónico para mostrar.',

    'LBL_EMAIL_ERROR_ADD_GROUP_FOLDER' => 'El nombre de carpeta debe ser único y no vacío. Por favor, inténtelo de nuevo.',
    'LBL_EMAIL_ERROR_DELETE_GROUP_FOLDER' => 'No puede borrarse la carpeta. O la carpeta o sus hijos tienen correos o una bandeja de correo asociada',
    'LBL_EMAIL_ERROR_CANNOT_FIND_NODE' => 'No se ha podido determinar la carpeta pretendida a partir del contexto. Inténtelo de nuevo',
    'LBL_EMAIL_ERROR_CHECK_IE_SETTINGS' => 'Por favor, compruebe su configuración',
    'LBL_EMAIL_ERROR_DESC' => 'Se han detectado errores: ',
    'LBL_EMAIL_DELETE_ERROR_DESC' => 'No tiene acceso a esta área. Contacte con el administrador de su sitio web para obtenerlo',
    'LBL_EMAIL_ERROR_DUPE_FOLDER_NAME' => 'Los nombres de carpetas SuiteCRM deben ser únicos.',
    'LBL_EMAIL_ERROR_EMPTY' => 'Por favor, introduzca algún criterio de búsqueda',
    'LBL_EMAIL_ERROR_GENERAL_TITLE' => 'Ha ocurrido un error',
    'LBL_EMAIL_ERROR_MESSAGE_DELETED' => 'Mensaje eliminado del servidor',
    'LBL_EMAIL_ERROR_IMAP_MESSAGE_DELETED' => 'O el mensaje se ha eliminado en el servidor o ha sido movido a otra carpeta',
    'LBL_EMAIL_ERROR_MAILSERVERCONNECTION' => 'La conexión con el servidor de correo ha fallado. Por favor, contacte con su Administrador',
    'LBL_EMAIL_ERROR_MOVE' => 'De momento no está soportado el mover correo entre servidores y/o cuentas de correo',
    'LBL_EMAIL_ERROR_MOVE_TITLE' => 'Error al mover',
    'LBL_EMAIL_ERROR_NAME' => 'Se requiere un nombre.',
    'LBL_EMAIL_ERROR_FROM_ADDRESS' => 'Se requiere la Dirección del Remitente. Por favor, introduzca una dirección de correo válida.',
    'LBL_EMAIL_ERROR_NO_FILE' => 'Por favor, proporcione un archivo.',
    'LBL_EMAIL_ERROR_SERVER' => 'Se requiere una dirección de servidor de correo.',
    'LBL_EMAIL_ERROR_SAVE_ACCOUNT' => 'La cuenta de correo puede no haber sido guardada.',
    'LBL_EMAIL_ERROR_TIMEOUT' => 'Ha ocurrido un error en la comunicación con el servidor de correo.',
    'LBL_EMAIL_ERROR_USER' => 'Se requiere un nombre de inicio de sesión.',
    'LBL_EMAIL_ERROR_PORT' => 'Se requiere un puerto del servidor de correo.',
    'LBL_EMAIL_ERROR_PROTOCOL' => 'Se requiere un protocolo en el servidor.',
    'LBL_EMAIL_ERROR_MONITORED_FOLDER' => 'Se requiere una Carpeta Monitorizada.',
    'LBL_EMAIL_ERROR_TRASH_FOLDER' => 'Se requiere una Carpeta de Papelera.',
    'LBL_EMAIL_ERROR_VIEW_RAW_SOURCE' => 'Esta información no setá disponible',
    'LBL_EMAIL_ERROR_NO_OUTBOUND' => 'No se ha especificado un servidor de correo saliente.',
    'LBL_EMAIL_ERROR_SENDING' => 'Error al enviar el correo electrónico. Póngase en contacto con su administrador para obtener ayuda.',
    'LBL_EMAIL_FOLDERS' => SugarThemeRegistry::current()->getImage('icon_email_folder', 'align=absmiddle border=0', null, null, '.gif', '') . 'Carpetas',
    'LBL_EMAIL_FOLDERS_SHORT' => SugarThemeRegistry::current()->getImage('icon_email_folder', 'align=absmiddle border=0', null, null, '.gif', ''),
    'LBL_EMAIL_FOLDERS_ADD' => 'Añadir',
    'LBL_EMAIL_FOLDERS_ADD_DIALOG_TITLE' => 'Agregar nueva carpeta',
    'LBL_EMAIL_FOLDERS_RENAME_DIALOG_TITLE' => 'Renombrar carpeta',
    'LBL_EMAIL_FOLDERS_ADD_NEW_FOLDER' => 'Guardar',
    'LBL_EMAIL_FOLDERS_ADD_THIS_TO' => 'Agregar esta carpeta a',
    'LBL_EMAIL_FOLDERS_CHANGE_HOME' => 'Esta carpeta no puede ser cambiada',
    'LBL_EMAIL_FOLDERS_DELETE_CONFIRM' => '¿Está seguro de que quiere eliminar esta carpeta?\nEste proceso no puede ser vuelto atrás.\nLa eliminación de carpetas se aplicará en cascada a todas las carpetas contenidas',
    'LBL_EMAIL_FOLDERS_NEW_FOLDER' => 'Nombre de la nueva carpeta',
    'LBL_EMAIL_FOLDERS_NO_VALID_NODE' => 'Por favor, seleccione una carpeta antes de realizar esta acción',
    'LBL_EMAIL_FOLDERS_TITLE' => 'Administración de carpetas',

    'LBL_EMAIL_FORWARD' => 'Reenviar',
    'LBL_EMAIL_DELIMITER' => '::;::',
    'LBL_EMAIL_DOWNLOAD_STATUS' => '[[count]] de [[total]] emails descargados',
    'LBL_EMAIL_FROM' => 'De',
    'LBL_EMAIL_GROUP' => 'grupo',
    'LBL_EMAIL_UPPER_CASE_GROUP' => 'Group',
    'LBL_EMAIL_HOME_FOLDER' => 'Inicio',
    'LBL_EMAIL_IE_DELETE' => 'Eliminando cuenta de correo',
    'LBL_EMAIL_IE_DELETE_SIGNATURE' => 'Eliminando firma',
    'LBL_EMAIL_IE_DELETE_CONFIRM' => '¿Está seguro de que desea eliminar esta cuenta de correo?',
    'LBL_EMAIL_IE_DELETE_SUCCESSFUL' => 'Borrado satisfactorio.',
    'LBL_EMAIL_IE_SAVE' => 'Guardando información de cuenta de correo',
    'LBL_EMAIL_IMPORTING_EMAIL' => 'Importando e-Mail',
    'LBL_EMAIL_IMPORT_EMAIL' => 'Importar en SuiteCRM',
    'LBL_EMAIL_IMPORT_SETTINGS' => 'Configuración de Importación',
    'LBL_EMAIL_INVALID' => 'Invalid',
    'LBL_EMAIL_LOADING' => 'Cargando ......',
    'LBL_EMAIL_MARK' => 'Marcar',
    'LBL_EMAIL_MARK_FLAGGED' => 'Como etiquetado',
    'LBL_EMAIL_MARK_READ' => 'Como leído',
    'LBL_EMAIL_MARK_UNFLAGGED' => 'Como no etiquetado',
    'LBL_EMAIL_MARK_UNREAD' => 'Como no leído',
    'LBL_EMAIL_ASSIGN_TO' => 'Asignar a',

    'LBL_EMAIL_MENU_ADD_FOLDER' => 'Crear carpeta',
    'LBL_EMAIL_MENU_COMPOSE' => 'Redactar para',
    'LBL_EMAIL_MENU_DELETE_FOLDER' => 'Eliminar carpeta',
    'LBL_EMAIL_MENU_EMPTY_TRASH' => 'Vaciar papelera',
    'LBL_EMAIL_MENU_SYNCHRONIZE' => 'Sincronizar',
    'LBL_EMAIL_MENU_CLEAR_CACHE' => 'Limpiar archivos de caché',
    'LBL_EMAIL_MENU_REMOVE' => 'Quitar',
    'LBL_EMAIL_MENU_RENAME_FOLDER' => 'Rename Folder',
    'LBL_EMAIL_MENU_RENAMING_FOLDER' => 'Renombrando carpeta',
    'LBL_EMAIL_MENU_MAKE_SELECTION' => 'Por favor, realice una selección antes de intentar esta operación',

    'LBL_EMAIL_MENU_HELP_ADD_FOLDER' => 'Crear una Carpeta (remota o en SuiteCRM)',
    'LBL_EMAIL_MENU_HELP_DELETE_FOLDER' => 'Eliminar una Carpeta (remota o en SuiteCRM)',
    'LBL_EMAIL_MENU_HELP_EMPTY_TRASH' => 'Vacía todas las carpetas de Papelera de sus cuentas de correo',
    'LBL_EMAIL_MENU_HELP_MARK_READ' => 'Marcar estos emails como leídos',
    'LBL_EMAIL_MENU_HELP_MARK_UNFLAGGED' => 'Marcar estos emails no etiquetados',
    'LBL_EMAIL_MENU_HELP_RENAME_FOLDER' => 'Renombrar una Carpeta (remota o en SuiteCRM)',

    'LBL_EMAIL_MESSAGES' => 'mensajes',

    'LBL_EMAIL_ML_NAME' => 'Nombre de la lista',
    'LBL_EMAIL_ML_ADDRESSES_1' => 'Lista de Direcciones Seleccionada',
    'LBL_EMAIL_ML_ADDRESSES_2' => 'Lista de direcciones  disponibles',

    'LBL_EMAIL_MULTISELECT' => '<b>Ctrl-Clic</b> para seleccionar múltiples<br />(los usuarios de Mac pueden usar <b>CMD-Clic</b>)',

    'LBL_EMAIL_NO' => 'No',
    'LBL_EMAIL_NOT_SENT' => 'El sistema no puede procesar su petición. Por favor, contacte con el administrador del sistema',

    'LBL_EMAIL_OK' => 'Aceptar',
    'LBL_EMAIL_ONE_MOMENT' => 'Un momento por favor...',
    'LBL_EMAIL_OPEN_ALL' => 'Abrir múltiples mensajes',
    'LBL_EMAIL_OPTIONS' => 'Opciones',
    'LBL_EMAIL_QUICK_COMPOSE' => 'Redacción rápida',
    'LBL_EMAIL_OPT_OUT' => 'Rehusado',
    'LBL_EMAIL_OPT_OUT_AND_INVALID' => 'Rehusado e inválido',
    'LBL_EMAIL_PERFORMING_TASK' => 'Realizando tarea',
    'LBL_EMAIL_PRIMARY' => 'Principal',
    'LBL_EMAIL_PRINT' => 'Print',

    'LBL_EMAIL_QC_BUGS' => 'Incidencia',
    'LBL_EMAIL_QC_CASES' => 'Case',
    'LBL_EMAIL_QC_LEADS' => 'Cliente Potencial',
    'LBL_EMAIL_QC_CONTACTS' => 'Contact',
    'LBL_EMAIL_QC_TASKS' => 'Task',
    'LBL_EMAIL_QC_OPPORTUNITIES' => 'Opportunity',
    'LBL_EMAIL_QUICK_CREATE' => 'Creación rápida',

    'LBL_EMAIL_REBUILDING_FOLDERS' => 'Reconstruyendo carpetas',
    'LBL_EMAIL_RELATE_TO' => 'Relacionado',
    'LBL_EMAIL_VIEW_RELATIONSHIPS' => 'Ver relaciones',
    'LBL_EMAIL_RECORD' => 'Registro de e-Mail',
    'LBL_EMAIL_REMOVE' => 'Quitar',
    'LBL_EMAIL_REPLY' => 'Responder',
    'LBL_EMAIL_REPLY_ALL' => 'Responder a todos',
    'LBL_EMAIL_REPLY_TO' => 'Responder a',
    'LBL_EMAIL_RETRIEVING_MESSAGE' => 'Recuperando mensaje',
    'LBL_EMAIL_RETRIEVING_RECORD' => 'Recuperando registro de e-Mail',
    'LBL_EMAIL_SELECT_ONE_RECORD' => 'Por favor, seleccione un único registro de e-Mail',
    'LBL_EMAIL_RETURN_TO_VIEW' => '¿Volver al módulo anterior?',
    'LBL_EMAIL_REVERT' => 'Revertir',
    'LBL_EMAIL_RELATE_EMAIL' => 'Relacionar e-Mail',

    'LBL_EMAIL_RULES_TITLE' => 'Administración de reglas',

    'LBL_EMAIL_SAVE' => 'Save',
    'LBL_EMAIL_SAVE_AND_REPLY' => 'Guardar y responder',
    'LBL_EMAIL_SAVE_DRAFT' => 'Guardar borrador',
    'LBL_EMAIL_DRAFT_SAVED' => 'Draft has been saved.',

    'LBL_EMAIL_SEARCH' => SugarThemeRegistry::current()->getImage('Search', 'align=absmiddle border=0', null, null,    '.gif', ''),
    'LBL_EMAIL_SEARCH_SHORT' => SugarThemeRegistry::current()->getImage('Search', 'align=absmiddle border=0', null,        null, '.gif', ''),
    'LBL_EMAIL_SEARCH_DATE_FROM' => 'Fecha desde',
    'LBL_EMAIL_SEARCH_DATE_UNTIL' => 'Fecha hasta',
    'LBL_EMAIL_SEARCH_NO_RESULTS' => 'No hay resultados para sus criterios de búsqueda',
    'LBL_EMAIL_SEARCH_RESULTS_TITLE' => 'Resultados de la búsqueda',

    'LBL_EMAIL_SELECT' => 'Select',

    'LBL_EMAIL_SEND' => 'Send',
    'LBL_EMAIL_SENDING_EMAIL' => 'Enviando e-Mail ',

    'LBL_EMAIL_SETTINGS' => 'Configuración',
    'LBL_EMAIL_SETTINGS_TITLE' => 'Email Settings',
    'LBL_EMAIL_SETTINGS_ACCOUNTS' => 'Cuentas de e-Mail',
    'LBL_EMAIL_SETTINGS_ADD_ACCOUNT' => 'Limpiar formulario',
    'LBL_EMAIL_SETTINGS_CHECK_INTERVAL' => 'Comprobar e-Mail nuevo',
    'LBL_EMAIL_SETTINGS_FROM_ADDR' => 'Dirección de remitente',
    'LBL_EMAIL_SETTINGS_FROM_TO_EMAIL_ADDR' => 'Dirección para notificación de prueba:',
    'LBL_EMAIL_SETTINGS_FROM_ADDR_NOT_SET' => 'From address and/or From name not set',
    'LBL_EMAIL_SETTINGS_FROM_NAME' => 'Nombre del remitente',
    'LBL_EMAIL_SETTINGS_REPLY_TO_ADDR' => 'Dirección de respuesta a',
    'LBL_EMAIL_SETTINGS_FULL_SYNC' => 'Sincronizar Todas las cuentas de e-Mail',
    'LBL_EMAIL_TEST_NOTIFICATION_SENT' => 'Se ha enviado un correo electrónico a la dirección  utilizando la configuración de correo saliente proporcionada. Por favor, compruebe si ha recibido el correo para verificar que la configuración es correcta',
    'LBL_EMAIL_TEST_SEE_FULL_SMTP_LOG' => 'Ver registro de SMTP completo',
    'LBL_EMAIL_SETTINGS_FULL_SYNC_WARN' => '¿Realizar una sincronización completa?\nPara cuentas de correo grandes, puede durar varios minutos',
    'LBL_EMAIL_SUBSCRIPTION_FOLDER_HELP' => 'Haga clic en la tecla Shift o en la tecla Ctrl para seleccionar carpetas múltiples',
    'LBL_EMAIL_SETTINGS_GENERAL' => 'General',
    'LBL_EMAIL_SETTINGS_GROUP_FOLDERS_CREATE' => 'Crear carpetas de grupo',

    'LBL_EMAIL_SETTINGS_GROUP_FOLDERS_EDIT' => 'Editar carpetas de grupo',

    'LBL_EMAIL_SETTINGS_NAME' => 'Nombre de cuenta de e-Mail',
    'LBL_EMAIL_SETTINGS_REQUIRE_REFRESH' => 'Seleccione el número de correos por página en la bandeja de entrada. Estas opciones pueden requerir de un refresco de página para ser activadas',
    'LBL_EMAIL_SETTINGS_RETRIEVING_ACCOUNT' => 'Recuperando e-Mail de cuenta',
    'LBL_EMAIL_SETTINGS_SAVED' => 'Los ajustes han sido grabados.',
    'LBL_EMAIL_SETTINGS_SEND_EMAIL_AS' => 'Enviar sólo e-Mails con texto plano',
    'LBL_EMAIL_SETTINGS_SHOW_NUM_IN_LIST' => 'e-Mails por página',
    'LBL_EMAIL_SETTINGS_TITLE_LAYOUT' => 'Configuración visual',
    'LBL_EMAIL_SETTINGS_TITLE_PREFERENCES' => 'Preferencias',
    'LBL_EMAIL_SETTINGS_USER_FOLDERS' => 'Carpetas de usuario disponibles',
    'LBL_EMAIL_ERROR_PREPEND' => 'Se produjo un error de correo electrónico:',
    'LBL_EMAIL_INVALID_PERSONAL_OUTBOUND' => 'El servidor de correo saliente seleccionado para la cuenta de correo que está utilizando no es válido.  Compruebe la configuración o seleccione un servidor de correo distinto para la cuenta',
    'LBL_EMAIL_INVALID_SYSTEM_OUTBOUND' => 'No se ha configurado un servidor de correo saliente para la cuenta de correo que está utilizando. Por favor, seleccione o agregue un servidor de correo saliente para la cuenta',
    'LBL_DEFAULT_EMAIL_SIGNATURES' => 'Firma predeterminada',
    'LBL_EMAIL_SIGNATURES' => 'Firmas',
    'LBL_SMTPTYPE_GMAIL' => 'Gmail',
    'LBL_SMTPTYPE_YAHOO' => 'Correo Yahoo',
    'LBL_SMTPTYPE_EXCHANGE' => 'Microsoft Exchange',
    'LBL_SMTPTYPE_OTHER' => 'Other',
    'LBL_EMAIL_SPACER_MAIL_SERVER' => '[ Carpetas remotas ]',
    'LBL_EMAIL_SPACER_LOCAL_FOLDER' => '[ Carpetas de SuiteCRM ]',
    'LBL_EMAIL_SUBJECT' => 'Asunto',
    'LBL_EMAIL_SUCCESS' => 'Éxito',
    'LBL_EMAIL_SUITE_FOLDER' => 'Carpeta de SuiteCRM',
    'LBL_EMAIL_TEMPLATE_EDIT_PLAIN_TEXT' => 'El cuerpo de la plantilla',
    'LBL_EMAIL_TEMPLATES' => 'Plantillas',
    'LBL_EMAIL_TO' => 'Para',
    'LBL_EMAIL_VIEW' => 'View',
    'LBL_EMAIL_VIEW_HEADERS' => 'Mostrar cabeceras',
    'LBL_EMAIL_VIEW_RAW' => 'Mostrar código fuente del e-Mail',
    'LBL_EMAIL_VIEW_UNSUPPORTED' => 'Esta característica no está soportada cuando se usa POP3',
    'LBL_DEFAULT_LINK_TEXT' => 'Texto de enlace predeterminado',
    'LBL_EMAIL_YES' => 'Yes',
    'LBL_EMAIL_TEST_OUTBOUND_SETTINGS' => 'Enviar e-Mail de prueba',
    'LBL_EMAIL_TEST_OUTBOUND_SETTINGS_SENT' => 'e-Mail de prueba enviado',
    'LBL_EMAIL_MESSAGE_NO' => 'Mensaje Nº',
    'LBL_EMAIL_IMPORT_SUCCESS' => 'Importación exitosa',
    'LBL_EMAIL_IMPORT_FAIL' => 'Importación fallida debido a que el mensaje ya ha sido importado o eliminado del servidor',

    'LBL_LINK_NONE' => 'None',
    'LBL_LINK_ALL' => 'Todo',
    'LBL_LINK_RECORDS' => 'Registros',
    'LBL_LINK_SELECT' => 'Select',
    'LBL_LINK_ACTIONS' => 'ACCIONES',
    'LBL_CLOSE_ACTIVITY_HEADER' => 'Confirmar',
    'LBL_CLOSE_ACTIVITY_CONFIRM' => '¿Desea cerrar este #module#?',
    'LBL_INVALID_FILE_EXTENSION' => 'Extensión de archivo inválida',

    'ERR_AJAX_LOAD' => 'Ha ocurrido un error:',
    'ERR_AJAX_LOAD_FAILURE' => 'Ha ocurrido un error al procesar su petición, por favor inténte de nuevo más tarde.',
    'ERR_AJAX_LOAD_FOOTER' => 'Si persiste el error, por favor solicite al administrador que deshabilite Ajax para este módulo',
    'ERR_DECIMAL_SEP_EQ_THOUSANDS_SEP' => 'No puede utilizarse el mismo carácter como separador decimal que el utilizado como separador de miles.\\n\\n  Por favor, cambie los valores.',
    'ERR_DELETE_RECORD' => 'Debe especificar un número de registro para eliminar el contacto',
    'ERR_EXPORT_DISABLED' => 'Exportación deshabilitada',
    'ERR_EXPORT_TYPE' => 'Error exportando',
    'ERR_INVALID_EMAIL_ADDRESS' => 'no es una dirección de correo válida',
    'ERR_INVALID_FILE_REFERENCE' => 'Referencia a archivo no válida',
    'ERR_NO_HEADER_ID' => 'Esta funcionalidad no está disponible con este tema',
    'ERR_NOT_ADMIN' => 'Acceso no autorizado a la administración',
    'ERR_UNAUTHORIZED_PAGE_ACCESS' => 'No está autorizado a ver esta página. Póngase en contacto con el administrador del sistema.',
    'ERR_UNAUTHORIZED_PAGE_ACCESS_TO_HOME_PAGE' => 'No está autorizado a ver esta página. Redirigiendo a la Página de Inicio...',
    'ERR_MISSING_REQUIRED_FIELDS' => 'Falta campo requerido:',
    'ERR_INVALID_REQUIRED_FIELDS' => 'Campo requerido no válido:',
    'ERR_INVALID_VALUE' => 'Valor no válido:',
    'ERR_NO_SUCH_FILE' => 'El archivo no existe en el sistema',
    'ERR_NO_SINGLE_QUOTE' => 'No puede utilizarse las comillas simples para',
    'ERR_NOTHING_SELECTED' => 'Por favor, realice una selección antes de proceder',
    'ERR_SELF_REPORTING' => 'Un usuario no puede ser informador de si mismo',
    'ERR_SQS_NO_MATCH_FIELD' => 'No se han encontrado coincidencias para el campo:',
    'ERR_SQS_NO_MATCH' => 'Sin coincidencias',
    'ERR_ADDRESS_KEY_NOT_SPECIFIED' => 'Por favor, especifique el índice \'clave\' en el atributo displayParams para la definición de Meta-Datos',
    'ERR_EXISTING_PORTAL_USERNAME' => 'Error: El Nombre de Portal ya ha sido asignado a otro contacto',
    'ERR_COMPATIBLE_PRECISION_VALUE' => 'El valor del campo no es compatible con el tipo de precisión',
    'ERR_EXTERNAL_API_SAVE_FAIL' => 'Un error ha ocurrido cuando se intentaba guardar la cuenta externa',
    'ERR_NO_DB' => 'No se pudo conectar a la base de datos. Consulte suitecrm.log para obtener más información.',
    'ERR_DB_FAIL' => 'Falla de base de datos. Consulte suitecrm.log para obtener más información.',
    'ERR_DB_VERSION' => 'SuiteCRM {0} archivos sólo pueden utilizarse con una base de datos de {1} de SuiteCRM.',

    'LBL_ACCOUNT' => 'Account',
    'LBL_ACCOUNTS' => 'Cuentas',
    'LBL_ACTIVITIES_SUBPANEL_TITLE' => 'Activities',
    'LBL_ACCUMULATED_HISTORY_BUTTON_KEY' => 'H',
    'LBL_ACCUMULATED_HISTORY_BUTTON_LABEL' => 'Ver resumen',
    'LBL_ACCUMULATED_HISTORY_BUTTON_TITLE' => 'View Summary',
    'LBL_ADD_BUTTON' => 'Añadir',
    'LBL_ADD_DOCUMENT' => 'Agregar Documento',
    'LBL_ADD_TO_PROSPECT_LIST_BUTTON_KEY' => 'L',
    'LBL_ADD_TO_PROSPECT_LIST_BUTTON_LABEL' => 'Agregar a lista de público objetivo',
    'LBL_ADD_TO_PROSPECT_LIST_BUTTON_LABEL_ACCOUNTS_CONTACTS' => 'Agregar contactos a lista Público objetivo',
    'LBL_ADDITIONAL_DETAILS_CLOSE_TITLE' => 'Click para cerrar',
    'LBL_ADDITIONAL_DETAILS' => 'Detalles adicionales',
    'LBL_ADMIN' => 'Administrador',
    'LBL_ALT_HOT_KEY' => '',
    'LBL_ARCHIVE' => 'Archivo',
    'LBL_ASSIGNED_TO_USER' => 'Asignado a usuario',
    'LBL_ASSIGNED_TO' => 'Asignado a:',
    'LBL_BACK' => 'Back',
    'LBL_BILLING_ADDRESS' => 'Dirección de facturación',
    'LBL_QUICK_CREATE' => 'Creada ',
    'LBL_BROWSER_TITLE' => 'SuiteCRM - Open Source CRM',
    'LBL_BUGS' => 'Bugs',
    'LBL_BY' => 'por',
    'LBL_CALLS' => 'Llamadas',
    'LBL_CAMPAIGNS_SEND_QUEUED' => 'Enviar e-Mails de campaña encolados',
    'LBL_CAMPAIGNS_SEND_NEXT_BATCH' => 'Send Next Batch of Queued Emails',
    'LBL_SENT_NEXT_BATCH' => 'Batch sent successfully',
    'LBL_SUBMIT_BUTTON_LABEL' => 'Enviar',
    'LBL_CASE' => 'Case',
    'LBL_CASES' => 'Casos',
    'LBL_CHANGE_PASSWORD' => 'Cambiar contraseña',
    'LBL_CHARSET' => 'UTF-8',
    'LBL_CHARTS' => 'Gráficos',
    'LBL_QUICK_CHARTS' => 'Gráficos rápidos',
    'LBL_QUICK_HISTORY' => 'Timeline',
    'LBL_CHECKALL' => 'Marcar todo',
    'LBL_CITY' => 'City',
    'LBL_CLEAR_BUTTON_LABEL' => 'Clear',
    'LBL_CLEAR_BUTTON_TITLE' => 'Clear',
    'LBL_CLEARALL' => 'Desmarcar todos',
    'LBL_CLOSE_BUTTON_TITLE' => 'Close',
    'LBL_CLOSE_AND_CREATE_BUTTON_LABEL' => 'Cerrar y crear nuevo',
    'LBL_CLOSE_AND_CREATE_BUTTON_TITLE' => 'Close and Create New',
    'LBL_CLOSE_AND_CREATE_BUTTON_KEY' => 'C',
    'LBL_OPEN_ITEMS' => 'Abrir elementos',
    'LBL_COMPOSE_EMAIL_BUTTON_KEY' => 'L',
    'LBL_COMPOSE_EMAIL_BUTTON_LABEL' => 'Redactar e-Mail',
    'LBL_COMPOSE_EMAIL_BUTTON_TITLE' => 'Compose Email',
    'LBL_SEARCH_DROPDOWN_YES' => 'Yes',
    'LBL_SEARCH_DROPDOWN_NO' => 'No',
    'LBL_CONTACT_LIST' => 'Lista de contactos',
    'LBL_CONTACT' => 'Contact',
    'LBL_CONTACTS' => 'Contactos',
    'LBL_CONTRACT' => 'Contract',
    'LBL_CONTRACTS' => 'Contracts',
    'LBL_COUNTRY' => 'Country:',
    'LBL_CREATE_BUTTON_LABEL' => 'Nuevo',
    'LBL_CREATED_BY_USER' => 'Creado por el Usuario',
    'LBL_CREATED_BY' => 'Creado Por',
    'LBL_CREATED_USER' => 'Creado por el Usuario',
    'LBL_CREATED' => 'Creado por',
    'LBL_CURRENT_USER_FILTER' => 'Mis artículos',
    'LBL_CURRENCY' => 'Moneda:',
    'LBL_DOCUMENTS' => 'Documentos',
    'LBL_DATE_ENTERED' => 'Fecha de Creación:',
    'LBL_DATE_MODIFIED' => 'Fecha de Modificación:',
    'LBL_EDIT_BUTTON' => 'Editar',
    'LBL_DUPLICATE_BUTTON' => 'Duplicate',
    'LBL_DELETE_BUTTON' => 'Delete',
    'LBL_DELETE' => 'Delete',
    'LBL_DELETED' => 'Eliminado',
    'LBL_LIMIT' => 'Limit: ',
    'LBL_DIRECT_REPORTS' => 'Informadores directos',
    'LBL_DONE_BUTTON_LABEL' => 'Done',
    'LBL_DONE_BUTTON_TITLE' => 'Done',
    'LBL_FAVORITES' => 'Favoritos',
    'LBL_VCARD' => 'vCard',
    'LBL_EMPTY_VCARD' => 'Por favor, seleccione un archivo vCard',
    'LBL_EMPTY_REQUIRED_VCARD' => 'vCard no tiene todos los campos obligatorios de este módulo. Consulte suitecrm.log para obtener más información.',
    'LBL_VCARD_ERROR_FILESIZE' => 'El archivo excede el límite de tamaño de 30000 bytes que se especificó en el formulario HTML.',
    'LBL_VCARD_ERROR_DEFAULT' => 'Hubo un error al subir el archivo vCard. Por favor consulte suitecrm.log para más detalles.',
    'LBL_IMPORT_VCARD' => 'Importar una vCard:',
    'LBL_IMPORT_VCARD_BUTTON_LABEL' => 'Importar vCard',
    'LBL_IMPORT_VCARD_BUTTON_TITLE' => 'Import vCard',
    'LBL_VIEW_BUTTON' => 'View',
    'LBL_EMAIL_PDF_BUTTON_LABEL' => 'Enviar como PDF',
    'LBL_EMAIL_PDF_BUTTON_TITLE' => 'Email as PDF',
    'LBL_EMAILS' => 'Emails',
    'LBL_EMPLOYEES' => 'Employees',
    'LBL_ENTER_DATE' => 'Introducir fecha',
    'LBL_EXPORT' => 'Exportar',
    'LBL_FAVORITES_FILTER' => 'Mis Favoritos',
    'LBL_GO_BUTTON_LABEL' => 'Adelante',
    'LBL_HIDE' => 'Ocultar',
    'LBL_HISTORY' => 'Historial',
    'LBL_NEW' => 'New',
    'LBL_ID' => 'ID',
    'LBL_IMPORT' => 'Importar',
    'LBL_IMPORT_STARTED' => 'Importación iniciada:',
    'LBL_LAST_VIEWED' => 'Recientes',
    'LBL_LAST_VIEWED_NO_RESULT' => 'No hay artículos recientemente vistos',
    'LBL_LEADS' => 'Leads',
    'LBL_LESS' => 'menos',
    'LBL_CAMPAIGN' => 'Campaign:',
    'LBL_CAMPAIGNS' => 'Campaigns',
    'LBL_CAMPAIGNLOG' => 'Registro de campañas',
    'LBL_CAMPAIGN_CONTACT' => 'Campaigns',
    'LBL_CAMPAIGN_ID' => 'campaign_id',
    'LBL_CAMPAIGN_NONE' => 'None',
    'LBL_CAMPAIGN_CHARTS' => 'Campaign Charts',
    'LBL_EMAIL_MARKETING_CHARTS' => 'Email Marketing Charts',
    'LBL_MESSAGE_QUEUE_TITLE' => 'Message Queue',
    'LBL_CAMPAIGN_SEND_STATUS' => 'Campaign Send Status',
    'LBL_CAMPAIGN_SEND_ERROR_THRESHOLD_EXCEEDED' => 'Error threshold per batch (%d) reached: %s',
    'LBL_CAMPAIGN_SEND_FAILURE_THRESHOLD_EXCEEDED' => 'Failure threshold per batch of %d exceeded',
    'LBL_EMAIL_MARKETING_SEND_STATUS' => 'Email Marketing Send Status',
    'LBL_CAMPAIGN_RESPONSE_BY_RECIPIENT_ACTIVITY' => 'Campaign Response By Recipient Activity',
    'LBL_EMAIL_MARKETING_RESPONSE_BY_RECIPIENT_ACTIVITY' => 'Email Marketing Response By Recipient Activity',
    'LBL_LOG_ENTRIES_TARGETED_TITLE' => 'Sent/Attempted',
    'LBL_LOG_ENTRIES_SEND_ERROR_TITLE' => 'Bounced Messages, Other',
    'LBL_LOG_ENTRIES_BOUNCED_TITLE' => 'Bounced Messages',
    'LBL_LOG_ENTRIES_INVALID_EMAIL_TITLE' => 'Bounced Messages, Invalid Email',
    'LBL_LOG_ENTRIES_LINK_TITLE' => 'Click-thru Link',
    'LBL_LOG_ENTRIES_VIEWED_TITLE' => 'Viewed Message',
    'LBL_LOG_ENTRIES_REMOVED_TITLE' => 'Rehusado',
    'LBL_LOG_ENTRIES_LEAD_TITLE' => 'Leads Created',
    'LBL_CAMPAIGN_LEAD_SUBPANEL_TITLE' => 'Leads',
    'LBL_OPPORTUNITY_SUBPANEL_TITLE' => 'Opportunities',
    'LBL_LOG_ENTRIES_CONTACT_TITLE' => 'Contacts Created',
    'LBL_LOG_ENTRIES_BLOCKED_TITLE' => 'Suppressed/Blocked',
    'LBL_THEME' => 'Tema:',
    'LBL_FOUND_IN_RELEASE' => 'Encontrado en versión',
    'LBL_FIXED_IN_RELEASE' => 'Corregido en versión',
    'LBL_IN_EVERYWHERE' => 'En todos lados',
    'LBL_LIST_ACCOUNT_NAME' => 'Nombre de Cuenta',
    'LBL_LIST_ASSIGNED_USER' => 'Usuario',
    'LBL_LIST_CONTACT_NAME' => 'Nombre de contacto',
    'LBL_LIST_CONTACT_ROLE' => 'Rol de contacto',
    'LBL_LIST_DATE_ENTERED' => 'Fecha de Creación',
    'LBL_LIST_EMAIL' => 'Email',
    'LBL_LIST_NAME' => 'Nombre',
    'LBL_LIST_OF' => 'de',
    'LBL_LIST_PHONE' => 'Phone',
    'LBL_LIST_RELATED_TO' => 'Relacionado con',
    'LBL_LIST_USER_NAME' => 'Nombre de usuario',
    'LBL_LISTVIEW_NO_SELECTED' => 'Por favor, seleccione al menos 1 registro para proceder',
    'LBL_LISTVIEW_TWO_REQUIRED' => 'Por favor, seleccione al menos 2 registros para proceder',
    'LBL_LISTVIEW_OPTION_SELECTED' => 'Registros seleccionados',
    'LBL_LISTVIEW_SELECTED_OBJECTS' => 'Seleccionados: ',

    'LBL_LOCALE_NAME_EXAMPLE_FIRST' => 'Juan',
    'LBL_LOCALE_NAME_EXAMPLE_LAST' => 'Marti',
    'LBL_LOCALE_NAME_EXAMPLE_SALUTATION' => 'Dr.',
    'LBL_LOCALE_NAME_EXAMPLE_TITLE' => 'Mago del Código Fuente',
    'LBL_COPY' => 'Copy',
    'LBL_CANCEL' => 'Cancel',
    'LBL_CONFIRM' => 'Confirm',
    'LBL_SNOOZE' => 'Posponer',
    'LBL_SNOOZE_INLINE_CONFIRM' => '¿Posponer? ({{preferences.snooze_alert_timer|enum:snooze_alert_timer_simple}})',
    'LBL_DISMISS' => 'Descartar',
    'LBL_DISMISS_INLINE_CONFIRM' => '¿Descartar?',
    'LBL_DISMISS_ALL_INLINE_CONFIRM' => '¿Descartar todo?',
    'LBL_DISMISS_ALL_DRAFTS_CONFIRM' => 'Dismiss all drafts?',
    'NTC_DISMISS_CONFIRMATION' => '¿Estás seguro de que quieres descartar esta alerta?',
    'NTC_DISMISS_ALL_CONFIRMATION' => '¿Estás seguro de que quieres descartar todas las alertas?',
    'LBL_ALERT_DISMISS_SUCCESS' => 'Alerta descartada correctamente',
    'LBL_ALERT_DISMISS_ERROR' => 'Error al intentar descartar la alerta',
    'LBL_ALERT_DISMISS_ALL_SUCCESS' => 'Alertas descartadas con éxito',
    'LBL_DISMISS_ALL' => 'Descartar todo',
    'LBL_DISMISS_SUCCESS' => 'Successfully Dismissed',
    'LBL_VERIFY' => 'Verificar',
    'LBL_RESEND' => 'Reenviar',
    'LBL_RECORD_DOES_NOT_EXIST' => 'Error retrieving record. This record may be deleted or you may not be authorized to view it.',
    'LBL_PROFILE' => 'Perfil',
    'LBL_PROFILE_EDIT' => 'Editar Perfil',
    'LBL_MAILMERGE' => 'Mail Merge',
    'LBL_MASS_UPDATE' => 'Actualización masiva',
    'LBL_NO_MASS_UPDATE_FIELDS_AVAILABLE' => 'No hay campos disponibles para la operación de actualización masiva.',
    'LBL_OPT_OUT_FLAG_PRIMARY' => 'Rehusar para e-Mail principal',
    'LBL_OPT_IN_FLAG_PRIMARY' => 'Autorizar con e-mail principal',
    'LBL_MEETINGS' => 'Meetings',
    'LBL_MEETING_GO_BACK' => 'Volver a la reunión',
    'LBL_MEMBERS' => 'Miembros',
    'LBL_MEMBER_OF' => 'Miembro de',
    'LBL_MODIFIED_BY_USER' => 'Modificado por el usuario',
    'LBL_MODIFIED_USER' => 'Modificado por el usuario',
    'LBL_MODIFIED' => 'Modificado por',
    'LBL_MODIFIED_NAME' => 'Modified By Name',
    'LBL_MORE' => 'Más',
    'LBL_MY_ACCOUNT' => 'Mi Configuración',
    'LBL_NAME' => 'Nombre',
    'LBL_NEW_BUTTON_KEY' => 'N',
    'LBL_NEW_BUTTON_LABEL' => 'Crear',
    'LBL_NEW_BUTTON_TITLE' => 'Nuevo',
    'LBL_EDIT' => 'Editar',
    'LBL_NEXT_BUTTON_LABEL' => 'Next',
    'LBL_NONE' => '--None--',
    'LBL_NOTES' => 'Notes',
    'LBL_OPPORTUNITIES' => 'Opportunities',
    'LBL_OPPORTUNITY_NAME' => 'Nombre de la oportunidad',
    'LBL_OPPORTUNITY' => 'Opportunity',
    'LBL_OR' => 'O',
    'LBL_PANEL_OVERVIEW' => 'Información de la cuenta',
    'LBL_PANEL_ASSIGNMENT' => 'OTRO',
    'LBL_PANEL_ADVANCED' => 'MÁS INFORMACIÓN',
    'LBL_PARENT_TYPE' => 'Tipo de padre',
    'LBL_PARENT_FIELD_DYNAMIC_LABEL' => '{{fields.parent_type.value}}',
    'LBL_PERCENTAGE_SYMBOL' => '%',
    'LBL_POSTAL_CODE' => 'Postal Code:',
    'LBL_PRIMARY_ADDRESS_CITY' => 'Ciudad (dirección principal):',
    'LBL_PRIMARY_ADDRESS_COUNTRY' => 'Primary Address Country:',
    'LBL_PRIMARY_ADDRESS_POSTALCODE' => 'Código postal (dirección principal):',
    'LBL_PRIMARY_ADDRESS_STATE' => 'Estado/Provincia (dirección principal):',
    'LBL_PRIMARY_ADDRESS_STREET_2' => 'Primary Address Street 2:',
    'LBL_PRIMARY_ADDRESS_STREET_3' => 'Primary Address Street 3:',
    'LBL_PRIMARY_ADDRESS_STREET' => 'Calle (dirección principal):',
    'LBL_PRIMARY_ADDRESS' => 'Dirección principal:',

    'LBL_PROSPECTS' => 'Prospectos',
    'LBL_PRODUCTS' => 'Productos',
    'LBL_PROJECT_TASKS' => 'Project Tasks',
    'LBL_PROJECTS' => 'Projects',
    'LBL_QUOTES' => 'Presupuestos',

    'LBL_RELATED' => 'Relacionado',
    'LBL_RELATED_RECORDS' => 'Registros relacionados',
    'LBL_REMOVE' => 'Quitar',
    'LBL_REPORTS_TO' => 'Reportar a',
    'LBL_REQUIRED_SYMBOL' => '*',
    'LBL_REQUIRED_TITLE' => 'Indique un campo obligatorio',
    'LBL_EMAIL_DONE_BUTTON_LABEL' => 'Done',
    'LBL_FULL_FORM_BUTTON_KEY' => 'L',
    'LBL_FULL_FORM_BUTTON_LABEL' => 'Formulario completo',
    'LBL_FULL_FORM_BUTTON_TITLE' => 'Full Form',
    'LBL_SAVE_NEW_BUTTON_LABEL' => 'Guardar y crear nuevo',
    'LBL_SAVE_NEW_BUTTON_TITLE' => 'Save & Create New',
    'LBL_SAVE_OBJECT' => 'Guardar {0}',
    'LBL_SEARCH_BUTTON_KEY' => 'Q',
    'LBL_SEARCH_BUTTON_LABEL' => 'Búsqueda',
    'LBL_SEARCH_BUTTON_TITLE' => 'Búsqueda',
    'LBL_FILTER' => 'Filter',
    'LBL_CLEAR_FILTER' => 'Borrar filtros',
    'LBL_FILTER_MODULES' => 'Filtrar módulos',
    'LBL_SEARCH' => 'Búsqueda',
    'LBL_SEARCH_ALT' => '',
    'LBL_SEARCH_MORE' => 'más',
    'LBL_UPLOAD_IMAGE_FILE_INVALID' => 'Formato de archivo inválido. Sólo archivos de imagen pueden ser subidos',
    'LBL_SELECT_BUTTON_KEY' => 'T',
    'LBL_SELECT_BUTTON_LABEL' => 'Select',
    'LBL_SELECT_BUTTON_TITLE' => 'Select',
    'LBL_BROWSE_DOCUMENTS_BUTTON_LABEL' => 'Explorar documentos',
    'LBL_BROWSE_DOCUMENTS_BUTTON_TITLE' => 'Browse Documents',
    'LBL_SELECT_CONTACT_BUTTON_KEY' => 'T',
    'LBL_SELECT_CONTACT_BUTTON_LABEL' => 'Seleccionar contacto',
    'LBL_SELECT_CONTACT_BUTTON_TITLE' => 'Select Contact',
    'LBL_SELECT_REPORTS_BUTTON_LABEL' => 'Seleccionar desde reportes',
    'LBL_SELECT_REPORTS_BUTTON_TITLE' => 'Sélectionner reportes',
    'LBL_SELECT_USER_BUTTON_KEY' => 'U',
    'LBL_SELECT_USER_BUTTON_LABEL' => 'Seleccionar usuario',
    'LBL_SELECT_USER_BUTTON_TITLE' => 'Select User',
    // Clear buttons take up too many keys, lets default the relate and collection ones to be empty
    'LBL_ACCESSKEY_CLEAR_RELATE_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_RELATE_TITLE' => 'Limpiar selección',
    'LBL_ACCESSKEY_CLEAR_RELATE_LABEL' => 'Limpiar selección',
    'LBL_ACCESSKEY_CLEAR_COLLECTION_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_COLLECTION_TITLE' => 'Limpiar selección',
    'LBL_ACCESSKEY_CLEAR_COLLECTION_LABEL' => 'Limpiar selección',
    'LBL_ACCESSKEY_SELECT_FILE_KEY' => 'F',
    'LBL_ACCESSKEY_SELECT_FILE_TITLE' => 'Seleccionar archivo',
    'LBL_ACCESSKEY_SELECT_FILE_LABEL' => 'Select File',
    'LBL_ACCESSKEY_CLEAR_FILE_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_FILE_TITLE' => 'Limpiar archivo',
    'LBL_ACCESSKEY_CLEAR_FILE_LABEL' => 'Limpiar archivo',

    'LBL_ACCESSKEY_SELECT_USERS_KEY' => 'U',
    'LBL_ACCESSKEY_SELECT_USERS_TITLE' => 'Select User',
    'LBL_ACCESSKEY_SELECT_USERS_LABEL' => 'Select User',
    'LBL_ACCESSKEY_CLEAR_USERS_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_USERS_TITLE' => 'Limpiar usuario',
    'LBL_ACCESSKEY_CLEAR_USERS_LABEL' => 'Clear User',
    'LBL_ACCESSKEY_SELECT_ACCOUNTS_KEY' => 'A',
    'LBL_ACCESSKEY_SELECT_ACCOUNTS_TITLE' => 'Seleccionar cuenta',
    'LBL_ACCESSKEY_SELECT_ACCOUNTS_LABEL' => 'Select Account',
    'LBL_ACCESSKEY_CLEAR_ACCOUNTS_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_ACCOUNTS_TITLE' => 'Limpiar Cuenta',
    'LBL_ACCESSKEY_CLEAR_ACCOUNTS_LABEL' => 'Limpiar Cuenta',
    'LBL_ACCESSKEY_SELECT_CAMPAIGNS_KEY' => 'M',
    'LBL_ACCESSKEY_SELECT_CAMPAIGNS_TITLE' => 'Seleccionar campaña',
    'LBL_ACCESSKEY_SELECT_CAMPAIGNS_LABEL' => 'Seleccionar campaña',
    'LBL_ACCESSKEY_CLEAR_CAMPAIGNS_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_CAMPAIGNS_TITLE' => 'Limpiar campaña',
    'LBL_ACCESSKEY_CLEAR_CAMPAIGNS_LABEL' => 'Limpiar campaña',
    'LBL_ACCESSKEY_SELECT_CONTACTS_KEY' => 'C',
    'LBL_ACCESSKEY_SELECT_CONTACTS_TITLE' => 'Select Contact',
    'LBL_ACCESSKEY_SELECT_CONTACTS_LABEL' => 'Select Contact',
    'LBL_ACCESSKEY_CLEAR_CONTACTS_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_CONTACTS_TITLE' => 'Limpiar contacto',
    'LBL_ACCESSKEY_CLEAR_CONTACTS_LABEL' => 'Limpiar contacto',
    'LBL_ACCESSKEY_SELECT_TEAMSET_KEY' => 'Z',
    'LBL_ACCESSKEY_SELECT_TEAMSET_TITLE' => 'Seleccionar equipo',
    'LBL_ACCESSKEY_SELECT_TEAMSET_LABEL' => 'Seleccionar equipo',
    'LBL_ACCESSKEY_CLEAR_TEAMS_KEY' => ' ',
    'LBL_ACCESSKEY_CLEAR_TEAMS_TITLE' => 'Limpiar equipo',
    'LBL_ACCESSKEY_CLEAR_TEAMS_LABEL' => 'Limpiar equipo',
    'LBL_SERVER_RESPONSE_RESOURCES' => 'Recursos usados para construir esta página (consultas, archivos)',
    'LBL_SERVER_RESPONSE_TIME_SECONDS' => 'segundos.',
    'LBL_SERVER_RESPONSE_TIME' => 'Tiempo de respuesta del servidor:',
    'LBL_SERVER_MEMORY_BYTES' => 'bytes',
    'LBL_SERVER_MEMORY_USAGE' => 'Uso de la memoria del servidor: {0} ({1})',
    'LBL_SERVER_MEMORY_LOG_MESSAGE' => 'Uso: - modulo: {0} - acción: {1}',
    'LBL_SERVER_PEAK_MEMORY_USAGE' => 'Uso de la memoria máxima del servidor: {0} ({1})',
    'LBL_SHIPPING_ADDRESS' => 'Dirección de envío',
    'LBL_SHOW' => 'Mostrar',
    'LBL_STATE' => 'Estado:',
    'LBL_STATUS_UPDATED' => '¡Su estado para este evento ha sido actualizado!',
    'LBL_STATUS' => 'Status:',
    'LBL_STREET' => 'Calle',
    'LBL_SUBJECT' => 'Subject',

    'LBL_INBOUNDEMAIL_ID' => 'ID de e-Mail entrante',

    'LBL_ALL_SCHEDULERS' => 'All Schedulers',
    'LBL_LEGACY_SCHEDULERS' => 'Legacy Schedulers',
    'LBL_SCHEDULERS' => 'Schedulers',
    'LBL_RUN_LEGACY_SCHEDULERS' => 'Running Legacy Schedulers',
    'LBL_LEGACY_SCHEDULERS_RUN_SUCCESSFULLY' => 'Legacy Schedulers run successfully!',
    'LBL_RUN_SCHEDULERS' => 'Running Schedulers',
    'LBL_LEGACY_SCHEDULER_FAILED' => 'Not all Schedulers were successful. See Logs.',
    'LBL_PASSED' => 'Passed',
    'LBL_FAILED' => 'Failed',

    'LBL_SCENARIO_SALES' => 'Sales',
    'LBL_SCENARIO_MARKETING' => 'Marketing',
    'LBL_SCENARIO_FINANCE' => 'Finance',
    'LBL_SCENARIO_SERVICE' => 'Servicio',
    'LBL_SCENARIO_PROJECT' => 'Gerente de Proyecto',

    'LBL_SCENARIO_SALES_DESCRIPTION' => 'Este escenario facilita la administración de los elementos de ventas',
    'LBL_SCENARIO_MAKETING_DESCRIPTION' => 'Este escenario facilita la adminstración de los elementos de marketing',
    'LBL_SCENARIO_FINANCE_DESCRIPTION' => 'Este escenario facilita la administración de los elementos relacionados a finanzas',
    'LBL_SCENARIO_SERVICE_DESCRIPTION' => 'Este escenario facilita la administración de los elementos relacionados a servicio',
    'LBL_SCENARIO_PROJECT_DESCRIPTION' => 'Este escenario facilita la administración de los elementos relacionados a proyectos',

    'LBL_SYNC' => 'Sync',
    'LBL_TABGROUP_ALL' => 'All',
    'LBL_TABGROUP_ACTIVITIES' => 'Activities',
    'LBL_TABGROUP_COLLABORATION' => 'Colaboración',
    'LBL_TABGROUP_MARKETING' => 'Marketing',
    'LBL_TABGROUP_OTHER' => 'Other',
    'LBL_TABGROUP_SALES' => 'Sales',
    'LBL_TABGROUP_SUPPORT' => 'Soporte',
    'LBL_TASKS' => 'Tasks',
    'LBL_THOUSANDS_SYMBOL' => 'K',
    'LBL_TRACK_EMAIL_BUTTON_LABEL' => 'Archivar e-Mail',
    'LBL_TRACK_EMAIL_BUTTON_TITLE' => 'Archive Email',
    'LBL_TOO_MANY_ADDRESSES' => 'You have selected too many email addresses.',
    'LBL_NO_ADDRESSES_SELECTED' => 'Please select an address to send to.',
    'LBL_NOT_ALL_SENT' => 'Not all Emails sent. See logs for more info.',
    'LBL_NOT_VALID_TARGETS' => 'No targets validated to send to.',
    'LBL_ALL_EMAILS_SENT' => 'All test Emails sent successfully',
    'LBL_UNDELETE_BUTTON_LABEL' => 'Restaurar',
    'LBL_UNDELETE_BUTTON_TITLE' => 'Undelete',
    'LBL_UNDELETE_BUTTON' => 'Undelete',
    'LBL_UNDELETE' => 'Undelete',
    'LBL_UNSYNC' => 'Desincronizar',
    'LBL_UPDATE' => 'Actualizar',
    'LBL_USER_LIST' => 'Lista de usuarios',
    'LBL_USERS' => 'Usuarios',
    'LBL_VERIFY_EMAIL_ADDRESS' => 'Comprobando la entrada de correo actual...',
    'LBL_VERIFY_PORTAL_NAME' => 'Comprobando el nombre de portal actual...',
    'LBL_VIEW_IMAGE' => 'ver',
    'LBL_CREATE_PORTAL_USER_FAILED' => 'Failed to create portal user',
    'LBL_CREATE_PORTAL_USER_SUCCESS' => 'Created portal user',

    'LNK_ABOUT' => 'Acerca de',
    'LNK_ADVANCED_FILTER' => 'Filtro avanzado',
    'LNK_BASIC_FILTER' => 'Filtro rápido',
    'LBL_ADVANCED_SEARCH' => 'Filtro avanzado',
    'LBL_QUICK_FILTER' => 'Filtro rápido',
    'LBL_BASIC_FILTER' => 'Filtro básico',
    'LBL_QUICK' => 'Rápido',
    'LNK_SEARCH_NONFTS_VIEW_ALL' => 'Mostrar todo',
    'LNK_CLOSE' => 'Close',
    'LBL_MODIFY_CURRENT_FILTER' => 'Modificar filtro actual',
    'LNK_SAVED_VIEWS' => 'Opciones de diseño',
    'LNK_DELETE' => 'Delete',
    'LNK_EDIT' => 'Editar',
    'LNK_GET_LATEST' => 'Obtener última',
    'LNK_GET_LATEST_TOOLTIP' => 'Reemplazar con última versión',
    'LNK_HELP' => 'Help',
    'LNK_CREATE' => 'Nuevo',
    'LNK_LIST_END' => 'Fin',
    'LNK_LIST_NEXT' => 'Next',
    'LNK_LIST_PREVIOUS' => 'Anterior',
    'LNK_LIST_RETURN' => 'Volver a la lista',
    'LNK_LIST_START' => 'Iniciar',
    'LNK_LOAD_SIGNED' => 'Firmar',
    'LNK_LOAD_SIGNED_TOOLTIP' => 'Reemplazar con documento firmado',
    'LNK_PRINT' => 'Print',
    'LNK_BACKTOTOP' => 'Ir arriba',
    'LNK_REMOVE' => 'Quitar',
    'LNK_RESUME' => 'Continuar',
    'LNK_VIEW_CHANGE_LOG' => 'Ver registro de cambios',
    'LBL_CHANGE_LOG' => 'Change Log',

    'NTC_CLICK_BACK' => 'Por favor, presione el botón anterior del navegador y corrija el error',
    'NTC_DATE_FORMAT' => '(aaaa-mm-dd)',
    'NTC_DELETE_CONFIRMATION_MULTIPLE' => '¿Está seguro que desea eliminar los registros seleccionados?',
    'NTC_SEND_QUEUED_CAMPAIGN_EMAILS' => 'Send Next Batch of Queued Campaign Emails?',
    'NTC_SNOOZE_CONFIRMATION' => '¿Estás seguro de que quieres posponer?',
    'NTC_TEMPLATE_IS_USED' => 'La plantilla se está utilizando en al menos un registro de marketing por e-Mail. ¿Está seguro de que desea eliminarla?',
    'NTC_TEMPLATES_IS_USED' => 'Las siguientes plantillas se utilizan en los registros de marketing por correo electrónico. ¿Seguro que quieres eliminarlos?' . PHP_EOL,
    'NTC_DELETE_CONFIRMATION' => 'Are you sure you want to delete this record?',
    'NTC_ABORT_CONFIRMATION' => 'Are you sure you want to abort?',
    'LBL_EMAIL_MARKETING_NOT_SENT' => 'Email Marketing status is not Sent, cannot reschedule',
    'NTC_RESUME_CONFIRMATION' => 'Resuming will re-queue failed recipients and continue sending.',
    'LBL_EMAIL_MARKETING_NOT_PAUSED' => 'Email Marketing status is not Paused, cannot resume',
    'LBL_CAMPAIGN_PAUSED_THRESHOLD' => 'This campaign has been paused —',
    'LBL_CAMPAIGN_PAUSED_DYNAMIC_LABEL' => '{{ fields.email-marketing-pause-reason.value }}',
    'NTC_SCHEDULE_CONFIRMATION' => "When Scheduled, The Sending Process will begin once the Scheduled Run Date has been reached.",
    'NTC_DELETE_TEST_ENTRIES' => 'Scheduling will Delete Test Entries.',
    'NTC_DELETE_TEST_ENTRIES_CONFIRMATION' => 'Are you sure you want to delete test entries?',
    'NTC_PROCEED' => 'Would you like to proceed?',
    'NTC_UNSCHEDULE_CONFIRMATION' => 'Unscheduling will set the Status to "Draft".',
    'NTC_UNSCHEDULE_CONFIRMATION_OTHER' => 'The Sending Process will no longer begin, unless Re-Scheduled.',
    'NTC_DELETE_CONFIRMATION_NUM' => '¿Está seguro que desea eliminar los ',
    'NTC_UPDATE_CONFIRMATION_NUM' => '¿Está seguro de que desea actualizar los ',
    'NTC_DELETE_SELECTED_RECORDS' => ' registros seleccionados?',
    'NTC_LOGIN_MESSAGE' => 'Por favor, introduzca su nombre de usuario y contraseña.',
    'NTC_NO_ITEMS_DISPLAY' => 'none',
    'NTC_REMOVE_CONFIRMATION' => '¿Está seguro que desea eliminar esta relación? Solo la relación se eliminara. El registro no será borrado.',
    'NTC_REQUIRED' => 'Indicates required field',
    'NTC_TIME_FORMAT' => '(24:00)',
    'NTC_WELCOME' => 'Bienvenido',
    'NTC_YEAR_FORMAT' => '(aaaa)',
    'WARN_UNSAVED_CHANGES' => 'Está a punto de abandonar este registro sin guardar los cambios que haya podido realizar. ¿Está seguro de que desea salir de este registro?',
    'ERROR_NO_RECORD' => 'Error al recuperar el registro.  Este registro ha sido eliminado o puede que no esté autorizado para verlo',
    'LBL_TEMPLATE_CONFIRMATION' => 'Apply new Email Template? (This will override your current email body and subject field)',
    'WARN_BROWSER_VERSION_WARNING' => '<p><b>Aviso: </b>Su navegador o la versión de su navegador no es compatible.</p><p>Se recomiendan las siguientes versiones de navegadores:</p><ul><li>Internet Explorer 10 (Vista en compatibilidad no soportada)</li><li>Mozilla Firefox 32.0 </li><li>Safari 6</li><li>Google Chrome 37 (o superior)</li></ul>',
    'WARN_BROWSER_IE_COMPATIBILITY_MODE_WARNING' => '<b>Advertencia:</b> Su navegador está en modo compatibilidad IE el cual no es soportado.',
    'ERROR_TYPE_NOT_VALID' => 'Error. Este tipo no es válido',
    'ERROR_NO_BEAN' => 'Falló la obtención del bean',
    'LBL_DUP_MERGE' => 'Buscar duplicados',
    'LBL_MANAGE_SUBSCRIPTIONS' => 'Administrar suscripciones',
    'LBL_MANAGE_SUBSCRIPTIONS_FOR' => 'Administrar suscripciones a',
    // Ajax status strings
    'LBL_LOADING' => 'Cargando...',
    'LBL_SEARCHING' => 'Buscando...',
    'LBL_SAVING_LAYOUT' => 'Guardando diseño...',
    'LBL_SAVED_LAYOUT' => 'El diseño ha sido guardado',
    'LBL_SAVED' => 'Guardado',
    'LBL_SAVING' => 'Guardando',
    'LBL_DISPLAY_COLUMNS' => 'Mostrar columnas',
    'LBL_HIDE_COLUMNS' => 'Ocultar columnas',
    'LBL_COLUMNS' => 'Columns',
    'LBL_SEARCH_CRITERIA' => 'Criterios de búsqueda',
    'LBL_SAVED_VIEWS' => 'Vistas guardadas',
    'LBL_PROCESSING_REQUEST' => 'Procesando...',
    'LBL_REQUEST_PROCESSED' => 'Done',
    'LBL_AJAX_FAILURE' => 'Fallo de Ajax',
    'LBL_MERGE_DUPLICATES' => 'Combinar',
    'LBL_SAVED_FILTER_SHORTCUT' => 'Mis filtros',
    'LBL_SEARCH_POPULATE_ONLY' => 'Realizar una búsqueda utilizando el formulario de búsqueda anterior',
    'LBL_DETAILVIEW' => 'Vista de detalle',
    'LBL_LISTVIEW' => 'Vista de lista',
    'LBL_EDITVIEW' => 'Vista de edición',
    'LBL_BILLING_STREET' => 'Calle:',
    'LBL_SHIPPING_STREET' => 'Street:',
    'LBL_SEARCHFORM' => 'Formulario de búsqueda',
    'LBL_SAVED_SEARCH_ERROR' => 'Por favor, introduzca un nombre para esta vista',
    'LBL_DISPLAY_LOG' => 'Mostrar registro',
    'ERROR_JS_ALERT_SYSTEM_CLASS' => 'System',
    'ERROR_JS_ALERT_TIMEOUT_TITLE' => 'Cierre de sesión',
    'ERROR_JS_ALERT_TIMEOUT_MSG_1' => 'Su sesión va a expirar en 2 minutos. Por favor, guarde su trabajo.',
    'ERROR_JS_ALERT_TIMEOUT_MSG_2' => 'Su sesión ha expirado',
    'MSG_JS_ALERT_MTG_REMINDER_AGENDA' => "\nAgenda: ",
    'MSG_JS_ALERT_MTG_REMINDER_MEETING' => 'Meeting',
    'MSG_JS_ALERT_MTG_REMINDER_CALL' => 'Call',
    'MSG_JS_ALERT_MTG_REMINDER_TIME' => 'Hora:',
    'MSG_JS_ALERT_MTG_REMINDER_LOC' => 'Lugar:',
    'MSG_JS_ALERT_MTG_REMINDER_DESC' => 'Descripción:',
    'MSG_JS_ALERT_MTG_REMINDER_STATUS' => 'Estado:',
    'MSG_JS_ALERT_MTG_REMINDER_RELATED_TO' => 'Relacionado A: ',
    'MSG_JS_ALERT_MTG_REMINDER_CALL_MSG' => "\nClick OK to view this call or click Cancel to dismiss this message.",
    'MSG_JS_ALERT_MTG_REMINDER_MEETING_MSG' => "\nClick OK to view this meeting or click Cancel to dismiss this message.",
    'MSG_JS_ALERT_MTG_REMINDER_NO_EVENT_NAME' => 'Evento',
    'MSG_JS_ALERT_MTG_REMINDER_NO_DESCRIPTION' => 'Aun no se ha programado algún evento.',
    'MSG_JS_ALERT_MTG_REMINDER_NO_LOCATION' => 'La ubicación aun no se ha configurado.',
    'MSG_JS_ALERT_MTG_REMINDER_NO_START_DATE' => 'Aún no se establece la fecha de inicio.',
    'MSG_LIST_VIEW_NO_RESULTS_BASIC' => 'No se encontraron resultados.',
    'MSG_LIST_VIEW_NO_RESULTS_CHANGE_CRITERIA' => 'No se encontraron resultados... Tal vez cambiar tu criterio de búsqueda e inténtarlo de nuevo?',
    'MSG_LIST_VIEW_NO_RESULTS' => 'No se encontraron resultados para <item1>',
    'MSG_LIST_VIEW_NO_RESULTS_SUBMSG' => 'Crear <item1> como un nuevo <item2>',
    'MSG_LIST_VIEW_CHANGE_SEARCH' => 'o cambia tu criterio de búsqueda',
    'MSG_EMPTY_LIST_VIEW_NO_RESULTS' => 'Actualmente no tiene registros guardados. <item2> o <item3> uno.',

    // contextMenu strings
    'LBL_ADD_TO_FAVORITES' => 'Agregar a mis favoritos',
    'LBL_CREATE_CONTACT' => 'Nuevo contacto',
    'LBL_CREATE_CASE' => 'Create Case',
    'LBL_CREATE_NOTE' => 'Nueva nota',
    'LBL_CREATE_OPPORTUNITY' => 'Nuevo contacto',
    'LBL_SCHEDULE_CALL' => 'Programar llamada',
    'LBL_SCHEDULE_MEETING' => 'Programar reunión',
    'LBL_CREATE_TASK' => 'Nueva tarea',
    //web to lead
    'LBL_GENERATE_WEB_TO_LEAD_FORM' => 'Generar formulario ',
    'LBL_SAVE_WEB_TO_LEAD_FORM' => 'Guardar Formulario Web A Cliente Potencial',
    'LBL_AVAILABLE_FIELDS' => 'Campos disponibles',
    'LBL_FIRST_FORM_COLUMN' => 'Primera columna del Formulario',
    'LBL_SECOND_FORM_COLUMN' => 'Segunda Columna del Formulario',
    'LBL_ASSIGNED_TO_REQUIRED' => 'Falta campo obligatorio: Asignado a',
    'LBL_RELATED_CAMPAIGN_REQUIRED' => 'Falta campo obligatorio: Relacionado a la campaña',
    'LBL_TYPE_OF_PERSON_FOR_FORM' => 'Crear formulario Web ',
    'LBL_TYPE_OF_PERSON_FOR_FORM_DESC' => 'El envío de este formulario creará ',

    'LBL_ADD_ALL_LEAD_FIELDS' => 'Agregar todos los campos',
    'LBL_RESET_ALL_LEAD_FIELDS' => 'Restablecer todos los campos',
    'LBL_REMOVE_ALL_LEAD_FIELDS' => 'Quitar todos los campos',
    'LBL_NEXT_BTN' => 'Next',
    'LBL_ONLY_IMAGE_ATTACHMENT' => 'Sólo puede incluirse un adjunto de tipo imagen',
    'LBL_TRAINING' => 'Foro de la comunidad',
    'ERR_MSSQL_DB_CONTEXT' => 'Cambiado el contexto de base de datos a ',
    'ERR_MSSQL_WARNING' => 'Aviso:',

    //Meta-Data framework
    'ERR_CANNOT_CREATE_METADATA_FILE' => 'Error: No existe el archivo [[file]].  No se ha podido crear porque el archivo con el HTML correspondiente no ha sido encontrado',
    'ERR_CANNOT_FIND_MODULE' => 'Error: El módulo [module] no existe',
    'LBL_ALT_ADDRESS' => 'Dirección alternativa:',
    'ERR_SMARTY_UNEQUAL_RELATED_FIELD_PARAMETERS' => 'Error: Hay un número de argumentos desigual para los elementos \'key\' y \'copy\' en el array displayParams',

    /* MySugar Framework (for Home and Dashboard) */
    'LBL_DASHLET_CONFIGURE_GENERAL' => 'General',
    'LBL_DASHLET_CONFIGURE_FILTERS' => 'Filtros',
    'LBL_DASHLET_CONFIGURE_MY_ITEMS_ONLY' => 'Sólo mis elementos',
    'LBL_DASHLET_CONFIGURE_TITLE' => 'Titulo',
    'LBL_DASHLET_CONFIGURE_DISPLAY_ROWS' => 'Mostrar filas',

    // MySugar status strings
    'LBL_MAX_DASHLETS_REACHED' => 'Ha alcanzado el máximo número de dashlets establecido por su administrador. Por favor, quite un Dashlet para poder agregar más.',
    'LBL_ADDING_DASHLET' => 'Agregando SuiteCRM Dashlet ...',
    'LBL_ADDED_DASHLET' => 'SuiteCRM Dashlet Agregado',
    'LBL_REMOVE_DASHLET_CONFIRM' => '¿Está seguro de que desea quitar el SuiteCRM Dashlet?',
    'LBL_REMOVING_DASHLET' => 'Quitando SuiteCRM Dashlet ...',
    'LBL_REMOVED_DASHLET' => 'SuiteCRM Dashlet removed',
    'LBL_MAX_DASHLET_COLUMNS' => "Maximum of %s columns can be displayed.",
    'LBL_RETRIEVING_XML_DATA' => "There was a problem retrieving the XML data:\n",

    // MySugar Menu Options

    'LBL_LOADING_PAGE' => 'Cargando página, espere por favor...',

    'LBL_RELOAD_PAGE' => 'Por favor, <a href="javascript: window.location.reload()">recargue la ventana</a> para usar este SuiteCRM Dashlet.',
    'LBL_ADD_DASHLETS' => 'Agregar Dashlets',
    'LBL_CLOSE_DASHLETS' => 'Close',
    'LBL_OPTIONS' => 'Options',
    'LBL_1_COLUMN' => '1 columna',
    'LBL_2_COLUMN' => '2 columna',
    'LBL_3_COLUMN' => '3 columnas',
    'LBL_PAGE_NAME' => 'Nombre de página',

    'LBL_SEARCH_RESULTS' => 'Search Results',
    'LBL_SEARCH_MODULES' => 'Módulos',
    'LBL_SEARCH_TOOLS' => 'Herramientas',
    'LBL_SEARCH_HELP_TITLE' => 'Consejos de Búsqueda',
    /* End MySugar Framework strings */

    'LBL_NO_IMAGE' => 'Sin imagen',

    'LBL_MODULE' => 'Módulo',

    //adding a label for address copy from left
    'LBL_COPY_ADDRESS_FROM_LEFT' => 'Copiar dirección de la izquierda:',
    'LBL_SAVE_AND_CONTINUE' => 'Guardar y continuar',

    'LBL_SEARCH_HELP_TEXT' => '<p><br /><strong>Controles multiselección</strong></p><ul><li>Haga clic en los valores para seleccionar un atributo.</li><li>Ctrl-clic&nbsp;para&nbsp;seleccionar múltiples. Los usuarios de Mac usan CMD-clic.</li><li>Para seleccionar todos los valores entre dos atributos,&nbsp; haga clic en el primer valor&nbsp;y después shift-clic en el último.</li></ul><p><strong>Búsqueda Avanzada y Opciones de Presentación</strong><br><br>Usando la opción <b>Búsquedas Guardadas y Presentación</b>, puede guardar un conjunto de criterios de búsqueda y/o un diseño de Vista de Lista para rápidamente obtener los resultados de búsqueda deseados en un futuro. Puede guardar un número ilimitad de búsquedas y diseños. Todas las búsquedas guardadas aparecen con su nombre en la lista de Búsquedas Guardadas, con la última búsqueda guardada en la parte superior de la lista.<br><br>Para personalizar el diseño de Vista de Lista, utilice los cuadros de Ocultar Columnas y Mostrar Columnas para seleccionar los campos a mostrar en los resultados de la búsqueda. Por ejemplo, puede ver u ocultar detalles como el nombre del registro, el usuario asignado y el equipo asignado en los resultados de la búsqueda. Para agregar una columna a la Vista de Lista, seleccione el campo de la lista Ocultar Columnas y utilice la flecha izquierda para moverlo a la lista de Mostrar Columnas. Para eliminar una columna de la Vista de Lista, selecciónela de la lista Mostrar Columnas y utilice la flecha derecha para moverla a la lista Ocultar Columnas.<br><br>Si guarda la configuración de diseño, podrá cargarla en cualquier momento para ver los resultados de la búsqueda con la presentación personalizada.<br><br>Para guardar y actualizar una búsqueda y/o diseño:<ol><li>Introduzca un nombre para los resultados de búsqueda en el campo <b>Guardar esta búsqueda como</b> y haga clic en <b>Guardar</b>.Tras esto, el nombre se mostrará en la lista de Búsquedas Guardadas junto al botón <b>Limpiar</b>.</li><li>Para ver una búsqueda guardada, selecciónela de la lista de Búsquedas Guardadas. Los resultados de búsqueda se mostrarán en la Vista de Lista.</li><li>Para actualizar las propiedades de una búsqueda guardada, seleccione la búsqueda guardada de la lista, introduzca los nuevos criterios de búsqueda y/o las opciones de diseño en el área de Búsqueda Avanzada, y haga clic en<b>Actualizar</b> junto a <b>Modificar Búsqueda Actual</b>.</li><li>Para eliminar una búsqueda guardada, selecciónela en la lista de Búsquedas Guardadas, haga clic en <b>Eliminar</b> junto a <b>Modificar Búsqueda Actual</b>, y haga clic en <b>Aceptar</b> para confirmar el borrado.</li></ol>',

    //resource management
    'ERR_QUERY_LIMIT' => 'Error: Se ha alcanzado el límite $limit de consultas para el módulo $module',
    'ERROR_NOTIFY_OVERRIDE' => 'Error: ResourceObserver->notify() necesita ser reemplazado.',

    //tracker labels
    'ERR_MONITOR_FILE_MISSING' => 'Error: No se ha podido crear un monitor porque el archivo de metadatos está vacío o no existe',
    'ERR_MONITOR_NOT_CONFIGURED' => 'Error: No hay ningún monitor configurado para el nombre solicitado',
    'ERR_UNDEFINED_METRIC' => 'Error: No se ha podido establecer un valor para una métrica no definida',
    'ERR_STORE_FILE_MISSING' => 'Error: No se ha podido encontrar el archivo de implementación de almacenamiento',

    'LBL_MONITOR_ID' => 'Id de monitor',
    'LBL_USER_ID' => 'Id de usuario',
    'LBL_MODULE_NAME' => 'Nombre de módulo',
    'LBL_ITEM_ID' => 'Id de elemento',
    'LBL_ITEM_SUMMARY' => 'Resumen de elemento',
    'LBL_ACTION' => 'Acción',
    'LBL_SESSION_ID' => 'Id de sesión',
    'LBL_BREADCRUMBSTACK_CREATED' => 'BreadCrumbStack creado para el usuario id {0}',
    'LBL_VISIBLE' => 'Registro visible',
    'LBL_DATE_LAST_ACTION' => 'Fecha de última acción',

    //jc:#12287 - For javascript validation messages
    'MSG_IS_NOT_BEFORE' => 'no es antes de',
    'MSG_IS_MORE_THAN' => 'es más que',
    'MSG_SHOULD_BE' => 'debería ser',
    'MSG_OR_GREATER' => 'o mayor',

    'LBL_LIST' => 'Listar',
    'LBL_CREATE_BUG' => 'Nueva incidencia',

    'LBL_OBJECT_IMAGE' => 'imagen de objeto',
    //jchi #12300
    'LBL_MASSUPDATE_DATE' => 'Seleccione fecha',

    'LBL_VALIDATE_RANGE' => 'no está dentro del rango válido',
    'LBL_CHOOSE_START_AND_END_DATES' => 'Por favor seleccione un rango de fecha inicial y un rango de fecha final',
    'LBL_CHOOSE_START_AND_END_ENTRIES' => 'Por favor seleccione un rango de entrada de inicio y de finalización',

    //jchi #  20776
    'LBL_DROPDOWN_LIST_ALL' => 'All',

    //Connector
    'ERR_CONNECTOR_FILL_BEANS_SIZE_MISMATCH' => 'Error: El número de Arrays del parámetro bean no coincide con el número de Arrays de los resultados',
    'ERR_MISSING_MAPPING_ENTRY_FORM_MODULE' => 'Error: Falta la entrada de mapeo para el módulo',
    'ERROR_UNABLE_TO_RETRIEVE_DATA' => 'Error: No ha sido posible obtener los datos para el conector {0}.  Puede que el servicio no esté accesible en estos momentos o que los parámetros de configuración no sean válidos.  Mensaje de error del conector: ({1})',

    // fastcgi checks
    'LBL_FASTCGI_LOGGING' => 'Para una mejor experiencia use IIS/FastCGI sapi, asigne fastcgi.logging en 0 en su archivo php.ini.',

    //Collection Field
    'LBL_COLLECTION_NAME' => 'Nombre',
    'LBL_COLLECTION_PRIMARY' => 'Primary',
    'ERROR_MISSING_COLLECTION_SELECTION' => 'Campo obligatorio vacío',

    //MB -Fixed Bug #32812 -Max
    'LBL_ASSIGNED_TO_NAME' => 'Asignado a',
    'LBL_DESCRIPTION' => 'Descripción',

    'LBL_YESTERDAY' => 'ayer',
    'LBL_TODAY' => 'hoy',
    'LBL_TOMORROW' => 'mañana',
    'LBL_NEXT_WEEK' => 'próxima semana',
    'LBL_NEXT_MONDAY' => 'próximo lunes',
    'LBL_NEXT_FRIDAY' => 'próximo viernes',
    'LBL_TWO_WEEKS' => 'dos semanas',
    'LBL_NEXT_MONTH' => 'próximo mes',
    'LBL_FIRST_DAY_OF_NEXT_MONTH' => 'primer día del próximo mes',
    'LBL_THREE_MONTHS' => 'tres meses',
    'LBL_SIXMONTHS' => 'seis meses',
    'LBL_NEXT_YEAR' => 'próximo año',

    //Datetimecombo fields
    'LBL_HOURS' => 'Hours',
    'LBL_MINUTES' => 'Minutes',
    'LBL_MERIDIEM' => 'Meridiem',
    'LBL_DATE' => 'Fecha',
    'LBL_DASHLET_CONFIGURE_AUTOREFRESH' => 'Actualización automática',

    'LBL_DURATION_DAY' => 'día',
    'LBL_DURATION_HOUR' => 'hora',
    'LBL_DURATION_MINUTE' => 'minuto',
    'LBL_DURATION_DAYS' => 'días',
    'LBL_DURATION_HOURS' => 'Duración (Horas)',
    'LBL_DURATION_MINUTES' => 'Duración (Minutos)',

    //Calendar widget labels
    'LBL_CHOOSE_MONTH' => 'Elija el mes',
    'LBL_ENTER_YEAR' => 'Introduzca un año',
    'LBL_ENTER_VALID_YEAR' => 'Por favor, poner un año valido',

    //File write error label
    'ERR_FILE_WRITE' => 'Error: No se pudo escribir el archivo {0}.  Por favor, verifique los permisos del sistema y del servidor web',
    'ERR_FILE_NOT_FOUND' => 'Error: No se pudo cargar el archivo {0}.  Por favor, verifique los permisos del sistema y del servidor web',

    'LBL_AND' => 'y',

    // File fields
    'LBL_SEARCH_EXTERNAL_API' => 'Archivo de fuente externa',
    'LBL_EXTERNAL_SECURITY_LEVEL' => 'Seguridad',

    //IMPORT SAMPLE TEXT
    'LBL_IMPORT_SAMPLE_FILE_TEXT' => '"Este es un archivo de importación de muestra que es un ejemplo de los contenidos que se espera de un archivo que está listo para la importación." "El archivo es uno delimitado por comas .csv, usando comillas como el calificador de campo." "La fila de encabezado es la fila de arriba la mayoría en el archivo que contiene las etiquetas de campo como si fuera a ver en la aplicación." "Estas etiquetas se utilizan para el mapeo de los datos en el archivo de los campos de la aplicación." "Notas: Los nombres de base de datos también podrían ser utilizados en la cabecera. Esto es útil cuando usted está usando phpMyAdmin o cualquier otra herramienta de bases de datos para proporcionar una lista de exportación de datos a importar." "El orden de las columnas no es crítico, el proceso de importación coincide con los datos en los campos apropiados basados ​​en la fila de cabecera". "Para utilizar este archivo como plantilla, haga lo siguiente:" "1. Quitar las filas de la muestra de los datos" "2. Retire el texto de ayuda que usted está leyendo ahora mismo" "3. de entrada de sus propios datos en las filas correspondientes y columnas" " 4. Guarde el archivo en una ubicación conocida de su sistema " " 5. Haga clic en la opción Importar en el menú Acciones en la aplicación y elegir el archivo a subir "',
    //define labels to be used for overriding local values during import/export

    'LBL_NOTIFICATIONS_NONE' => 'Sin notificaciones',
    'ERR_NOTIFICATIONS_MARK_AS_READ' => 'Error al intentar marcar las notificaciones como leídas',
    'ERR_FIELD_LOGIC_BACKEND_CALCULATION' => 'Error al intentar obtener el valor',
    'LBL_FAILED_TO_UPDATE_TEMPLATE_VARIABLES' => 'Failed to update template variables',
    'LBL_ALT_SORT_DESC' => 'Ordenado descendente',
    'LBL_ALT_SORT_ASC' => 'Ordenado ascendente',
    'LBL_ALT_SORT' => 'Sort',
    'LBL_ALT_SHOW_OPTIONS' => 'Mostrar opciones',
    'LBL_ALT_HIDE_OPTIONS' => 'Ocultar Opciones',
    'LBL_ALT_MOVE_COLUMN_LEFT' => 'Mover selección a la lista de la izquierda',
    'LBL_ALT_MOVE_COLUMN_RIGHT' => 'Mover selección a la lista de la derecha',
    'LBL_ALT_MOVE_COLUMN_UP' => 'Mover selección hacia arriba en el orden de la lista',
    'LBL_ALT_MOVE_COLUMN_DOWN' => 'Mover selección hacia abajo en el orden de la lista',
    'LBL_ALT_INFO' => 'Información',
    'MSG_DUPLICATE' => 'El registro {0} que está a punto de crear puede ser un duplicado de un registro {0} que ya existe. {1} registros que contienen nombres similares se enumeran a continuación.<br />Haga clic en Crear {1} para continuar la creación de este nuevo {0}, o seleccionar un archivo {0} se enumeran a continuación.',
    'MSG_SHOW_DUPLICATES' => 'El registro {0} que está a punto de crear puede ser un duplicado de un registro {0} que ya existe. {1} registros que contienen nombres similares se enumeran a continuación. Haga clic en Guardar para continuar con la creación de este nuevo {0}, o haga clic en Cancelar para volver al módulo sin necesidad de crear {0}.',
    'LBL_EMAIL_TITLE' => 'Dirección de Correo Electrónico',
    'LBL_EMAIL_OPT_TITLE' => 'Email rehusado',
    'LBL_EMAIL_INV_TITLE' => 'email invalido',
    'LBL_EMAIL_PRIM_TITLE' => 'Designar como dirección de correo electrónico principal',
    'LBL_SELECT_ALL_TITLE' => 'Seleccionar todo',
    'LBL_SELECT_THIS_ROW_TITLE' => 'Seleccionar esta fila',

    //for upload errors
    'UPLOAD_ERROR_TEXT' => 'ERROR: Hubo un error durante la subida. Código de error: {0} - {1}',
    'UPLOAD_ERROR_TEXT_SIZEINFO' => 'ERROR: Hubo un error durante la subida. Código de error: {0} - {1}. El upload_maxsize es {2}',
    'UPLOAD_ERROR_HOME_TEXT' => 'ERROR: Se ha producido un error durante la subida, por favor póngase en contacto con un administrador para obtener ayuda.',
    'UPLOAD_MAXIMUM_EXCEEDED' => 'El tamaño de la ({0} bytes) Superó el máximo permitido: {1} bytes',
    'UPLOAD_REQUEST_ERROR' => 'Ocurrió un error. Por favor actualice su página y vuelva a intentarlo.',

    //508 used Access Keys
    'LBL_EDIT_BUTTON_KEY' => 'E',
    'LBL_EDIT_BUTTON_LABEL' => 'Editar',
    'LBL_EDIT_BUTTON_TITLE' => 'Editar',
    'LBL_DUPLICATE_BUTTON_KEY' => 'U',
    'LBL_DUPLICATE_BUTTON_LABEL' => 'Duplicate',
    'LBL_DUPLICATE_BUTTON_TITLE' => 'Duplicate',
    'LBL_DISABLE_USER_2FA' => 'Disable 2FA',
    'LBL_DELETE_BUTTON_KEY' => 'D',
    'LBL_DELETE_BUTTON_LABEL' => 'Delete',
    'LBL_DELETE_BUTTON_TITLE' => 'Delete',
    'LBL_BULK_ACTION_BUTTON_LABEL' => 'Acción masiva',
    'LBL_BULK_ACTION_BUTTON_LABEL_MOBILE' => 'Acción',
    'LBL_TOO_FEW_SELECTED' => 'Número inválido de registros seleccionados. Debe seleccionar un mínimo de {min} registros.',
    'LBL_TOO_MANY_SELECTED' => 'Número inválido de registros seleccionados. Debe seleccionar un máximo de {max} registros.',
    'LBL_SELECT_ALL_NOT_ALLOWED' => 'La selección de todos los registros no está disponible para esta acción. Por favor, seleccione registros individuales.',
    'LBL_MISSING_HANDLER_DATA' => 'Error inesperado. Falta datos del manejador de acción en masa de la respuesta',
    'LBL_MISSING_HANDLER' => 'Error inesperado. Ningún manejador definido para la acción masiva de selección',
    'LBL_MISSING_HANDLER_DATA_ROUTE' => 'Error inesperado. Falta la ruta de acción masiva',
    'LBL_ACTION_ERROR' => 'Error inesperado al llamar a la acción',
    'LBL_BULK_ACTION_ERROR' => 'Error inesperado al llamar a la acción masiva',
    'LBL_BULK_ACTION_DELETE_SUCCESS' => 'Registro (s) eliminado (s) correctamente',
    'LBL_BULK_ACTION_MASS_UPDATE_CONFIRMATION' => '¿Está seguro de que desea actualizar los registros seleccionados?',
    'LBL_BULK_ACTION_MASS_UPDATE_SUCCESS' => 'Todos los registros actualizados correctamente',
    'LBL_BULK_ACTION_MASS_UPDATE_PARTIAL_SUCCESS' => 'Éxito parcial. Algunos registros no fueron actualizados. Por favor, compruebe el registro',
    'LBL_BULK_ACTION_MASS_UPDATE_NO_FIELDS' => 'No hay campos para actualizar',
    'LBL_BULK_ACTION_MASS_UPDATE_NO_RECORDS' => 'No hay campos para actualizar',
    'LBL_BULK_ACTION_MASS_UPDATE_NO_ACLS' => 'Privilegio insuficiente, no se permite guardar la acción',
    'LBL_UNEXPECTED_ERROR' => 'Error inesperado. No se pudo realizar la acción.',
    'LBL_RECORD_DELETE_SUCCESS' => 'Registro eliminado correctamente',
    'LBL_RECORD_DELETE_ALL_SUCCESS' => 'Registros eliminados correctamente',
    'LBL_RECORD_SNOOZE_SUCCESS' => 'Notificación pausada',
    'LBL_ERROR_SAVING' => 'Se produjo un error al guardar los datos',
    'LBL_SAVE_BUTTON_KEY' => 'S',
    'LBL_SAVE_BUTTON_LABEL' => 'Save',
    'LBL_NEW_EM_SURVEY' => 'New Survey Email',
    'LBL_NEW_EM_TRANSACTIONAL' => 'New Transactional Email',
    'LBL_NEW_EM_MARKETING' => 'New Marketing Email',
    'LBL_NEW_SURVEY' => 'New Survey',
    'LBL_WEB_TO_LEAD' => 'New Web to Person Form',
    'LBL_TYPE' => 'Type',
    'LBL_DATE_START' => 'Fecha Inicio',
    'LBL_SEND_DATE' => 'Send Date',
    'LBL_SCHEDULE_BUTTON_LABEL' => 'Schedule',
    'LBL_UNABLE_TO_UNSCHEDULE' => 'Unable to unschedule as not scheduled',
    'LBL_SAVE_BUTTON_TITLE' => 'Save',
    'LBL_SAVE_CONTINUE_LABEL' => 'Save And Continue',
    'LBL_CANCEL_BUTTON_KEY' => 'X',
    'LBL_CANCEL_BUTTON_LABEL' => 'Cancel',
    'LBL_CANCEL_BUTTON_TITLE' => 'Cancel',
    'LBL_FIRST_INPUT_EDIT_VIEW_KEY' => '7',
    'LBL_ADV_SEARCH_LNK_KEY' => '8',
    'LBL_FIRST_INPUT_SEARCH_KEY' => '9',

    'ANNUAL_REVENUE_BY_ACCOUNTS' => 'Ganancias Anuales Por Cuentas',
    'PIPELINE_BY_SALES_STAGE' => 'Proceso por Etapa de Ventas',
    'LEADS_BY_SOURCE' => 'Clientes Potenciales por Fuente',
    'LEADS_BY_STATUS' => 'Clientes Potenciales por Estado',
    'ACCOUNT_TYPES_PER_MONTH' => 'Nuevas cuentas por mes',

    'ERR_CONNECTOR_NOT_ARRAY' => 'conector serie en {0} se ha definido incorrectamente o está vacío y no pudo ser usado.',
    'ERR_SUHOSIN' => 'La transmisión de subida está bloqueada por Suhosin, por favor agregue &quot;subir&quot; a suhosin.executor.include.whitelist (Vea suisrm.log para más información)',
    'ERR_BAD_RESPONSE_FROM_SERVER' => 'Respuesta incorrecta del servidor',
    'LBL_ACCOUNT_PRODUCT_QUOTE_LINK' => 'Cotización',
    'LBL_ACCOUNT_PRODUCT_SALE_PRICE' => 'Precio de Venta',
    'LBL_EMAIL_CHECK_INTERVAL_DOM' => array(
        '-1' => 'Manualmente',
        '5' => 'Every 5 minutes',
        '15' => 'Cada 15 minutos',
        '30' => 'Cada 30 minutos',
        '60' => 'Cada hora',
    ),

    'ERR_A_REMINDER_IS_EMPTY_OR_INCORRECT' => 'Falta recordatorio o esta incorrecto.',
    'ERR_REMINDER_IS_NOT_SET_POPUP_OR_EMAIL' => 'El recordatorio no ha sido definido ni en popup, ni en email.',
    'ERR_NO_INVITEES_FOR_REMINDER' => 'No hay invitados para recordatorio.',
    'LBL_DELETE_REMINDER_CONFIRM' => 'Recordatorio no incluye invitados, ¿desea eliminar el recordatorio?',
    'LBL_DELETE_REMINDER' => 'Eliminar Recordatorio',
    'LBL_OK' => 'Aceptar',
    'LBL_PROCEED' => 'Continuar',

    'LBL_COLUMNS_FILTER_HEADER_TITLE' => 'Elegir columnas',
    'LBL_COLUMN_CHOOSER' => 'Selector de columna',
    'LBL_SAVE_CHANGES_BUTTON_TITLE' => 'Guardar Cambios',
    'LBL_DISPLAYED' => 'Mostrado',
    'LBL_HIDDEN' => 'Oculto',
    'ERR_EMPTY_COLUMNS_LIST' => 'Al menos un element es necesario',

    'LBL_FILTER_HEADER_TITLE' => 'Filter',

    'LBL_CATEGORY' => 'Categoría',
    'LBL_LIST_CATEGORY' => 'Categoría',
    'ERR_FACTOR_TPL_INVALID' => 'El mensaje de Código de Autenticación es inválido, por favor contacte al administrador.',
    'LBL_SUBTHEMES' => 'Estilo',
    'LBL_SUBTHEME_OPTIONS_DAWN' => 'Amanecer',
    'LBL_SUBTHEME_OPTIONS_DAY' => 'Día',
    'LBL_SUBTHEME_OPTIONS_DUSK' => 'Crepúsculo',
    'LBL_SUBTHEME_OPTIONS_NIGHT' => 'Nocturno',
    'LBL_SUBTHEME_OPTIONS_NOON' => 'Mediodía',

    'LBL_CONFIRM_DISREGARD_DRAFT_TITLE' => 'Descartar Borrador',
    'LBL_CONFIRM_DISREGARD_DRAFT_BODY' => 'Esta operación eliminará este mensaje, ¿desea continuar?',
    'LBL_CONFIRM_DISREGARD_EMAIL_TITLE' => 'Salir del cuadro de diálogo componer',
    'LBL_CONFIRM_DISREGARD_EMAIL_BODY' => 'Al abandonar el diálogo de redacción, se perderá toda la información ingresada, ¿desea continuar?',
    'LBL_CONFIRM_APPLY_EMAIL_TEMPLATE_TITLE' => 'Aplicar una plantilla de mensaje',
    'LBL_CONFIRM_APPLY_EMAIL_TEMPLATE_BODY' => 'Esta operación borrará el campo Contenido y Asunto, ¿Desea Continuar?',

    'LBL_CONFIRM_OPT_IN_TITLE' => 'Autorización Confirmada',
    'LBL_OPT_IN_TITLE' => 'Autorizado',
    'LBL_CONFIRM_OPT_IN_DATE' => 'Fecha de Confirmación de Autorización',
    'LBL_CONFIRM_OPT_IN_SENT_DATE' => 'Fecha de envío de confirmación de autorización',
    'LBL_CONFIRM_OPT_IN_FAIL_DATE' => 'Fecha de falla en la confirmación de autorización',
    'LBL_CONFIRM_OPT_IN_TOKEN' => 'Confirmar el Token de Autorización',
    'ERR_OPT_IN_TPL_NOT_SET' => 'La Plantila de email para autorización no está configurado. Por favor, configúrelo en las configuraciones de e-mail.',
    'ERR_OPT_IN_RELATION_INCORRECT' => 'Autorización requiere que el e-mail esté relacionado con una Cuenta/Contacto/Cliente Potencial/Público Objetivo',

    'LBL_SECURITYGROUP_NONINHERITABLE' => 'Grupo no heredable',
    'LBL_PRIMARY_GROUP' => "Grupo Principal",

    // footer
    'LBL_SUITE_TOP' => 'Back to top',
    'LBL_SUITE_SUPERCHARGED' => 'Recargado por SuiteCRM',
    'LBL_SUITE_POWERED_BY' => 'Powered By SugarCRM',
    'LBL_SUITE_DESC1' => 'SuiteCRM has been written and assembled by <a href="https://suitecrm.com/">SuiteCRM Ltd</a>. The Program is provided AS IS, without warranty. Licensed under AGPLv3.',
    'LBL_SUITE_DESC2' => 'Este programa es software libre; Usted puede redistribuirlo y/o modificarlo bajo los términos de la Licencia GNU Affero General Public License versión 3 publicada por la Free Software Foundation, incluyendo el permiso adicional en la cabecera del código fuente.',
    'LBL_SUITE_DESC3' => 'SuiteCRM is a trademark of SuiteCRM Ltd<. All other company and product names may be trademarks of the respective companies with which they are associated.',
    'LBL_GENERATE_PASSWORD_BUTTON_TITLE' => 'Restablecer contraseña',
    'LBL_SEND_CONFIRM_OPT_IN_EMAIL' => 'Enviar e-mail de Confirmación de Autorización',
    'LBL_CONFIRM_OPT_IN_ONLY_FOR_PERSON' => 'Envio de e-mail de confirmación de autorización sólo para Cuentas/Contactos/Clientes Potenciales/Prospectos',
    'LBL_CONFIRM_OPT_IN_IS_DISABLED' => 'El envío de email de confirmación de la autorización está desactivado. Actívelo en Configuraciones de Email o contacte su administrador.',
    'LBL_CONTACT_HAS_NO_PRIMARY_EMAIL' => 'Confirmar envío de correo electrónico no es posible porque el contacto no tiene dirección de correo principal',
    'LBL_CONFIRM_EMAIL_SENDING_FAILED' => 'Envío de e-mail de confirmación fallado',
    'LBL_CONFIRM_EMAIL_SENT' => 'E-mail de confirmación de autorización enviado con éxito',

    'LBL_SEND_TEST_EMAIL' => 'Send Test Email',
    'LBL_SEND_TEST_EMAIL_DESC' => 'Please select the Email Addresses / User(s) and/or Target List(s) to send to.',
    'LBL_EMAIL_SENT_SUCCESSFULLY' => 'Email sent successfully',
    'LBL_PROSPECT_LIST_NAME' => 'Target Lists',

    //List View Column Selector Modal
    'LBL_COLUMN_SELECTOR_DISPLAYED_COLS' => 'VISUALIZADO',
    'LBL_COLUMN_SELECTOR_HIDDEN_COLS' => 'OCULTO',
    'LBL_COLUMN_SELECTOR_CLOSE_BUTTON' => 'Close',
    'LBL_COLUMN_SELECTOR_SAVE_BUTTON' => 'Save Changes',
    'LBL_COLUMN_SELECTOR_MODAL_TITLE' => 'Elegir Columnas',

    // Two-Factor Authentication
    'LBL_ENTER_AUTH_APP_2FA_CODE' => 'Please enter the verification code from your authenticator app',
    'LBL_ENABLE_2FA_LABEL' => 'Enable Two-Factor Authentication',
    'LBL_BACKUP_CODES' => 'Recovery/Backup Codes',
    'LBL_BACKUP_CODES_INFO' => 'Backup codes are one time passcodes to use when you are unable to verify via your Authenticator app.',
    'LBL_BACKUP_CODES_WARN' => ' WARNING: These codes are only generated once. Please copy BEFORE verifying as these will not be displayed again.',
    'LBL_PROBLEMS_GENERATING_CODE' => 'Problems generating the code?',
    'LBL_BACKUP_CODES_FALLBACK_INSTRUCTIONS' => 'Use one of the backup codes (it expires after being used)',
    'LBL_OTP_SETUP' => 'Use a OTP (one time password) authenticator on your mobile or computer to enable 2FA (Two-Factor Authentication)',
    'LBL_QR_CODE_HELP' => "If you haven't already, please download an Authenticator Application (such as FreeOTP or Google Authenticator). Use that app to scan the QR code.",
    'LBL_USE_SECRET' => "Unable to scan the QR Code?",
    'LBL_USE_SECRET_DESC' => "If you are unable to scan the QR code, please enter the secret below manually into your authenticator app.",
    'LBL_HIDE_SECRET' => "Hide TOTP Secret",
    'LBL_2FA_LOGIN_CANCEL' => 'Two Factor Authentication cancelled',

    'LBL_FACTOR_AUTH_DISABLE' => 'Two Factor Authentication was Disabled',
    'LBL_FACTOR_AUTH_SUCCESS' => 'Two Factor Authentication was Successful',
    'LBL_FACTOR_AUTH_FAIL' => "Two Factor Authentication failed. Try again.",

    'LBL_VERIFY_2FA' => 'Verify Code',
    'LBL_TWO_FACTOR_AUTH' => 'Two Factor Authentication',
    'LBL_TWO_FACTOR_AUTH_APP_METHOD' => 'Authenticator app',
    'LBL_TWO_FACTOR_AUTH_APP_METHOD_DESCRIPTION' => 'Use an authentication app to generate 2-factor authentication codes when prompted',
    'LBL_ENABLE' => 'Enable',
    'LBL_ENABLED' => 'Enabled',
    'LBL_DISABLE' => 'Disable',
    'LBL_GENERATED' => 'Generated',
    'LBL_REGENERATE_CODES' => 'Regenerate',
    'LBL_REGENERATED_BACKUP_CODES' => 'Backup Codes Regenerated'

);

$app_list_strings['moduleList']['Library'] = 'Biblioteca';
$app_list_strings['moduleList']['EmailAddresses'] = 'Email Address';
$app_list_strings['project_priority_default'] = 'Medium';
$app_list_strings['project_priority_options'] = array(
    'High' => 'High',
    'Medium' => 'Medium',
    'Low' => 'Low',
);

//GDPR lawful basis options
$app_list_strings['lawful_basis_dom'] = array(
    '' => '',
    'consent' => 'Consentimiento',
    'contract' => 'Contract',
    'legal_obligation' => 'Obligación legal',
    'protection_of_interest' => 'Protección del interés',
    'public_interest' => 'Interés público',
    'legitimate_interest' => 'Interés legítimo',
    'withdrawn' => 'Retirado',
);
//End GDPR lawful basis options

//GDPR lawful basis source options
$app_list_strings['lawful_basis_source_dom'] = array(
    '' => '',
    'website' => 'Sitio Web',
    'phone' => 'Phone',
    'given_to_user' => 'Dado al Usuario',
    'email' => 'Email',
    'third_party' => 'Terceros',
);
//End GDPR lawful basis source options

$app_list_strings['moduleList']['KBDocuments'] = 'Base de Conocimiento';

$app_list_strings['countries_dom'] = array(
    '' => '',
    'ABU DHABI' => 'ABU DHABI',
    'ADEN' => 'ADEN',
    'AFGHANISTAN' => 'AFGHANISTAN',
    'ALBANIA' => 'ALBANIA',
    'ALGERIA' => 'ALGERIA',
    'AMERICAN SAMOA' => 'SAMOA AMERICANA',
    'ANDORRA' => 'ANDORRA',
    'ANGOLA' => 'ANGOLA',
    'ANTARCTICA' => 'ANTÁRTIDA',
    'ANTIGUA' => 'ANTIGUA',
    'ARGENTINA' => 'ARGENTINA',
    'ARMENIA' => 'ARMENIA',
    'ARUBA' => 'ARUBA',
    'AUSTRALIA' => 'AUSTRALIA',
    'AUSTRIA' => 'AUSTRIA',
    'AZERBAIJAN' => 'AZERBAIJAN',
    'BAHAMAS' => 'BAHAMAS',
    'BAHRAIN' => 'BAHRAIN',
    'BANGLADESH' => 'BANGLADESH',
    'BARBADOS' => 'BARBADOS',
    'BELARUS' => 'BELARUS',
    'BELGIUM' => 'BÉLGICA',
    'BELIZE' => 'BELICE',
    'BENIN' => 'BENIN',
    'BERMUDA' => 'BERMUDAS',
    'BHUTAN' => 'BHUTAN',
    'BOLIVIA' => 'BOLIVIA',
    'BOSNIA' => 'BOSNIA',
    'BOTSWANA' => 'BOTSWANA',
    'BOUVET ISLAND' => 'ISLA BOUVET',
    'BRAZIL' => 'BRASIL',
    'BRITISH ANTARCTICA TERRITORY' => 'TERRITORIO BRITÁNICO DE LA ANTÁRTIDA',
    'BRITISH INDIAN OCEAN TERRITORY' => 'TERRITORIO BRITÁNICO DEL OCÉANO ÍNDICO',
    'BRITISH VIRGIN ISLANDS' => 'ISLAS VÍRGENES BRITÁNICAS',
    'BRITISH WEST INDIES' => 'INDIAS OCCIDENTALES BRITÁNICAS',
    'BRUNEI' => 'BRUNEI',
    'BULGARIA' => 'BULGARIA',
    'BURKINA FASO' => 'BURKINA FASO',
    'BURUNDI' => 'BURUNDI',
    'CAMBODIA' => 'CAMBODIA',
    'CAMEROON' => 'CAMERÚN',
    'CANADA' => 'CANADÁ',
    'CANAL ZONE' => 'ZONA DEL CANAL',
    'CANARY ISLAND' => 'ISLAS CANARIAS',
    'CAPE VERDI ISLANDS' => 'ISLAS CABO VERDE',
    'CAYMAN ISLANDS' => 'ISLAS CAIMÁN',
    'CHAD' => 'CHAD',
    'CHANNEL ISLAND UK' => 'ISLAS DEL CANAL DE REINO UNIDO',
    'CHILE' => 'CHILE',
    'CHINA' => 'CHINA',
    'CHRISTMAS ISLAND' => 'ISLA NAVIDAD',
    'COCOS (KEELING) ISLAND' => 'ISLA DE COCOS (KEELING)',
    'COLOMBIA' => 'COLOMBIA',
    'COMORO ISLANDS' => 'ISLAS COMORO',
    'CONGO' => 'CONGO',
    'CONGO KINSHASA' => 'CONGO KINSHASA',
    'COOK ISLANDS' => 'ISLAS COOK',
    'COSTA RICA' => 'COSTA RICA',
    'CROATIA' => 'CROACIA',
    'CUBA' => 'CUBA',
    'CURACAO' => 'CURACAO',
    'CYPRUS' => 'CHIPRE',
    'CZECH REPUBLIC' => 'REPÚBLICA CHECA',
    'DAHOMEY' => 'DAHOMEY',
    'DENMARK' => 'DINAMARCA',
    'DJIBOUTI' => 'YIBUTI',
    'DOMINICA' => 'DOMINICA',
    'DOMINICAN REPUBLIC' => 'REPÚBLICA DOMINICANA',
    'DUBAI' => 'DUBAI',
    'ECUADOR' => 'ECUADOR',
    'EGYPT' => 'EGIPTO',
    'EL SALVADOR' => 'EL SALVADOR',
    'EQUATORIAL GUINEA' => 'GUINEA ECUATORIAL',
    'ESTONIA' => 'ESTONIA',
    'ETHIOPIA' => 'ETIOPÍA',
    'FAEROE ISLANDS' => 'ISLAS FAROE',
    'FALKLAND ISLANDS' => 'ISLAS FALKLAND',
    'FIJI' => 'FIDJI',
    'FINLAND' => 'FINLANDIA',
    'FRANCE' => 'FRANCIA',
    'FRENCH GUIANA' => 'GUYANA FRANCESA',
    'FRENCH POLYNESIA' => 'POLINESIA FRANCESA',
    'GABON' => 'GABON',
    'GAMBIA' => 'GAMBIA',
    'GEORGIA' => 'GEORGIA',
    'GERMANY' => 'ALEMANIA',
    'GHANA' => 'GHANA',
    'GIBRALTAR' => 'GIBRALTAR',
    'GREECE' => 'GRECIA',
    'GREENLAND' => 'GROENLANDIA',
    'GUADELOUPE' => 'GUADALUPE',
    'GUAM' => 'GUAM',
    'GUATEMALA' => 'GUATEMALA',
    'GUINEA' => 'GUINEA',
    'GUYANA' => 'GUYANA',
    'HAITI' => 'HAITI',
    'HONDURAS' => 'HONDURAS',
    'HONG KONG' => 'HONG KONG',
    'HUNGARY' => 'HUNGRÍA',
    'ICELAND' => 'ISLANDIA',
    'IFNI' => 'IFNI',
    'INDIA' => 'INDIA',
    'INDONESIA' => 'INDONESIA',
    'IRAN' => 'IRÁN',
    'IRAQ' => 'IRAQ',
    'IRELAND' => 'IRLANDA',
    'ISRAEL' => 'ISRAEL',
    'ITALY' => 'ITALIA',
    'IVORY COAST' => 'COSTA DE MARFIL',
    'JAMAICA' => 'JAMAICA',
    'JAPAN' => 'JAPÓN',
    'JORDAN' => 'JORDANIA',
    'KAZAKHSTAN' => 'KAZAJSTÁN',
    'KENYA' => 'KENIA',
    'KOREA' => 'COREA',
    'KOREA, SOUTH' => 'COREA DEL SUR',
    'KUWAIT' => 'KUWAIT',
    'KYRGYZSTAN' => 'KIRGUISTÁN',
    'LAOS' => 'LAOS',
    'LATVIA' => 'LETONIA',
    'LEBANON' => 'LÍBANO',
    'LEEWARD ISLANDS' => 'ISLAS LEEWARD',
    'LESOTHO' => 'LESOTHO',
    'LIBYA' => 'LIBIA',
    'LIECHTENSTEIN' => 'LIECHTENSTEIN',
    'LITHUANIA' => 'LITUANIA',
    'LUXEMBOURG' => 'LUXEMBURGO',
    'MACAO' => 'MACAO',
    'MACEDONIA' => 'MACEDONIA',
    'MADAGASCAR' => 'MADAGASCAR',
    'MALAWI' => 'MALAWI',
    'MALAYSIA' => 'MALASIA',
    'MALDIVES' => 'MALDIVAS',
    'MALI' => 'MALI',
    'MALTA' => 'MALTA',
    'MARTINIQUE' => 'MARTINICA',
    'MAURITANIA' => 'MAURITANIA',
    'MAURITIUS' => 'MAURICIO',
    'MELANESIA' => 'MELANESIA',
    'MEXICO' => 'MÉXICO',
    'MOLDOVIA' => 'MOLDOVIA',
    'MONACO' => 'MÓNACO',
    'MONGOLIA' => 'MONGOLIA',
    'MOROCCO' => 'MAROCO',
    'MOZAMBIQUE' => 'MOZAMBIQUE',
    'MYANAMAR' => 'MYANAMAR',
    'NAMIBIA' => 'NAMIBIA',
    'NEPAL' => 'NEPAL',
    'NETHERLANDS' => 'PAÍSES BAJOS',
    'NETHERLANDS ANTILLES' => 'ANTILLAS DE PAÍSES BAJOS',
    'NETHERLANDS ANTILLES NEUTRAL ZONE' => 'ZONA NEUTRAL DE LAS ANTILLAS DE PAÍSES BAJOS',
    'NEW CALADONIA' => 'NUEVA CALEDONIA',
    'NEW HEBRIDES' => 'NUEVO HEBRIDES',
    'NEW ZEALAND' => 'NUEVA ZELANDA',
    'NICARAGUA' => 'NICARAGUA',
    'NIGER' => 'NIGER',
    'NIGERIA' => 'NIGERIA',
    'NORFOLK ISLAND' => 'ISLAS NORFOLK',
    'NORWAY' => 'NORUEGA',
    'OMAN' => 'OMAN',
    'OTHER' => 'OTHER',
    'PACIFIC ISLAND' => 'ISLAS DEL PACÍFICO',
    'PAKISTAN' => 'PAKISTÁN',
    'PANAMA' => 'PANAMÁ',
    'PAPUA NEW GUINEA' => 'PAPUA NUEVA GUINEA',
    'PARAGUAY' => 'PARAGUAY',
    'PERU' => 'PERÚ',
    'PHILIPPINES' => 'FILIPINAS',
    'POLAND' => 'POLONIA',
    'PORTUGAL' => 'PORTUGAL',
    'PORTUGUESE TIMOR' => 'PORTUGUESE TIMOR',
    'PUERTO RICO' => 'PUERTO RICO',
    'QATAR' => 'QATAR',
    'REPUBLIC OF BELARUS' => 'REPÚBLICA DE BIELORRUSIA',
    'REPUBLIC OF SOUTH AFRICA' => 'REPÚBLICA DE SUDÁFRICA',
    'REUNION' => 'REUNIÓN',
    'ROMANIA' => 'RUMANIA',
    'RUSSIA' => 'RUSIA',
    'RWANDA' => 'RUANDA',
    'RYUKYU ISLANDS' => 'ISLAS RYUKYU',
    'SABAH' => 'SABAH',
    'SAN MARINO' => 'SAN MARINO',
    'SAUDI ARABIA' => 'ARABIA SAUDITA',
    'SENEGAL' => 'SENEGAL',
    'SERBIA' => 'SERBIA',
    'SEYCHELLES' => 'SEYCHELLES',
    'SIERRA LEONE' => 'SIERRA LEONA',
    'SINGAPORE' => 'SINGAPUR',
    'SLOVAKIA' => 'ESLOVAQUIA',
    'SLOVENIA' => 'ESLOVENIA',
    'SOMALILIAND' => 'SOMALIA',
    'SOUTH AFRICA' => 'SUDÁFRICA',
    'SOUTH YEMEN' => 'YEMEN DEL SUR',
    'SPAIN' => 'ESPAÑA',
    'SPANISH SAHARA' => 'SAHARA ESPAÑOL',
    'SRI LANKA' => 'SRI LANKA',
    'ST. KITTS AND NEVIS' => 'SANTA KITTS Y NEVIS',
    'ST. LUCIA' => 'SANTA LUCÍA',
    'SUDAN' => 'SUDÁN',
    'SURINAM' => 'SURINAM',
    'SW AFRICA' => 'SW AFRICA',
    'SWAZILAND' => 'SWAZILAND',
    'SWEDEN' => 'SUECIA',
    'SWITZERLAND' => 'SUIZA',
    'SYRIA' => 'SIRIA',
    'TAIWAN' => 'TAIWÁN',
    'TAJIKISTAN' => 'TAJIKISTÁN',
    'TANZANIA' => 'TANZANIA',
    'THAILAND' => 'TAILANDIA',
    'TONGA' => 'TONGA',
    'TRINIDAD' => 'TRINIDAD',
    'TUNISIA' => 'TUNISIA',
    'TURKEY' => 'TURQUÍA',
    'UGANDA' => 'UGANDA',
    'UKRAINE' => 'UCRANIA',
    'UNITED ARAB EMIRATES' => 'EMIRATOS ÁRABES UNIDOS',
    'UNITED KINGDOM' => 'REINO UNIDO',
    'URUGUAY' => 'URUGUAY',
    'US PACIFIC ISLAND' => 'EE.UU. ISLA DEL PACIFICO',
    'US VIRGIN ISLANDS' => 'ISLAS VÍRGENES DE EE.UU.',
    'USA' => 'EE.UU.',
    'UZBEKISTAN' => 'OUZBEKISTAN',
    'VANUATU' => 'VANUATU',
    'VATICAN CITY' => 'CIUDAD DEL VATICANO',
    'VENEZUELA' => 'VENEZUELA',
    'VIETNAM' => 'VIETNAM',
    'WAKE ISLAND' => 'ISLA WAKE',
    'WEST INDIES' => 'INDIA OCCIDENTAL',
    'WESTERN SAHARA' => 'SAHARA OCCIDENTAL',
    'YEMEN' => 'YEMEN',
    'ZAIRE' => 'ZAIRE',
    'ZAMBIA' => 'ZAMBIA',
    'ZIMBABWE' => 'ZIMBABWE',
);

$app_list_strings['charset_dom'] = array(
    'BIG-5' => 'BIG-5 (Taiwan y Hong Kong)',
    /*'CP866'     => 'CP866', // ms-dos Cyrillic */
    /*'CP949'     => 'CP949 (Microsoft Korean)', */
    'CP1251' => 'CP1251 (Cirílico de MS)',
    'CP1252' => 'CP1252 (Europa occidental & EEUU de MS)',
    'EUC-CN' => 'EUC-CN (Chino simplificado GB2312)',
    'EUC-JP' => 'EUC-JP (Japonés Unix)',
    'EUC-KR' => 'EUC-KR (Coreano)',
    'EUC-TW' => 'EUC-TW (Taiwanés)',
    'ISO-2022-JP' => 'ISO-2022-JP (Japonés)',
    'ISO-2022-KR' => 'ISO-2022-KR (Coreano)',
    'ISO-8859-1' => 'ISO-8859-1 (Europa Occidental y EEUU)',
    'ISO-8859-2' => 'ISO-8859-2 (Europa central y Europa del Este)',
    'ISO-8859-3' => 'ISO-8859-3 (Latín 3)',
    'ISO-8859-4' => 'ISO-8859-4 (Latín 4)',
    'ISO-8859-5' => 'ISO-8859-5 (Cirílico)',
    'ISO-8859-6' => 'ISO-8859-6 (Árabe)',
    'ISO-8859-7' => 'ISO-8859-7 (Griego)',
    'ISO-8859-8' => 'ISO-8859-8 (Hebreo)',
    'ISO-8859-9' => 'ISO-8859-9 (Latín 5)',
    'ISO-8859-10' => 'ISO-8859-10 (Latín 6)',
    'ISO-8859-13' => 'ISO-8859-13 (Latín 7)',
    'ISO-8859-14' => 'ISO-8859-14 (Latín 8)',
    'ISO-8859-15' => 'ISO-8859-15 (Latín 9)',
    'KOI8-R' => 'KOI8-R (Cirílico Ruso)',
    'KOI8-U' => 'KOI8-U (Cirílico Ucraniano)',
    'SJIS' => 'SJIS (Japonés de MS)',
    'UTF-8' => 'UTF-8',
);

$app_list_strings['timezone_dom'] = array(

    'Africa/Algiers' => 'Africa/Algiers',
    'Africa/Luanda' => 'Africa/Luanda',
    'Africa/Porto-Novo' => 'Africa/Porto-Novo',
    'Africa/Gaborone' => 'Africa/Gaborone',
    'Africa/Ouagadougou' => 'Africa/Ouagadougou',
    'Africa/Bujumbura' => 'Africa/Bujumbura',
    'Africa/Douala' => 'Africa/Douala',
    'Atlantic/Cape_Verde' => 'Atlantic/Cape_Verde',
    'Africa/Bangui' => 'Africa/Bangui',
    'Africa/Ndjamena' => 'Africa/Ndjamena',
    'Indian/Comoro' => 'Indian/Comoro',
    'Africa/Kinshasa' => 'Africa/Kinshasa',
    'Africa/Lubumbashi' => 'Africa/Lubumbashi',
    'Africa/Brazzaville' => 'Africa/Brazzaville',
    'Africa/Abidjan' => 'Africa/Abidjan',
    'Africa/Djibouti' => 'Africa/Djibouti',
    'Africa/Cairo' => 'Africa/Cairo',
    'Africa/Malabo' => 'Africa/Malabo',
    'Africa/Asmera' => 'Africa/Asmera',
    'Africa/Addis_Ababa' => 'Africa/Addis_Ababa',
    'Africa/Libreville' => 'Africa/Libreville',
    'Africa/Banjul' => 'Africa/Banjul',
    'Africa/Accra' => 'Africa/Accra',
    'Africa/Conakry' => 'Africa/Conakry',
    'Africa/Bissau' => 'Africa/Bissau',
    'Africa/Nairobi' => 'Africa/Nairobi',
    'Africa/Maseru' => 'Africa/Maseru',
    'Africa/Monrovia' => 'Africa/Monrovia',
    'Africa/Tripoli' => 'Africa/Tripoli',
    'Indian/Antananarivo' => 'Indian/Antananarivo',
    'Africa/Blantyre' => 'Africa/Blantyre',
    'Africa/Bamako' => 'Africa/Bamako',
    'Africa/Nouakchott' => 'Africa/Nouakchott',
    'Indian/Mauritius' => 'Indian/Mauritius',
    'Indian/Mayotte' => 'Indian/Mayotte',
    'Africa/Casablanca' => 'Africa/Casablanca',
    'Africa/El_Aaiun' => 'Africa/El_Aaiun',
    'Africa/Maputo' => 'Africa/Maputo',
    'Africa/Windhoek' => 'Africa/Windhoek',
    'Africa/Niamey' => 'Africa/Niamey',
    'Africa/Lagos' => 'Africa/Lagos',
    'Indian/Reunion' => 'Indian/Reunion',
    'Africa/Kigali' => 'Africa/Kigali',
    'Atlantic/St_Helena' => 'Atlantic/St_Helena',
    'Africa/Sao_Tome' => 'Africa/Sao_Tome',
    'Africa/Dakar' => 'Africa/Dakar',
    'Indian/Mahe' => 'Indian/Mahe',
    'Africa/Freetown' => 'Africa/Freetown',
    'Africa/Mogadishu' => 'Africa/Mogadishu',
    'Africa/Johannesburg' => 'Africa/Johannesburg',
    'Africa/Khartoum' => 'Africa/Khartoum',
    'Africa/Mbabane' => 'Africa/Mbabane',
    'Africa/Dar_es_Salaam' => 'Africa/Dar_es_Salaam',
    'Africa/Lome' => 'Africa/Lome',
    'Africa/Tunis' => 'Africa/Tunis',
    'Africa/Kampala' => 'Africa/Kampala',
    'Africa/Lusaka' => 'Africa/Lusaka',
    'Africa/Harare' => 'Africa/Harare',
    'Antarctica/Casey' => 'Antarctica/Casey',
    'Antarctica/Davis' => 'Antarctica/Davis',
    'Antarctica/Mawson' => 'Antarctica/Mawson',
    'Indian/Kerguelen' => 'Indian/Kerguelen',
    'Antarctica/DumontDUrville' => 'Antarctica/DumontDUrville',
    'Antarctica/Syowa' => 'Antarctica/Syowa',
    'Antarctica/Vostok' => 'Antarctica/Vostok',
    'Antarctica/Rothera' => 'Antarctica/Rothera',
    'Antarctica/Palmer' => 'Antarctica/Palmer',
    'Antarctica/McMurdo' => 'Antarctica/McMurdo',
    'Asia/Kabul' => 'Asia/Kabul',
    'Asia/Yerevan' => 'Asia/Yerevan',
    'Asia/Baku' => 'Asia/Baku',
    'Asia/Bahrain' => 'Asia/Bahrain',
    'Asia/Dhaka' => 'Asia/Dhaka',
    'Asia/Thimphu' => 'Asia/Thimphu',
    'Indian/Chagos' => 'Indian/Chagos',
    'Asia/Brunei' => 'Asia/Brunei',
    'Asia/Rangoon' => 'Asia/Rangoon',
    'Asia/Phnom_Penh' => 'Asia/Phnom Penh',
    'Asia/Beijing' => 'Asia/Pékin',
    'Asia/Harbin' => 'Asia/Harbin',
    'Asia/Shanghai' => 'Asia/Shanghai',
    'Asia/Chongqing' => 'Asia/Chongqing',
    'Asia/Urumqi' => 'Asia/Urumqi',
    'Asia/Kashgar' => 'Asia/Kashgar',
    'Asia/Hong_Kong' => 'Asia/Hong Kong',
    'Asia/Taipei' => 'Asia/Taipei',
    'Asia/Macau' => 'Asia/Macau',
    'Asia/Nicosia' => 'Asia/Nicosia',
    'Asia/Tbilisi' => 'Asia/Tbilisi',
    'Asia/Dili' => 'Asia/Dili',
    'Asia/Calcutta' => 'Asia/Calcutta',
    'Asia/Jakarta' => 'Asia/Jakarta',
    'Asia/Pontianak' => 'Asia/Pontianak',
    'Asia/Makassar' => 'Asia/Makassar',
    'Asia/Jayapura' => 'Asia/Jayapura',
    'Asia/Tehran' => 'Asia/Tehran',
    'Asia/Baghdad' => 'Asia/Bagdad',
    'Asia/Jerusalem' => 'Asia/Jerusalem',
    'Asia/Tokyo' => 'Asia/Tokyo',
    'Asia/Amman' => 'Asia/Amman',
    'Asia/Almaty' => 'Asia/Almaty',
    'Asia/Qyzylorda' => 'Asia/Qyzylorda',
    'Asia/Aqtobe' => 'Asia/Aqtobe',
    'Asia/Aqtau' => 'Asia/Aqtau',
    'Asia/Oral' => 'Asia/Oral',
    'Asia/Bishkek' => 'Asia/Bishkek',
    'Asia/Seoul' => 'Asia/Seoul',
    'Asia/Pyongyang' => 'Asia/Pyongyang',
    'Asia/Kuwait' => 'Asia/Kuwait',
    'Asia/Vientiane' => 'Asia/Vientiane',
    'Asia/Beirut' => 'Asia/Beirut',
    'Asia/Kuala_Lumpur' => 'Asia/Kuala_Lumpur',
    'Asia/Kuching' => 'Asia/Kuching',
    'Indian/Maldives' => 'Indian/Maldives',
    'Asia/Hovd' => 'Asia/Hovd',
    'Asia/Ulaanbaatar' => 'Asia/Ulaanbaatar',
    'Asia/Choibalsan' => 'Asia/Choibalsan',
    'Asia/Katmandu' => 'Asia/Katmandu',
    'Asia/Muscat' => 'Asia/Muscat',
    'Asia/Karachi' => 'Asia/Karachi',
    'Asia/Gaza' => 'Asia/Gaza',
    'Asia/Manila' => 'Asia/Manila',
    'Asia/Qatar' => 'Asia/Qatar',
    'Asia/Riyadh' => 'Asia/Riyadh',
    'Asia/Singapore' => 'Asia/Singapore',
    'Asia/Colombo' => 'Asia/Colombo',
    'Asia/Damascus' => 'Asia/Damascus',
    'Asia/Dushanbe' => 'Asia/Dushanbe',
    'Asia/Bangkok' => 'Asia/Bangkok',
    'Asia/Ashgabat' => 'Asia/Ashgabat',
    'Asia/Dubai' => 'Asia/Dubai',
    'Asia/Samarkand' => 'Asia/Samarkand',
    'Asia/Tashkent' => 'Asia/Tashkent',
    'Asia/Saigon' => 'Asia/Saigon',
    'Asia/Aden' => 'Asia/Aden',
    'Australia/Darwin' => 'Australia/Darwin',
    'Australia/Perth' => 'Australia/Perth',
    'Australia/Brisbane' => 'Australia/Brisbane',
    'Australia/Lindeman' => 'Australia/Lindeman',
    'Australia/Adelaide' => 'Australia/Adelaide',
    'Australia/Hobart' => 'Australia/Hobart',
    'Australia/Currie' => 'Australia/Currie',
    'Australia/Melbourne' => 'Australia/Melbourne',
    'Australia/Sydney' => 'Australia/Sydney',
    'Australia/Broken_Hill' => 'Australia/Broken_Hill',
    'Indian/Christmas' => 'Indian/Christmas',
    'Pacific/Rarotonga' => 'Pacific/Rarotonga',
    'Indian/Cocos' => 'Indian/Cocos',
    'Pacific/Fiji' => 'Pacific/Fiji',
    'Pacific/Gambier' => 'Pacific/Gambier',
    'Pacific/Marquesas' => 'Pacific/Marquesas',
    'Pacific/Tahiti' => 'Pacific/Tahiti',
    'Pacific/Guam' => 'Pacific/Guam',
    'Pacific/Tarawa' => 'Pacific/Tarawa',
    'Pacific/Enderbury' => 'Pacific/Enderbury',
    'Pacific/Kiritimati' => 'Pacific/Kiritimati',
    'Pacific/Saipan' => 'Pacific/Saipan',
    'Pacific/Majuro' => 'Pacific/Majuro',
    'Pacific/Kwajalein' => 'Pacific/Kwajalein',
    'Pacific/Truk' => 'Pacific/Truk',
    'Pacific/Pohnpei' => 'Pacífico/Pohnpei',
    'Pacific/Kosrae' => 'Pacific/Kosrae',
    'Pacific/Nauru' => 'Pacific/Nauru',
    'Pacific/Noumea' => 'Pacific/Noumea',
    'Pacific/Auckland' => 'Pacific/Auckland',
    'Pacific/Chatham' => 'Pacific/Chatham',
    'Pacific/Niue' => 'Pacific/Niue',
    'Pacific/Norfolk' => 'Pacific/Norfolk',
    'Pacific/Palau' => 'Pacific/Palau',
    'Pacific/Port_Moresby' => 'Pacific/Port_Moresby',
    'Pacific/Pitcairn' => 'Pacific/Pitcairn',
    'Pacific/Pago_Pago' => 'Pacific/Pago_Pago',
    'Pacific/Apia' => 'Pacific/Apia',
    'Pacific/Guadalcanal' => 'Pacific/Guadalcanal',
    'Pacific/Fakaofo' => 'Pacific/Fakaofo',
    'Pacific/Tongatapu' => 'Pacific/Tongatapu',
    'Pacific/Funafuti' => 'Pacific/Funafuti',
    'Pacific/Johnston' => 'Pacific/Johnston',
    'Pacific/Midway' => 'Pacific/Midway',
    'Pacific/Wake' => 'Pacific/Wake',
    'Pacific/Efate' => 'Pacific/Efate',
    'Pacific/Wallis' => 'Pacific/Wallis',
    'Europe/London' => 'Europe/Londres',
    'Europe/Dublin' => 'Europe/Dublin',
    'WET' => 'WET',
    'CET' => 'CET',
    'MET' => 'MET',
    'EET' => 'EET',
    'Europe/Tirane' => 'Europe/Tirane',
    'Europe/Andorra' => 'Europa/Andorra',
    'Europe/Vienna' => 'Europa/Viena',
    'Europe/Minsk' => 'Europe/Minsk',
    'Europe/Brussels' => 'Europa/Bruselas',
    'Europe/Sofia' => 'Europe/Sofia',
    'Europe/Prague' => 'Europe/Prague',
    'Europe/Copenhagen' => 'Europe/Copenhagen',
    'Atlantic/Faeroe' => 'Atlantic/Faeroe',
    'America/Danmarkshavn' => 'America/Danmarkshavn',
    'America/Scoresbysund' => 'America/Scoresbysund',
    'America/Godthab' => 'America/Godthab',
    'America/Thule' => 'America/Thule',
    'Europe/Tallinn' => 'Europe/Tallinn',
    'Europe/Helsinki' => 'Europe/Helsinki',
    'Europe/Paris' => 'Europe/Paris',
    'Europe/Berlin' => 'Europe/Berlin',
    'Europe/Gibraltar' => 'Europe/Gibraltar',
    'Europe/Athens' => 'Europa/Atenas',
    'Europe/Budapest' => 'Europe/Budapest',
    'Atlantic/Reykjavik' => 'Atlantic/Reykjavik',
    'Europe/Rome' => 'Europe/Rome',
    'Europe/Riga' => 'Europe/Riga',
    'Europe/Vaduz' => 'Europe/Vaduz',
    'Europe/Vilnius' => 'Europe/Vilnius',
    'Europe/Luxembourg' => 'Europe/Luxembourg',
    'Europe/Malta' => 'Europa/Malta',
    'Europe/Chisinau' => 'Europe/Chisinau',
    'Europe/Monaco' => 'Europe/Monaco',
    'Europe/Amsterdam' => 'Europe/Amsterdam',
    'Europe/Oslo' => 'Europe/Oslo',
    'Europe/Warsaw' => 'Europa/Varsovia',
    'Europe/Lisbon' => 'Europa/Lisboa',
    'Atlantic/Azores' => 'Atlantic/Azores',
    'Atlantic/Madeira' => 'Atlantico/Madeira',
    'Europe/Bucharest' => 'Europa/Bucarest',
    'Europe/Kaliningrad' => 'Europe/Kaliningrad',
    'Europe/Moscow' => 'Europa/Moscú',
    'Europe/Samara' => 'Europe/Samara',
    'Asia/Yekaterinburg' => 'Asia/Yekaterinburg',
    'Asia/Omsk' => 'Asia/Omsk',
    'Asia/Novosibirsk' => 'Asia/Novosibirsk',
    'Asia/Krasnoyarsk' => 'Asia/Krasnoyarsk',
    'Asia/Irkutsk' => 'Asia/Irkutsk',
    'Asia/Yakutsk' => 'Asia/Yakutsk',
    'Asia/Vladivostok' => 'Asia/Vladivostok',
    'Asia/Sakhalin' => 'Asia/Sakhalin',
    'Asia/Magadan' => 'Asia/Magadan',
    'Asia/Kamchatka' => 'Asia/Kamchatka',
    'Asia/Anadyr' => 'Asia/Anadyr',
    'Europe/Belgrade' => 'Europe/Belgrade',
    'Europe/Madrid' => 'Europe/Madrid',
    'Africa/Ceuta' => 'Africa/Ceuta',
    'Atlantic/Canary' => 'Atlantic/Canary',
    'Europe/Stockholm' => 'Europe/Stockholm',
    'Europe/Zurich' => 'Europe/Zurich',
    'Europe/Istanbul' => 'Europe/Istanbul',
    'Europe/Kiev' => 'Europe/Kiev',
    'Europe/Uzhgorod' => 'Europe/Uzhgorod',
    'Europe/Zaporozhye' => 'Europe/Zaporozhye',
    'Europe/Simferopol' => 'Europe/Simferopol',
    'America/New_York' => 'America/New_York',
    'America/Chicago' => 'America/Chicago',
    'America/North_Dakota/Center' => 'America/North_Dakota/Center',
    'America/Denver' => 'America/Denver',
    'America/Los_Angeles' => 'America/Los_Angeles',
    'America/Juneau' => 'America/Juneau',
    'America/Yakutat' => 'America/Yakutat',
    'America/Anchorage' => 'America/Anchorage',
    'America/Nome' => 'America/Nome',
    'America/Adak' => 'America/Adak',
    'Pacific/Honolulu' => 'Pacific/Honolulu',
    'America/Phoenix' => 'America/Phoenix',
    'America/Boise' => 'America/Boise',
    'America/Indiana/Indianapolis' => 'America/Indiana/Indianapolis',
    'America/Indiana/Marengo' => 'America/Indiana/Marengo',
    'America/Indiana/Knox' => 'America/Indiana/Knox',
    'America/Indiana/Vevay' => 'America/Indiana/Vevay',
    'America/Kentucky/Louisville' => 'America/Kentucky/Louisville',
    'America/Kentucky/Monticello' => 'America/Kentucky/Monticello',
    'America/Detroit' => 'America/Detroit',
    'America/Menominee' => 'America/Menominee',
    'America/St_Johns' => 'America/St_Johns',
    'America/Goose_Bay' => 'America/Goose_Bay',
    'America/Halifax' => 'America/Halifax',
    'America/Glace_Bay' => 'America/Glace_Bay',
    'America/Montreal' => 'America/Montreal',
    'America/Toronto' => 'America/Toronto',
    'America/Thunder_Bay' => 'America/Thunder_Bay',
    'America/Nipigon' => 'America/Nipigon',
    'America/Rainy_River' => 'America/Rainy_River',
    'America/Winnipeg' => 'America/Winnipeg',
    'America/Regina' => 'America/Regina',
    'America/Swift_Current' => 'America/Swift_Current',
    'America/Edmonton' => 'America/Edmonton',
    'America/Vancouver' => 'America/Vancouver',
    'America/Dawson_Creek' => 'America/Dawson_Creek',
    'America/Pangnirtung' => 'America/Pangnirtung',
    'America/Iqaluit' => 'America/Iqaluit',
    'America/Coral_Harbour' => 'America/Coral_Harbour',
    'America/Rankin_Inlet' => 'America/Rankin_Inlet',
    'America/Cambridge_Bay' => 'America/Cambridge_Bay',
    'America/Yellowknife' => 'America/Yellowknife',
    'America/Inuvik' => 'America/Inuvik',
    'America/Whitehorse' => 'America/Whitehorse',
    'America/Dawson' => 'America/Dawson',
    'America/Cancun' => 'America/Cancun',
    'America/Merida' => 'America/Merida',
    'America/Monterrey' => 'America/Monterrey',
    'America/Mexico_City' => 'America/Mexico_City',
    'America/Chihuahua' => 'America/Chihuahua',
    'America/Hermosillo' => 'America/Hermosillo',
    'America/Mazatlan' => 'America/Mazatlan',
    'America/Tijuana' => 'America/Tijuana',
    'America/Anguilla' => 'America/Anguilla',
    'America/Antigua' => 'America/Antigua',
    'America/Nassau' => 'America/Nassau',
    'America/Barbados' => 'America/Barbados',
    'America/Belize' => 'America/Belize',
    'Atlantic/Bermuda' => 'Atlantic/Bermuda',
    'America/Cayman' => 'America/Cayman',
    'America/Costa_Rica' => 'America/Costa_Rica',
    'America/Havana' => 'America/Havana',
    'America/Dominica' => 'America/Dominica',
    'America/Santo_Domingo' => 'America/Santo_Domingo',
    'America/El_Salvador' => 'America/El_Salvador',
    'America/Grenada' => 'America/Grenada',
    'America/Guadeloupe' => 'America/Guadeloupe',
    'America/Guatemala' => 'America/Guatemala',
    'America/Port-au-Prince' => 'America/Port-au-Prince',
    'America/Tegucigalpa' => 'America/Tegucigalpa',
    'America/Jamaica' => 'America/Jamaica',
    'America/Martinique' => 'America/Martinique',
    'America/Montserrat' => 'America/Montserrat',
    'America/Managua' => 'America/Managua',
    'America/Panama' => 'America/Panama',
    'America/Puerto_Rico' => 'America/Puerto_Rico',
    'America/St_Kitts' => 'America/St_Kitts',
    'America/St_Lucia' => 'America/St_Lucia',
    'America/Miquelon' => 'America/Miquelon',
    'America/St_Vincent' => 'America/St_Vincent',
    'America/Grand_Turk' => 'America/Grand_Turk',
    'America/Tortola' => 'America/Tortola',
    'America/St_Thomas' => 'America/St_Thomas',
    'America/Argentina/Buenos_Aires' => 'America/Argentina/Buenos_Aires',
    'America/Argentina/Cordoba' => 'America/Argentina/Cordoba',
    'America/Argentina/Tucuman' => 'America/Argentina/Tucuman',
    'America/Argentina/La_Rioja' => 'America/Argentina/La_Rioja',
    'America/Argentina/San_Juan' => 'America/Argentina/San_Juan',
    'America/Argentina/Jujuy' => 'America/Argentina/Jujuy',
    'America/Argentina/Catamarca' => 'America/Argentina/Catamarca',
    'America/Argentina/Mendoza' => 'America/Argentina/Mendoza',
    'America/Argentina/Rio_Gallegos' => 'America/Argentina/Rio_Gallegos',
    'America/Argentina/Ushuaia' => 'America/Argentina/Ushuaia',
    'America/Aruba' => 'America/Aruba',
    'America/La_Paz' => 'America/La_Paz',
    'America/Noronha' => 'America/Noronha',
    'America/Belem' => 'America/Belem',
    'America/Fortaleza' => 'America/Fortaleza',
    'America/Recife' => 'America/Recife',
    'America/Araguaina' => 'America/Araguaina',
    'America/Maceio' => 'America/Maceio',
    'America/Bahia' => 'America/Bahia',
    'America/Sao_Paulo' => 'America/Sao_Paulo',
    'America/Campo_Grande' => 'America/Campo_Grande',
    'America/Cuiaba' => 'America/Cuiaba',
    'America/Porto_Velho' => 'America/Porto_Velho',
    'America/Boa_Vista' => 'America/Boa_Vista',
    'America/Manaus' => 'America/Manaus',
    'America/Eirunepe' => 'America/Eirunepe',
    'America/Rio_Branco' => 'America/Rio_Branco',
    'America/Santiago' => 'America/Santiago',
    'Pacific/Easter' => 'Pacific/Easter',
    'America/Bogota' => 'America/Bogota',
    'America/Curacao' => 'America/Curacao',
    'America/Guayaquil' => 'America/Guayaquil',
    'Pacific/Galapagos' => 'Pacific/Galapagos',
    'Atlantic/Stanley' => 'Atlantic/Stanley',
    'America/Cayenne' => 'America/Cayenne',
    'America/Guyana' => 'America/Guyana',
    'America/Asuncion' => 'America/Asuncion',
    'America/Lima' => 'America/Lima',
    'Atlantic/South_Georgia' => 'Atlantic/South_Georgia',
    'America/Paramaribo' => 'America/Paramaribo',
    'America/Port_of_Spain' => 'America/Port_of_Spain',
    'America/Montevideo' => 'America/Montevideo',
    'America/Caracas' => 'America/Caracas',
);

$app_list_strings['eapm_list'] = array(
    'Sugar' => 'SuiteCRM',
    'WebEx' => 'WebEx',
    'GoToMeeting' => 'GoToMeeting',
    'IBMSmartCloud' => 'IBM SmartCloud',
    'Google' => 'Google',
    'Box' => 'Box.net',
    'Facebook' => 'Facebook',
    'Twitter' => 'Twitter',
);
$app_list_strings['eapm_list_import'] = array(
    'Google' => 'Contactos de Google',
);
$app_list_strings['eapm_list_documents'] = array(
    'Google' => 'Documentos de Google',
);
$app_list_strings['token_status'] = array(
    1 => 'Solicitud',
    2 => 'Acceso',
    3 => 'Invalid',
);

$app_list_strings ['emailTemplates_type_list'] = array(
    '' => '',
    'campaign' => 'Campaña',
    'email' => 'Email',
    'event' => 'Event',
);

$app_list_strings ['emailTemplates_type_list_campaigns'] = array(
    '' => '',
    'campaign' => 'Campaña',
);

$app_list_strings ['emailTemplates_type_list_no_workflow'] = array(
    '' => '',
    'campaign' => 'Campaña',
    'email' => 'Email',
    'event' => 'Event',
    'system' => 'System',
);

// knowledge base
$app_list_strings['moduleList']['AOK_KnowledgeBase'] = 'Base de Conocimiento';
$app_list_strings['moduleList']['AOK_Knowledge_Base_Categories'] = 'Base de conocimiento - Categorías';
$app_list_strings['aok_status_list']['Draft'] = 'Draft';
$app_list_strings['aok_status_list']['Expired'] = 'Expired';
$app_list_strings['aok_status_list']['In_Review'] = 'In Review';
//$app_list_strings['aok_status_list']['Published'] = 'Published';
$app_list_strings['aok_status_list']['published_private'] = 'Privado';
$app_list_strings['aok_status_list']['published_public'] = 'Público';

$app_list_strings['moduleList']['FP_events'] = 'Eventos';
$app_list_strings['moduleList']['FP_Event_Locations'] = 'Ubicaciones';

//events
$app_list_strings['fp_event_invite_status_dom']['Invited'] = 'Invitado';
$app_list_strings['fp_event_invite_status_dom']['Not Invited'] = 'No Invitado';
$app_list_strings['fp_event_invite_status_dom']['Attended'] = 'Atendido';
$app_list_strings['fp_event_invite_status_dom']['Not Attended'] = 'No Atendido';
$app_list_strings['fp_event_status_dom']['Accepted'] = 'Accepted';
$app_list_strings['fp_event_status_dom']['Declined'] = 'Rechazado';
$app_list_strings['fp_event_status_dom']['No Response'] = 'Sin Respuesta';

$app_strings['LBL_STATUS_EVENT'] = 'Estado de Invitación';
$app_strings['LBL_ACCEPT_STATUS'] = 'Estado de aceptación';
$app_strings['LBL_LISTVIEW_OPTION_CURRENT'] = 'Seleccionar Página Actual';
$app_strings['LBL_LISTVIEW_OPTION_ENTIRE'] = 'Seleccionar Todo';
$app_strings['LBL_LISTVIEW_NONE'] = 'Quitar Selección';

$app_list_strings['moduleList']['AOP_Case_Events'] = 'Eventos de Casos';
$app_list_strings['moduleList']['AOP_Case_Updates'] = 'Actualizaciones de Casos';
$app_strings['LBL_AOP_EMAIL_REPLY_DELIMITER'] = '========== Por favor, responda por encima de esta linea ==========';

//aop
$app_list_strings['case_state_default_key'] = 'Abierto';
$app_list_strings['case_state_dom'] =
    array(
        'Open' => 'Abierto',
        'Closed' => 'Closed',
    );
$app_list_strings['case_status_default_key'] = 'Open_New';
$app_list_strings['case_status_dom'] =
    array(
        'Open_New' => 'New',
        'Open_Assigned' => 'Assigned',
        'Closed_Closed' => 'Closed',
        'Open_Pending Input' => 'Pending Input',
        'Closed_Rejected' => 'Rejected',
        'Closed_Duplicate' => 'Duplicate',
    );
$app_list_strings['contact_portal_user_type_dom'] =
    array(
        'Single' => 'Usuario Simple',
        'Account' => 'Cuenta de Usuario',
    );
$app_list_strings['dom_email_distribution_for_auto_create'] = array(
    'AOPDefault' => 'Predeterminado en el sistema',
    'singleUser' => 'Usuario Simple',
    'roundRobin' => 'Round-Robin',
    'leastBusy' => 'Menos-Ocupado',
    'random' => 'Aleatorio',
);

//aor
$app_list_strings['moduleList']['AOR_Reports'] = 'Reportes';
$app_list_strings['moduleList']['AOR_Conditions'] = 'Reportes Condiciones';
$app_list_strings['moduleList']['AOR_Charts'] = 'Gráficos de informe';
$app_list_strings['moduleList']['AOR_Fields'] = 'Reportes de Campos';
$app_list_strings['moduleList']['AOR_Scheduled_Reports'] = 'Reportes Programados';
$app_list_strings['aor_operator_list']['Equal_To'] = 'Igual a';
$app_list_strings['aor_operator_list']['Not_Equal_To'] = 'No igual a';
$app_list_strings['aor_operator_list']['Greater_Than'] = 'Greater Than';
$app_list_strings['aor_operator_list']['Less_Than'] = 'Less Than';
$app_list_strings['aor_operator_list']['Greater_Than_or_Equal_To'] = 'Mayor que o igual a';
$app_list_strings['aor_operator_list']['Less_Than_or_Equal_To'] = 'Menor que o igual a';
$app_list_strings['aor_operator_list']['Contains'] = 'Contains';
$app_list_strings['aor_operator_list']['Starts_With'] = 'Comienza con';
$app_list_strings['aor_operator_list']['Ends_With'] = 'Termina con';
$app_list_strings['aor_format_options'][''] = '';
$app_list_strings['aor_format_options']['Y-m-d'] = 'A-m-d';
$app_list_strings['aor_format_options']['m-d-Y'] = 'm-d-Y';
$app_list_strings['aor_format_options']['d-m-Y'] = 'd-m-Y';
$app_list_strings['aor_format_options']['Y/m/d'] = 'Y/m/d';
$app_list_strings['aor_format_options']['m/d/Y'] = 'm/d/Y';
$app_list_strings['aor_format_options']['d/m/Y'] = 'd/m/A';
$app_list_strings['aor_format_options']['Y.m.d'] = 'Y.m.d';
$app_list_strings['aor_format_options']['m.d.Y'] = 'm.d.Y';
$app_list_strings['aor_format_options']['d.m.Y'] = 'd.m.Y';
$app_list_strings['aor_format_options']['Ymd'] = 'Amd';
$app_list_strings['aor_format_options']['Y-m'] = 'A-m';
$app_list_strings['aor_format_options']['Y'] = 'A';
$app_list_strings['aor_condition_operator_list']['And'] = 'And';
$app_list_strings['aor_condition_operator_list']['OR'] = 'OR';
$app_list_strings['aor_condition_type_list']['Value'] = 'Valor';
$app_list_strings['aor_condition_type_list']['Field'] = 'Campo';
$app_list_strings['aor_condition_type_list']['Date'] = 'Date';
$app_list_strings['aor_condition_type_list']['Multi'] = 'Uno de';
$app_list_strings['aor_condition_type_list']['Period'] = 'Periodo';
$app_list_strings['aor_condition_type_list']['CurrentUserID'] = 'Usuario Actual';
$app_list_strings['aor_date_type_list'][''] = '';
$app_list_strings['aor_date_type_list']['minute'] = 'Minutes';
$app_list_strings['aor_date_type_list']['hour'] = 'Hours';
$app_list_strings['aor_date_type_list']['day'] = 'Days';
$app_list_strings['aor_date_type_list']['week'] = 'Semanas';
$app_list_strings['aor_date_type_list']['month'] = 'Meses';
$app_list_strings['aor_date_type_list']['business_hours'] = 'Horas de Oficina';
$app_list_strings['aor_date_options']['now'] = 'Nuevo';
$app_list_strings['aor_date_options']['field'] = 'Este Campo';
$app_list_strings['aor_date_operator']['now'] = '';
$app_list_strings['aor_date_operator']['plus'] = '+';
$app_list_strings['aor_date_operator']['minus'] = '-';
$app_list_strings['aor_sort_operator'][''] = '';
$app_list_strings['aor_sort_operator']['ASC'] = 'Orden ascendente';
$app_list_strings['aor_sort_operator']['DESC'] = 'Descendente';
$app_list_strings['aor_function_list'][''] = '';
$app_list_strings['aor_function_list']['COUNT'] = 'Total';
$app_list_strings['aor_function_list']['MIN'] = 'Mínimo';
$app_list_strings['aor_function_list']['MAX'] = 'Máximo';
$app_list_strings['aor_function_list']['SUM'] = 'Suma';
$app_list_strings['aor_function_list']['AVG'] = 'Promedio';
$app_list_strings['aor_total_options'][''] = '';
$app_list_strings['aor_total_options']['COUNT'] = 'Count';
$app_list_strings['aor_total_options']['SUM'] = 'Sum';
$app_list_strings['aor_total_options']['AVG'] = 'Average';
$app_list_strings['aor_chart_types']['bar'] = 'Gráfico de Barras';
$app_list_strings['aor_chart_types']['line'] = 'Gráfico de Lineas';
$app_list_strings['aor_chart_types']['pie'] = 'Gráfico circular';
$app_list_strings['aor_chart_types']['radar'] = 'Gráfico Radial';
$app_list_strings['aor_chart_types']['stacked_bar'] = 'Barra Apilada';
$app_list_strings['aor_chart_types']['grouped_bar'] = 'Barra Agrupada';
$app_list_strings['aor_scheduled_report_schedule_types']['monthly'] = 'Monthly';
$app_list_strings['aor_scheduled_report_schedule_types']['weekly'] = 'Weekly';
$app_list_strings['aor_scheduled_report_schedule_types']['daily'] = 'Daily';
$app_list_strings['aor_scheduled_reports_status_dom']['active'] = 'Active';
$app_list_strings['aor_scheduled_reports_status_dom']['inactive'] = 'Inactive';
$app_list_strings['aor_email_type_list']['Email Address'] = 'Email';
$app_list_strings['aor_email_type_list']['Specify User'] = 'Usuario';
$app_list_strings['aor_email_type_list']['Users'] = 'Usuarios';
$app_list_strings['aor_assign_options']['all'] = 'TODOS los usuarios';
$app_list_strings['aor_assign_options']['role'] = 'TODOS los usuarios en rol';
$app_list_strings['aor_assign_options']['security_group'] = 'TODOS los usuarios en grupo seguridad';
$app_list_strings['date_time_period_list']['today'] = 'Today';
$app_list_strings['date_time_period_list']['yesterday'] = 'Ayer';
$app_list_strings['date_time_period_list']['this_week'] = 'Esta Semana';
$app_list_strings['date_time_period_list']['last_week'] = 'Última semana';
$app_list_strings['date_time_period_list']['last_month'] = 'Last Month';
$app_list_strings['date_time_period_list']['this_month'] = 'This Month';
$app_list_strings['date_time_period_list']['this_quarter'] = 'Este trimestre';
$app_list_strings['date_time_period_list']['last_quarter'] = 'Último trimestre';
$app_list_strings['date_time_period_list']['this_year'] = 'Este Año';
$app_list_strings['date_time_period_list']['last_year'] = 'Último Año';
$app_strings['LBL_CRON_ON_THE_MONTHDAY'] = 'en el';
$app_strings['LBL_CRON_ON_THE_WEEKDAY'] = 'en';
$app_strings['LBL_CRON_AT'] = 'hasta';
$app_strings['LBL_CRON_RAW'] = 'Avanzado';
$app_strings['LBL_CRON_MIN'] = 'Minuto';
$app_strings['LBL_CRON_HOUR'] = 'Hora';
$app_strings['LBL_CRON_DAY'] = 'Día';
$app_strings['LBL_CRON_MONTH'] = 'Mes';
$app_strings['LBL_CRON_DOW'] = 'DOW';
$app_strings['LBL_CRON_DAILY'] = 'Daily';
$app_strings['LBL_CRON_WEEKLY'] = 'Weekly';
$app_strings['LBL_CRON_MONTHLY'] = 'Monthly';

//aos
$app_list_strings['moduleList']['AOS_Contracts'] = 'Contracts';
$app_list_strings['moduleList']['AOS_Invoices'] = 'Invoices';
$app_list_strings['moduleList']['AOS_PDF_Templates'] = 'PDF - Plantillas';
$app_list_strings['moduleList']['AOS_Product_Categories'] = 'Productos - Categorías';
$app_list_strings['moduleList']['AOS_Products'] = 'Products';
$app_list_strings['moduleList']['AOS_Products_Quotes'] = 'Items por linea';
$app_list_strings['moduleList']['AOS_Line_Item_Groups'] = 'Items por Linea agrupados';
$app_list_strings['moduleList']['AOS_Quotes'] = 'Presupuestos';
$app_list_strings['aos_quotes_type_dom'][''] = '';
$app_list_strings['aos_quotes_type_dom']['Analyst'] = 'Analyst';
$app_list_strings['aos_quotes_type_dom']['Competitor'] = 'Competitor';
$app_list_strings['aos_quotes_type_dom']['Customer'] = 'Customer';
$app_list_strings['aos_quotes_type_dom']['Integrator'] = 'Integrator';
$app_list_strings['aos_quotes_type_dom']['Investor'] = 'Inversor';
$app_list_strings['aos_quotes_type_dom']['Partner'] = 'Socio';
$app_list_strings['aos_quotes_type_dom']['Press'] = 'Press';
$app_list_strings['aos_quotes_type_dom']['Prospect'] = 'Prospect';
$app_list_strings['aos_quotes_type_dom']['Reseller'] = 'Reseller';
$app_list_strings['aos_quotes_type_dom']['Other'] = 'Other';
$app_list_strings['template_ddown_c_list'][''] = '';
$app_list_strings['quote_stage_dom']['Draft'] = 'Draft';
$app_list_strings['quote_stage_dom']['Negotiation'] = 'Negociación';
$app_list_strings['quote_stage_dom']['Delivered'] = 'Enviado';
$app_list_strings['quote_stage_dom']['On Hold'] = 'On Hold';
$app_list_strings['quote_stage_dom']['Confirmed'] = 'Confirmado';
$app_list_strings['quote_stage_dom']['Closed Accepted'] = 'Cerrado aceptado';
$app_list_strings['quote_stage_dom']['Closed Lost'] = 'Closed Lost';
$app_list_strings['quote_stage_dom']['Closed Dead'] = 'Cerrado abandonado';
$app_list_strings['quote_term_dom']['Net 15'] = 'Neto 15';
$app_list_strings['quote_term_dom']['Net 30'] = 'Neto 30';
$app_list_strings['quote_term_dom'][''] = '';
$app_list_strings['approval_status_dom']['Approved'] = 'Aprobado';
$app_list_strings['approval_status_dom']['Not Approved'] = 'No Aprobado';
$app_list_strings['approval_status_dom'][''] = '';
$app_list_strings['vat_list']['0.0'] = '0%';
$app_list_strings['vat_list']['5.0'] = '5%';
$app_list_strings['vat_list']['7.5'] = '7,5%';
$app_list_strings['vat_list']['17.5'] = '17,5%';
$app_list_strings['vat_list']['20.0'] = '20%';
$app_list_strings['discount_list']['Percentage'] = 'Pct';
$app_list_strings['discount_list']['Amount'] = 'Amt';
$app_list_strings['aos_invoices_type_dom'][''] = '';
$app_list_strings['aos_invoices_type_dom']['Analyst'] = 'Analyst';
$app_list_strings['aos_invoices_type_dom']['Competitor'] = 'Competitor';
$app_list_strings['aos_invoices_type_dom']['Customer'] = 'Customer';
$app_list_strings['aos_invoices_type_dom']['Integrator'] = 'Integrator';
$app_list_strings['aos_invoices_type_dom']['Investor'] = 'Inversor';
$app_list_strings['aos_invoices_type_dom']['Partner'] = 'Socio';
$app_list_strings['aos_invoices_type_dom']['Press'] = 'Press';
$app_list_strings['aos_invoices_type_dom']['Prospect'] = 'Prospect';
$app_list_strings['aos_invoices_type_dom']['Reseller'] = 'Reseller';
$app_list_strings['aos_invoices_type_dom']['Other'] = 'Other';
$app_list_strings['invoice_status_dom']['Paid'] = 'Pagado';
$app_list_strings['invoice_status_dom']['Unpaid'] = 'Impago';
$app_list_strings['invoice_status_dom']['Cancelled'] = 'Cancelado';
$app_list_strings['invoice_status_dom'][''] = '';
$app_list_strings['quote_invoice_status_dom']['Not Invoiced'] = 'No Facturado';
$app_list_strings['quote_invoice_status_dom']['Invoiced'] = 'Facturado';
$app_list_strings['product_code_dom']['XXXX'] = 'XXXX';
$app_list_strings['product_code_dom']['YYYY'] = 'YYYY';
$app_list_strings['product_category_dom']['Laptops'] = 'Portátiles';
$app_list_strings['product_category_dom']['Desktops'] = 'Escritorios';
$app_list_strings['product_category_dom'][''] = '';
$app_list_strings['product_type_dom']['Good'] = 'Bien';
$app_list_strings['product_type_dom']['Service'] = 'Service';
$app_list_strings['product_quote_parent_type_dom']['AOS_Quotes'] = 'Presupuestos';
$app_list_strings['product_quote_parent_type_dom']['AOS_Invoices'] = 'Invoices';
$app_list_strings['product_quote_parent_type_dom']['AOS_Contracts'] = 'Contracts';
$app_list_strings['pdf_template_type_dom']['AOS_Quotes'] = 'Presupuestos';
$app_list_strings['pdf_template_type_dom']['AOS_Invoices'] = 'Invoices';
$app_list_strings['pdf_template_type_dom']['AOS_Contracts'] = 'Contracts';
$app_list_strings['pdf_template_type_dom']['Accounts'] = 'Cuentas';
$app_list_strings['pdf_template_type_dom']['Contacts'] = 'Contactos';
$app_list_strings['pdf_template_type_dom']['Leads'] = 'Leads';
$app_list_strings['pdf_template_sample_dom'][''] = '';
$app_list_strings['contract_status_list']['Not Started'] = 'Not Started';
$app_list_strings['contract_status_list']['In Progress'] = 'In Progress';
$app_list_strings['contract_status_list']['Signed'] = 'Firmado';
$app_list_strings['contract_type_list']['Type'] = 'Tipo';
$app_strings['LBL_PRINT_AS_PDF'] = 'Imprimir como PDF';
$app_strings['LBL_SELECT_TEMPLATE'] = 'Por favor seleccionar plantilla';
$app_string['LBL_PDF_GENERATION_FAILED'] = 'Unable to generate PDF document. See logs for more info.';
$app_strings['LBL_NO_TEMPLATE'] = 'ERROR\nPlantilla No encontrada.\nPor favor ver módulo plantillas PDF y crear una';

//aow
$app_list_strings['moduleList']['AOW_WorkFlow'] = 'Flujo de Trabajo';
$app_list_strings['moduleList']['AOW_Conditions'] = 'Condiciones de Flujo de Trabajo';
$app_list_strings['moduleList']['AOW_Processed'] = 'Auditoría de Procesos';
$app_list_strings['moduleList']['AOW_Actions'] = 'Acciones del Flujo de Trabajo';
$app_list_strings['aow_status_list']['Active'] = 'Active';
$app_list_strings['aow_status_list']['Inactive'] = 'Inactive';
$app_list_strings['aow_operator_list']['Equal_To'] = 'Equal To';
$app_list_strings['aow_operator_list']['Not_Equal_To'] = 'Not Equal To';
$app_list_strings['aow_operator_list']['Greater_Than'] = 'Greater Than';
$app_list_strings['aow_operator_list']['Less_Than'] = 'Less Than';
$app_list_strings['aow_operator_list']['Greater_Than_or_Equal_To'] = 'Greater Than or Equal To';
$app_list_strings['aow_operator_list']['Less_Than_or_Equal_To'] = 'Less Than or Equal To';
$app_list_strings['aow_operator_list']['Contains'] = 'Contains';
$app_list_strings['aow_operator_list']['Starts_With'] = 'Comienza con';
$app_list_strings['aow_operator_list']['Ends_With'] = 'Ends With';
$app_list_strings['aow_operator_list']['is_null'] = 'Es nulo';
$app_list_strings['aow_process_status_list']['Complete'] = 'Complete';
$app_list_strings['aow_process_status_list']['Running'] = 'En proceso';
$app_list_strings['aow_process_status_list']['Pending'] = 'Pending';
$app_list_strings['aow_process_status_list']['Failed'] = 'Failed';
$app_list_strings['aow_condition_operator_list']['And'] = 'And';
$app_list_strings['aow_condition_operator_list']['OR'] = 'OR';
$app_list_strings['aow_condition_type_list']['Value'] = 'Value';
$app_list_strings['aow_condition_type_list']['Field'] = 'Field';
$app_list_strings['aow_condition_type_list']['Any_Change'] = 'Algún cambio';
$app_list_strings['aow_condition_type_list']['SecurityGroup'] = 'En SecurityGroup';
$app_list_strings['aow_condition_type_list']['Date'] = 'Date';
$app_list_strings['aow_condition_type_list']['Multi'] = 'One of';
$app_list_strings['aow_action_type_list']['Value'] = 'Value';
$app_list_strings['aow_action_type_list']['Field'] = 'Field';
$app_list_strings['aow_action_type_list']['Date'] = 'Date';
$app_list_strings['aow_action_type_list']['Round_Robin'] = 'Turno Rotatorio';
$app_list_strings['aow_action_type_list']['Least_Busy'] = 'Menos Ocupado';
$app_list_strings['aow_action_type_list']['Random'] = 'Random';
$app_list_strings['aow_rel_action_type_list']['Value'] = 'Value';
$app_list_strings['aow_rel_action_type_list']['Field'] = 'Field';
$app_list_strings['aow_date_type_list'][''] = '';
$app_list_strings['aow_date_type_list']['minute'] = 'Minutes';
$app_list_strings['aow_date_type_list']['hour'] = 'Hours';
$app_list_strings['aow_date_type_list']['day'] = 'Days';
$app_list_strings['aow_date_type_list']['week'] = 'Weeks';
$app_list_strings['aow_date_type_list']['month'] = 'Months';
$app_list_strings['aow_date_type_list']['year'] = 'Años';
$app_list_strings['aow_date_type_list']['business_hours'] = 'Horarios';
$app_list_strings['aow_date_options']['now'] = 'Now';
$app_list_strings['aow_date_options']['today'] = 'Today';
$app_list_strings['aow_date_options']['field'] = 'This Field';
$app_list_strings['aow_date_operator']['now'] = '';
$app_list_strings['aow_date_operator']['plus'] = '+';
$app_list_strings['aow_date_operator']['minus'] = '-';
$app_list_strings['aow_assign_options']['all'] = 'ALL Users';
$app_list_strings['aow_assign_options']['role'] = 'ALL Users in Role';
$app_list_strings['aow_assign_options']['security_group'] = 'ALL Users in Security Group';
$app_list_strings['aow_email_type_list']['Email Address'] = 'Email';
$app_list_strings['aow_email_type_list']['Record Email'] = 'Registro de Correo Electrónico';
$app_list_strings['aow_email_type_list']['Related Field'] = 'Campo Relacionado';
$app_list_strings['aow_email_type_list']['Specify User'] = 'Usuario';
$app_list_strings['aow_email_type_list']['Users'] = 'Usuarios';
$app_list_strings['aow_email_to_list']['to'] = 'To';
$app_list_strings['aow_email_to_list']['cc'] = 'Cc';
$app_list_strings['aow_email_to_list']['bcc'] = 'Cco';
$app_list_strings['aow_run_on_list']['All_Records'] = 'Todos los Registros';
$app_list_strings['aow_run_on_list']['New_Records'] = 'Nuevos Registros';
$app_list_strings['aow_run_on_list']['Modified_Records'] = 'Registros Modificados';
$app_list_strings['aow_run_when_list']['Always'] = 'Siempre';
$app_list_strings['aow_run_when_list']['On_Save'] = 'Sólo al Guardar';
$app_list_strings['aow_run_when_list']['In_Scheduler'] = 'Sólo en la Programación';

//gant
$app_list_strings['moduleList']['AM_ProjectTemplates'] = 'Proyectos - Plantillas';
$app_list_strings['moduleList']['AM_TaskTemplates'] = 'Plantillas de Tareas de Proyecto';
$app_list_strings['relationship_type_list']['FS'] = 'Finalizar para iniciar';
$app_list_strings['relationship_type_list']['SS'] = 'Iniciar para iniciar';
$app_list_strings['duration_unit_dom']['Days'] = 'Days';
$app_list_strings['duration_unit_dom']['Hours'] = 'Hours';
$app_strings['LBL_GANTT_BUTTON_LABEL'] = 'Vista de Gantt';
$app_strings['LBL_DETAIL_BUTTON_LABEL'] = 'Ver Detalle';
$app_strings['LBL_CREATE_PROJECT'] = 'Crear proyecto';

//gmaps
$app_strings['LBL_MAP'] = 'Mapa';

$app_strings['LBL_JJWG_MAPS_LNG'] = 'Longitud';
$app_strings['LBL_JJWG_MAPS_LAT'] = 'Latitud';
$app_strings['LBL_JJWG_MAPS_GEOCODE_STATUS'] = 'Estado del Código Geográfico';
$app_strings['LBL_JJWG_MAPS_ADDRESS'] = 'Address';

$app_list_strings['moduleList']['jjwg_Maps'] = 'Mapas';
$app_list_strings['moduleList']['jjwg_Markers'] = 'Mapas - marcadores';
$app_list_strings['moduleList']['jjwg_Areas'] = 'Mapas - Áreas';
$app_list_strings['moduleList']['jjwg_Address_Cache'] = 'Mapas - Caché de Direcciones';

$app_list_strings['moduleList']['jjwp_Partners'] = 'Socios JJWP';

$app_list_strings['map_unit_type_list']['mi'] = 'Millas';
$app_list_strings['map_unit_type_list']['km'] = 'Kilometros';

$app_list_strings['map_module_type_list']['Accounts'] = 'Cuentas';
$app_list_strings['map_module_type_list']['Contacts'] = 'Contactos';
$app_list_strings['map_module_type_list']['Cases'] = 'Casos';
$app_list_strings['map_module_type_list']['Leads'] = 'Leads';
$app_list_strings['map_module_type_list']['Meetings'] = 'Meetings';
$app_list_strings['map_module_type_list']['Opportunities'] = 'Opportunities';
$app_list_strings['map_module_type_list']['Project'] = 'Projects';
$app_list_strings['map_module_type_list']['Prospects'] = 'Público Objetivo';

$app_list_strings['map_relate_type_list']['Accounts'] = 'Account';
$app_list_strings['map_relate_type_list']['Contacts'] = 'Contact';
$app_list_strings['map_relate_type_list']['Cases'] = 'Case';
$app_list_strings['map_relate_type_list']['Leads'] = 'Cliente Potencial';
$app_list_strings['map_relate_type_list']['Meetings'] = 'Meeting';
$app_list_strings['map_relate_type_list']['Opportunities'] = 'Opportunity';
$app_list_strings['map_relate_type_list']['Project'] = 'Project';
$app_list_strings['map_relate_type_list']['Prospects'] = 'Target';

$app_list_strings['marker_image_list']['accident'] = 'Accidente';
$app_list_strings['marker_image_list']['administration'] = 'Administration';
$app_list_strings['marker_image_list']['agriculture'] = 'Agricultura';
$app_list_strings['marker_image_list']['aircraft_small'] = 'Avión Pequeño';
$app_list_strings['marker_image_list']['airplane_tourism'] = 'Avión de Turismo';
$app_list_strings['marker_image_list']['airport'] = 'Aeropuerto';
$app_list_strings['marker_image_list']['amphitheater'] = 'Anfiteatro';
$app_list_strings['marker_image_list']['apartment'] = 'Apartamento';
$app_list_strings['marker_image_list']['aquarium'] = 'Acuario';
$app_list_strings['marker_image_list']['arch'] = 'Arco';
$app_list_strings['marker_image_list']['atm'] = 'Atm';
$app_list_strings['marker_image_list']['audio'] = 'Sonido';
$app_list_strings['marker_image_list']['bank'] = 'Banco';
$app_list_strings['marker_image_list']['bank_euro'] = 'Banco Euro';
$app_list_strings['marker_image_list']['bank_pound'] = 'Banco Libra';
$app_list_strings['marker_image_list']['bar'] = 'Barra';
$app_list_strings['marker_image_list']['beach'] = 'Playa';
$app_list_strings['marker_image_list']['beautiful'] = 'Belleza';
$app_list_strings['marker_image_list']['bicycle_parking'] = 'Estacionamiento de Bicicletas';
$app_list_strings['marker_image_list']['big_city'] = 'Gran Ciudad';
$app_list_strings['marker_image_list']['bridge'] = 'Puente';
$app_list_strings['marker_image_list']['bridge_modern'] = 'Puente Moderno';
$app_list_strings['marker_image_list']['bus'] = 'Autobus';
$app_list_strings['marker_image_list']['cable_car'] = 'Automóvil de cable';
$app_list_strings['marker_image_list']['car'] = 'Automóvil';
$app_list_strings['marker_image_list']['car_rental'] = 'Alquiler de Automóviles';
$app_list_strings['marker_image_list']['carrepair'] = 'Taller Automotriz';
$app_list_strings['marker_image_list']['castle'] = 'Castillo';
$app_list_strings['marker_image_list']['cathedral'] = 'Catedral';
$app_list_strings['marker_image_list']['chapel'] = 'Capilla';
$app_list_strings['marker_image_list']['church'] = 'Iglesia';
$app_list_strings['marker_image_list']['city_square'] = 'Area Central';
$app_list_strings['marker_image_list']['cluster'] = 'Clúster';
$app_list_strings['marker_image_list']['cluster_2'] = 'Clúster 2';
$app_list_strings['marker_image_list']['cluster_3'] = 'Clúster 3';
$app_list_strings['marker_image_list']['cluster_4'] = 'Clúster 4';
$app_list_strings['marker_image_list']['cluster_5'] = 'Clúster 5';
$app_list_strings['marker_image_list']['coffee'] = 'Café';
$app_list_strings['marker_image_list']['community_centre'] = 'Centro Comunitario';
$app_list_strings['marker_image_list']['company'] = 'Compañía';
$app_list_strings['marker_image_list']['conference'] = 'Conference';
$app_list_strings['marker_image_list']['construction'] = 'Construction';
$app_list_strings['marker_image_list']['convenience'] = 'Conveniencia';
$app_list_strings['marker_image_list']['court'] = 'Juzgado';
$app_list_strings['marker_image_list']['cruise'] = 'Crucero';
$app_list_strings['marker_image_list']['currency_exchange'] = 'Cambio de Moneda';
$app_list_strings['marker_image_list']['customs'] = 'Aduana';
$app_list_strings['marker_image_list']['cycling'] = 'Ciclismo';
$app_list_strings['marker_image_list']['dam'] = 'Represa';
$app_list_strings['marker_image_list']['dentist'] = 'Dentista';
$app_list_strings['marker_image_list']['deptartment_store'] = 'Tienda por Departamentos';
$app_list_strings['marker_image_list']['disability'] = 'Discapacidad';
$app_list_strings['marker_image_list']['disabled_parking'] = 'Estacionamiento p/Discapacitados';
$app_list_strings['marker_image_list']['doctor'] = 'Médico';
$app_list_strings['marker_image_list']['dog_leash'] = 'Correa p/Perros';
$app_list_strings['marker_image_list']['down'] = 'Abajo';
$app_list_strings['marker_image_list']['down_left'] = 'Abajo a la izquierda';
$app_list_strings['marker_image_list']['down_right'] = 'Abajo a la derecha';
$app_list_strings['marker_image_list']['down_then_left'] = 'Abajo luego a la izquierda';
$app_list_strings['marker_image_list']['down_then_right'] = 'Abajo luego a la derecha';
$app_list_strings['marker_image_list']['drugs'] = 'Medicamentos';
$app_list_strings['marker_image_list']['elevator'] = 'Elevador';
$app_list_strings['marker_image_list']['embassy'] = 'Embajada';
$app_list_strings['marker_image_list']['expert'] = 'Experto';
$app_list_strings['marker_image_list']['factory'] = 'Fábrica';
$app_list_strings['marker_image_list']['falling_rocks'] = 'Zona de Derrumbes';
$app_list_strings['marker_image_list']['fast_food'] = 'Comida Rápida';
$app_list_strings['marker_image_list']['festival'] = 'Festival';
$app_list_strings['marker_image_list']['fjord'] = 'Fiordo';
$app_list_strings['marker_image_list']['forest'] = 'Bosque';
$app_list_strings['marker_image_list']['fountain'] = 'Fuente';
$app_list_strings['marker_image_list']['friday'] = 'Friday';
$app_list_strings['marker_image_list']['garden'] = 'Jardín';
$app_list_strings['marker_image_list']['gas_station'] = 'Estación de Combustible';
$app_list_strings['marker_image_list']['geyser'] = 'Géiser';
$app_list_strings['marker_image_list']['gifts'] = 'Regalos';
$app_list_strings['marker_image_list']['gourmet'] = 'Gourmet';
$app_list_strings['marker_image_list']['grocery'] = 'Almacén';
$app_list_strings['marker_image_list']['hairsalon'] = 'Estilista';
$app_list_strings['marker_image_list']['helicopter'] = 'Helicóptero';
$app_list_strings['marker_image_list']['highway'] = 'Autopista';
$app_list_strings['marker_image_list']['historical_quarter'] = 'Casco Histórico';
$app_list_strings['marker_image_list']['home'] = 'Inicio';
$app_list_strings['marker_image_list']['hospital'] = 'Hospital';
$app_list_strings['marker_image_list']['hostel'] = 'Hostal';
$app_list_strings['marker_image_list']['hotel'] = 'Hotel';
$app_list_strings['marker_image_list']['hotel_1_star'] = 'Hotel 1 Estrella';
$app_list_strings['marker_image_list']['hotel_2_stars'] = 'Hotel 2 Estrellas';
$app_list_strings['marker_image_list']['hotel_3_stars'] = 'Hotel 3 Estrellas';
$app_list_strings['marker_image_list']['hotel_4_stars'] = 'Hotel 4 Estrellas';
$app_list_strings['marker_image_list']['hotel_5_stars'] = 'Hotel 5 Estrellas';
$app_list_strings['marker_image_list']['info'] = 'Info';
$app_list_strings['marker_image_list']['justice'] = 'Juzgado';
$app_list_strings['marker_image_list']['lake'] = 'Lago';
$app_list_strings['marker_image_list']['laundromat'] = 'Lavandería';
$app_list_strings['marker_image_list']['left'] = 'Izquierda';
$app_list_strings['marker_image_list']['left_then_down'] = 'Izquierda Luego Abajo';
$app_list_strings['marker_image_list']['left_then_up'] = 'Izquierda Luego Arriba';
$app_list_strings['marker_image_list']['library'] = 'Library';
$app_list_strings['marker_image_list']['lighthouse'] = 'Faro';
$app_list_strings['marker_image_list']['liquor'] = 'Licor';
$app_list_strings['marker_image_list']['lock'] = 'Candado';
$app_list_strings['marker_image_list']['main_road'] = 'Camino Principal';
$app_list_strings['marker_image_list']['massage'] = 'Masaje';
$app_list_strings['marker_image_list']['mobile_phone_tower'] = 'Torre de telefonía móvil';
$app_list_strings['marker_image_list']['modern_tower'] = 'Torre Moderna';
$app_list_strings['marker_image_list']['monastery'] = 'Monasterio';
$app_list_strings['marker_image_list']['monday'] = 'Monday';
$app_list_strings['marker_image_list']['monument'] = 'Monumento';
$app_list_strings['marker_image_list']['mosque'] = 'Mezquita';
$app_list_strings['marker_image_list']['motorcycle'] = 'Motocicleta';
$app_list_strings['marker_image_list']['museum'] = 'Museo';
$app_list_strings['marker_image_list']['music_live'] = 'Música en Vivo';
$app_list_strings['marker_image_list']['oil_pump_jack'] = 'Gato de bomba de aceite';
$app_list_strings['marker_image_list']['pagoda'] = 'Pagoda';
$app_list_strings['marker_image_list']['palace'] = 'Palacio';
$app_list_strings['marker_image_list']['panoramic'] = 'Panorámica';
$app_list_strings['marker_image_list']['park'] = 'Parque';
$app_list_strings['marker_image_list']['park_and_ride'] = 'Parque y Camiata';
$app_list_strings['marker_image_list']['parking'] = 'Estacionamiento';
$app_list_strings['marker_image_list']['photo'] = 'Photo';
$app_list_strings['marker_image_list']['picnic'] = 'Día de campo';
$app_list_strings['marker_image_list']['places_unvisited'] = 'Lugares no Visitados';
$app_list_strings['marker_image_list']['places_visited'] = 'Lugares Visitados';
$app_list_strings['marker_image_list']['playground'] = 'Zona de juegos';
$app_list_strings['marker_image_list']['police'] = 'Policía';
$app_list_strings['marker_image_list']['port'] = 'Puerto';
$app_list_strings['marker_image_list']['postal'] = 'Postal';
$app_list_strings['marker_image_list']['power_line_pole'] = 'Poste de Línea Eléctrica';
$app_list_strings['marker_image_list']['power_plant'] = 'Planta de Energía';
$app_list_strings['marker_image_list']['power_substation'] = 'Subestación de Energía';
$app_list_strings['marker_image_list']['public_art'] = 'Arte Público';
$app_list_strings['marker_image_list']['rain'] = 'Lluvia';
$app_list_strings['marker_image_list']['real_estate'] = 'Bienes raíces';
$app_list_strings['marker_image_list']['regroup'] = 'Reagrupar';
$app_list_strings['marker_image_list']['resort'] = 'Complejo';
$app_list_strings['marker_image_list']['restaurant'] = 'Restaurante';
$app_list_strings['marker_image_list']['restaurant_african'] = 'Restaurante africano';
$app_list_strings['marker_image_list']['restaurant_barbecue'] = 'Restaurante barbacoa';
$app_list_strings['marker_image_list']['restaurant_buffet'] = 'Restaurante Buffet';
$app_list_strings['marker_image_list']['restaurant_chinese'] = 'Restaurante chino';
$app_list_strings['marker_image_list']['restaurant_fish'] = 'Restaurant Mariscos';
$app_list_strings['marker_image_list']['restaurant_fish_chips'] = 'Restaurante pescado patatas fritas';
$app_list_strings['marker_image_list']['restaurant_gourmet'] = 'Restaurante Gourmet';
$app_list_strings['marker_image_list']['restaurant_greek'] = 'Restaurante griego';
$app_list_strings['marker_image_list']['restaurant_indian'] = 'Restaurante indio';
$app_list_strings['marker_image_list']['restaurant_italian'] = 'Restaurante italiano';
$app_list_strings['marker_image_list']['restaurant_japanese'] = 'Restaurante japonés';
$app_list_strings['marker_image_list']['restaurant_kebab'] = 'Restaurante de Kebab';
$app_list_strings['marker_image_list']['restaurant_korean'] = 'Restaurante coreano';
$app_list_strings['marker_image_list']['restaurant_mediterranean'] = 'Restaurante mediterráneo';
$app_list_strings['marker_image_list']['restaurant_mexican'] = 'Restaurante mexicano';
$app_list_strings['marker_image_list']['restaurant_romantic'] = 'Restaurante romántico';
$app_list_strings['marker_image_list']['restaurant_thai'] = 'Restaurante tailandés';
$app_list_strings['marker_image_list']['restaurant_turkish'] = 'Restaurante Turco';
$app_list_strings['marker_image_list']['right'] = 'Derecha';
$app_list_strings['marker_image_list']['right_then_down'] = 'A la derecha luego hacia abajo';
$app_list_strings['marker_image_list']['right_then_up'] = 'A la derecha luego hacia abajo';
$app_list_strings['marker_image_list']['saturday'] = 'Saturday';
$app_list_strings['marker_image_list']['school'] = 'Escuela';
$app_list_strings['marker_image_list']['shopping_mall'] = 'Centro comercial';
$app_list_strings['marker_image_list']['shore'] = 'Costa';
$app_list_strings['marker_image_list']['sight'] = 'Vista';
$app_list_strings['marker_image_list']['small_city'] = 'Ciudad Pequeña';
$app_list_strings['marker_image_list']['snow'] = 'Nieve';
$app_list_strings['marker_image_list']['spaceport'] = 'Puerto Espacial';
$app_list_strings['marker_image_list']['speed_100'] = 'Velocidad 100';
$app_list_strings['marker_image_list']['speed_110'] = 'Velocidad 110';
$app_list_strings['marker_image_list']['speed_120'] = 'Velocidad 120';
$app_list_strings['marker_image_list']['speed_130'] = 'Velocidad 130';
$app_list_strings['marker_image_list']['speed_20'] = 'Velocidad 20';
$app_list_strings['marker_image_list']['speed_30'] = 'Velocidad 30';
$app_list_strings['marker_image_list']['speed_40'] = 'Velocidad 40';
$app_list_strings['marker_image_list']['speed_50'] = 'Velocidad 50';
$app_list_strings['marker_image_list']['speed_60'] = 'Velocidad 60';
$app_list_strings['marker_image_list']['speed_70'] = 'Velocidad 70';
$app_list_strings['marker_image_list']['speed_80'] = 'Velocidad 80';
$app_list_strings['marker_image_list']['speed_90'] = 'Velocidad 90';
$app_list_strings['marker_image_list']['speed_hump'] = 'Tope';
$app_list_strings['marker_image_list']['stadium'] = 'Estadio';
$app_list_strings['marker_image_list']['statue'] = 'Estatua';
$app_list_strings['marker_image_list']['steam_train'] = 'Tren a Vapor';
$app_list_strings['marker_image_list']['stop'] = 'Parar';
$app_list_strings['marker_image_list']['stoplight'] = 'Semáforo';
$app_list_strings['marker_image_list']['subway'] = 'Metro';
$app_list_strings['marker_image_list']['sun'] = 'Sun';
$app_list_strings['marker_image_list']['sunday'] = 'Sunday';
$app_list_strings['marker_image_list']['supermarket'] = 'Supermercado';
$app_list_strings['marker_image_list']['synagogue'] = 'Sinagoga';
$app_list_strings['marker_image_list']['tapas'] = 'Tapas';
$app_list_strings['marker_image_list']['taxi'] = 'Taxi';
$app_list_strings['marker_image_list']['taxiway'] = 'Vía p/Taxis';
$app_list_strings['marker_image_list']['teahouse'] = 'Casa de Té';
$app_list_strings['marker_image_list']['telephone'] = 'Teléfono';
$app_list_strings['marker_image_list']['temple_hindu'] = 'Templo Hindú';
$app_list_strings['marker_image_list']['terrace'] = 'Terraza';
$app_list_strings['marker_image_list']['text'] = 'Texto';
$app_list_strings['marker_image_list']['theater'] = 'Teatro';
$app_list_strings['marker_image_list']['theme_park'] = 'Parque Temático';
$app_list_strings['marker_image_list']['thursday'] = 'Thursday';
$app_list_strings['marker_image_list']['toilets'] = 'Escusados';
$app_list_strings['marker_image_list']['toll_station'] = 'Estación de peaje';
$app_list_strings['marker_image_list']['tower'] = 'Torres';
$app_list_strings['marker_image_list']['traffic_enforcement_camera'] = 'Aplicación de la cámara de tráfico';
$app_list_strings['marker_image_list']['train'] = 'Tren';
$app_list_strings['marker_image_list']['tram'] = 'Tranvía';
$app_list_strings['marker_image_list']['truck'] = 'Camión';
$app_list_strings['marker_image_list']['tuesday'] = 'Tuesday';
$app_list_strings['marker_image_list']['tunnel'] = 'Túnel';
$app_list_strings['marker_image_list']['turn_left'] = 'Girar a la izquierda';
$app_list_strings['marker_image_list']['turn_right'] = 'Girar a la derecha';
$app_list_strings['marker_image_list']['university'] = 'Universidad';
$app_list_strings['marker_image_list']['up'] = 'Arriba';
$app_list_strings['marker_image_list']['up_left'] = 'Arriba Izquierda';
$app_list_strings['marker_image_list']['up_right'] = 'Arriba Derecha';
$app_list_strings['marker_image_list']['up_then_left'] = 'Arriba y luego izquierda';
$app_list_strings['marker_image_list']['up_then_right'] = 'Arriba y luego derecha';
$app_list_strings['marker_image_list']['vespa'] = 'Vespa';
$app_list_strings['marker_image_list']['video'] = 'Video';
$app_list_strings['marker_image_list']['villa'] = 'Villa';
$app_list_strings['marker_image_list']['water'] = 'Agua';
$app_list_strings['marker_image_list']['waterfall'] = 'Cascada';
$app_list_strings['marker_image_list']['watermill'] = 'Molino de Agua';
$app_list_strings['marker_image_list']['waterpark'] = 'Parque Acuático';
$app_list_strings['marker_image_list']['watertower'] = 'Torre de Agua';
$app_list_strings['marker_image_list']['wednesday'] = 'Wednesday';
$app_list_strings['marker_image_list']['wifi'] = 'WiFi';
$app_list_strings['marker_image_list']['wind_turbine'] = 'Turbina de Viento';
$app_list_strings['marker_image_list']['windmill'] = 'Molino de Viento';
$app_list_strings['marker_image_list']['winery'] = 'Vinería';
$app_list_strings['marker_image_list']['work_office'] = 'Oficina';
$app_list_strings['marker_image_list']['world_heritage_site'] = 'Patrimonio de la Humanidad';
$app_list_strings['marker_image_list']['zoo'] = 'Zoológico';

//Reschedule
$app_list_strings['call_reschedule_dom'][''] = '';
$app_list_strings['call_reschedule_dom']['Out of Office'] = 'Fuera de la Oficina';
$app_list_strings['call_reschedule_dom']['In a Meeting'] = 'En una reunion';

$app_strings['LBL_RESCHEDULE_LABEL'] = 'Reprogramación';
$app_strings['LBL_RESCHEDULE_TITLE'] = 'Por favor ingrese la información para reprogramar';
$app_strings['LBL_RESCHEDULE_DATE'] = 'Fecha';
$app_strings['LBL_RESCHEDULE_REASON'] = 'Razón:';
$app_strings['LBL_RESCHEDULE_ERROR1'] = 'Por favor, seleccione una fecha válida';
$app_strings['LBL_RESCHEDULE_ERROR2'] = 'Por favor seleccione el motivo';

$app_strings['LBL_RESCHEDULE_PANEL'] = 'Reschedule';
$app_strings['LBL_RESCHEDULE_HISTORY'] = 'Historial de Intentos de Llamada';
$app_strings['LBL_RESCHEDULE_COUNT'] = 'Intentos de Llamada';

//SecurityGroups
$app_list_strings['moduleList']['SecurityGroups'] = 'Gestión de la Suite de seguridad';
$app_strings['LBL_SECURITYGROUP'] = 'Grupo de seguridad';
$app_strings['LBL_ROLE'] = 'Rol';

$app_list_strings['moduleList']['OutboundEmailAccounts'] = 'Cuentas de correo electrónico saliente';
$app_list_strings['moduleList']['ExternalOAuthConnection'] = 'Conexión OAuth externa';
$app_list_strings['moduleList']['ExternalOAuthProvider'] = 'Proveedor de OAuth externo';
$app_list_strings['moduleList']['ManualMigrationTasks'] = 'Migrations';
$app_list_strings['moduleList']['Processes'] = 'Processes';
$app_list_strings['moduleList']['AsyncTaskItems'] = 'Async Task Item';

$app_strings['LNK_USER_MENU_PROCESSES'] = 'Processes';

//social
$app_strings['FACEBOOK_USER_C'] = 'Facebook';
$app_strings['TWITTER_USER_C'] = 'Twitter';
$app_strings['LBL_PANEL_SOCIAL_FEED'] = 'Detalles de la actividad Social';

$app_strings['LBL_SUBPANEL_FILTER_LABEL'] = 'Filter';

$app_strings['LBL_COLLECTION_TYPE'] = 'Type';

$app_strings['LBL_ADD_TAB'] = 'Añadir pestaña';
$app_strings['LBL_EDIT_TAB'] = 'Editar pestañas';
$app_strings['LBL_SUITE_DASHBOARD'] = 'DASHBOARD DE SUITECRM';
$app_strings['LBL_ENTER_DASHBOARD_NAME'] = 'Introduzca el nombre del tablero de control:';
$app_strings['LBL_NUMBER_OF_COLUMNS'] = 'Número de columnas:';
$app_strings['LBL_DELETE_DASHBOARD1'] = '¿Seguro que desea eliminar';
$app_strings['LBL_DELETE_DASHBOARD2'] = 'panel de Control?';
$app_strings['LBL_ADD_DASHBOARD_PAGE'] = 'Agregar una página de panel de control';
$app_strings['LBL_DELETE_DASHBOARD_PAGE'] = 'Eliminar página actual de panel de control';
$app_strings['LBL_RENAME_DASHBOARD_PAGE'] = 'Cambiar el nombre de página de Tablero de Control';
$app_strings['LBL_SUITE_DASHBOARD_ACTIONS'] = 'ACCIONES';

$app_list_strings['collection_temp_list'] = array(
    'Tasks' => 'Tasks',
    'Meetings' => 'Meetings',
    'Calls' => 'Llamadas',
    'Notes' => 'Notes',
    'Emails' => 'Emails'
);

$app_list_strings['moduleList']['TemplateEditor'] = 'Editor de Segmento de Plantilla';
$app_strings['LBL_CONFIRM_CANCEL_INLINE_EDITING'] = "Usted ha hecho clic afuera sin guardar. Haga clic en aceptar si desea Perder sus cambios, o cancelar si desea seguir editando";
$app_strings['LBL_LOADING_ERROR_INLINE_EDITING'] = "Hubo un error al cargar el campo. La sesión puede haber expirado. Inicia sesión nuevamente para solucionar este problema";

$app_list_strings['moduleList']['AOBH_BusinessHours'] = 'Horarios';
$app_list_strings['business_hours_list']['0'] = '12:00 am';
$app_list_strings['business_hours_list']['1'] = '1: 00 Am';
$app_list_strings['business_hours_list']['2'] = '2:00 am';
$app_list_strings['business_hours_list']['3'] = '3:00 am';
$app_list_strings['business_hours_list']['4'] = '4:00 am';
$app_list_strings['business_hours_list']['5'] = '5:00 am';
$app_list_strings['business_hours_list']['6'] = '6:00 am';
$app_list_strings['business_hours_list']['7'] = '7:00 AM';
$app_list_strings['business_hours_list']['8'] = '8:00 AM';
$app_list_strings['business_hours_list']['9'] = '9:00 AM';
$app_list_strings['business_hours_list']['10'] = '10:00 AM';
$app_list_strings['business_hours_list']['11'] = '11:00 AM';
$app_list_strings['business_hours_list']['12'] = '12:00 AM';
$app_list_strings['business_hours_list']['13'] = '1:00 PM';
$app_list_strings['business_hours_list']['14'] = '2:00 PM';
$app_list_strings['business_hours_list']['15'] = '3pm';
$app_list_strings['business_hours_list']['16'] = '4pm';
$app_list_strings['business_hours_list']['17'] = '5pm';
$app_list_strings['business_hours_list']['18'] = '6pm';
$app_list_strings['business_hours_list']['19'] = '7pm';
$app_list_strings['business_hours_list']['20'] = '8pm';
$app_list_strings['business_hours_list']['21'] = '9pm';
$app_list_strings['business_hours_list']['22'] = '10pm';
$app_list_strings['business_hours_list']['23'] = '11pm';
$app_list_strings['day_list']['Monday'] = 'Monday';
$app_list_strings['day_list']['Tuesday'] = 'Tuesday';
$app_list_strings['day_list']['Wednesday'] = 'Wednesday';
$app_list_strings['day_list']['Thursday'] = 'Thursday';
$app_list_strings['day_list']['Friday'] = 'Friday';
$app_list_strings['day_list']['Saturday'] = 'Saturday';
$app_list_strings['day_list']['Sunday'] = 'Sunday';
$app_list_strings['pdf_page_size_dom']['A4'] = 'A4';
$app_list_strings['pdf_page_size_dom']['Letter'] = 'Carta';
$app_list_strings['pdf_page_size_dom']['Legal'] = 'Oficio';
$app_list_strings['pdf_orientation_dom']['Portrait'] = 'Vertical';
$app_list_strings['pdf_orientation_dom']['Landscape'] = 'Horizontal';


$app_list_strings['moduleList']['SurveyResponses'] = 'Respuestas de Encuestas';
$app_list_strings['moduleList']['Surveys'] = 'Encuestas';
$app_list_strings['moduleList']['SurveyQuestionResponses'] = 'Respuestas de preguntas de encuesta';
$app_list_strings['moduleList']['SurveyQuestions'] = 'Preguntas de la encuesta';
$app_list_strings['moduleList']['SurveyQuestionOptions'] = 'Opciones de pregunta en la encuesta';
$app_list_strings['survey_status_list']['Draft'] = 'Draft';
$app_list_strings['survey_status_list']['Public'] = 'Public';
$app_list_strings['survey_status_list']['Closed'] = 'Closed';
$app_list_strings['surveys_question_type']['Text'] = 'Text';
$app_list_strings['surveys_question_type']['Textbox'] = 'Cuadro de texto';
$app_list_strings['surveys_question_type']['Checkbox'] = 'Casilla de Verificación';
$app_list_strings['surveys_question_type']['Radio'] = 'Radio';
$app_list_strings['surveys_question_type']['Dropdown'] = 'Menú desplegable';
$app_list_strings['surveys_question_type']['Multiselect'] = 'MultiSelect';
$app_list_strings['surveys_question_type']['Matrix'] = 'Matrix';
$app_list_strings['surveys_question_type']['DateTime'] = 'Fecha y hora';
$app_list_strings['surveys_question_type']['Date'] = 'Date';
$app_list_strings['surveys_question_type']['Scale'] = 'Escala';
$app_list_strings['surveys_question_type']['Rating'] = 'Rating';
$app_list_strings['surveys_matrix_options'][0] = 'Satisfecho';
$app_list_strings['surveys_matrix_options'][1] = 'Ni satisfecho ni insatisfecho';
$app_list_strings['surveys_matrix_options'][2] = 'Insatisfecho';

$app_strings['LBL_OPT_IN_PENDING_EMAIL_NOT_SENT'] = 'Autorización pendiente. Confirmación no enviada';
$app_strings['LBL_OPT_IN_PENDING_EMAIL_FAILED'] = 'Envío de e-mail de confirmación fallido';
$app_strings['LBL_OPT_IN_PENDING_EMAIL_SENT'] = 'Autorización pendiente. Confirmación enviada';
$app_strings['LBL_OPT_IN'] = 'Autorizado';
$app_strings['LBL_OPT_IN_CONFIRMED'] = 'Autorización Confirmada';
$app_strings['LBL_OPT_IN_OPT_OUT'] = 'Rehusado';
$app_strings['LBL_OPT_IN_INVALID'] = 'Invalid';

/** @see SugarEmailAddress */
$app_list_strings['email_settings_opt_in_dom'] = array(
    'not-opt-in' => 'Disabled',
    'opt-in' => 'Autorizado',
    'confirmed-opt-in' => 'Autorización Confirmada'
);

$app_list_strings['email_confirmed_opt_in_dom'] = array(
    'not-opt-in' => 'No autorizado',
    'opt-in' => 'Autorizado',
    'confirmed-opt-in' => 'Autorización Confirmada'
);

$app_strings['RESPONSE_SEND_CONFIRM_OPT_IN_EMAIL'] = 'El e-mail de confirmación de autorización ha sido agregado a la cola de mensajes para %s dirección(es). ';
$app_strings['RESPONSE_SEND_CONFIRM_OPT_IN_EMAIL_NOT_OPT_IN'] = 'No se puede enviar e-mail a %s correo(s) porque la(s) dirección(es) no está(n) autorizada(s) a recibir mensajes. ';
$app_strings['RESPONSE_SEND_CONFIRM_OPT_IN_EMAIL_MISSING_EMAIL_ADDRESS_ID'] = 'La %s dirección de correo electrónico no tiene un id válido. ';

$app_strings['ERR_TWO_FACTOR_FAILED'] = 'Falló la Autenticación de dos factores';
$app_strings['ERR_TWO_FACTOR_CODE_SENT'] = 'Se ha enviado código de Autenticación de dos factores.';
$app_strings['ERR_TWO_FACTOR_CODE_FAILED'] = 'El envío del código de autenticación en dos factores ha fallado.';
$app_strings['LBL_THANKS_FOR_SUBMITTING'] = 'Gracias por enviar su interés.';

$app_strings['ERR_IP_CHANGE'] = 'Hemos finalizado su sesión debido a un cambio significativo en su dirección IP';
$app_strings['ERR_RETURN'] = 'Volver al Inicio';


$app_list_strings['oauth2_grant_type_dom'] = array(
    'password' => 'Otorgar Contraseña',
    'client_credentials' => 'Credenciales de cliente',
    'implicit' => 'Implícito',
    'authorization_code' => 'Código de autorización'
);

$app_list_strings['oauth2_duration_units'] = [
    'minute' => 'minutos',
    'hour' => 'horas',
    'day' => 'days',
    'week' => 'semanas',
    'month' => 'meses',
];

$app_list_strings['search_controllers'] = [
    'Search' => 'Búsqueda (nueva)',
    'UnifiedSearch' => 'Búsqueda global unificada (obsoleta)'
];

// Calendar Account Types dropdown
$app_list_strings['calendar_account_types'] = [
    'personal' => 'Personal',
    'shared' => 'Compartido',
    'group' => 'Group',
];

// Calendar Connection Status dropdown
$app_list_strings['calendar_connection_status_list'] = [
    'never_tested' => 'Never Tested',
    'success' => 'Conectado',
    'failed' => 'Failed',
];

// Calendar Sync Attempt Status dropdown
$app_list_strings['sync_attempt_status_list'] = [
    '' => '',
    'in_progress' => 'In Progress',
    'success' => 'Success',
    'warning' => 'Advertencia',
    'error' => 'Error',
];

$app_list_strings['sync_attempt_message_list'] = [
    '' => '',
    'sync_complete' => 'All meetings synced.',
    'up_to_date' => 'No new meetings to sync.',
    'meetings_failed' => 'Some meetings failed to sync. Check logs.',
    'sync_partial' => 'Some meetings synced. More pending due to limits.',
    'sync_failed' => 'No meetings synced. Check logs.',
];

$app_strings['LBL_DEFAULT_API_ERROR_TITLE'] = 'Error en API JSON';
$app_strings['LBL_DEFAULT_API_ERROR_DETAIL'] = 'Error en API JSON.';
$app_strings['LBL_API_EXCEPTION_DETAIL'] = 'Versión de API: 8';
$app_strings['LBL_BAD_REQUEST_EXCEPTION_DETAIL'] = 'Por favor, asegúrese de rellenar todos los campos requeridos';
$app_strings['LBL_EMPTY_BODY_EXCEPTION_DETAIL'] = 'Json API espera que el cuerpo de la solicitud sea JSON';
$app_strings['LBL_INVALID_JSON_API_REQUEST_EXCEPTION_DETAIL'] = 'No se puede validar la solicitud de carga útil Json Api';
$app_strings['LBL_INVALID_JSON_API_RESPONSE_EXCEPTION_DETAIL'] = 'No se puede validar la respuesta de carga útil Json Api';
$app_strings['LBL_MODULE_NOT_FOUND_EXCEPTION_DETAIL'] = 'Json API no puede encontrar recursos';
$app_strings['LBL_NOT_ACCEPTABLE_EXCEPTION_DETAIL'] = 'JSON API espera el encabezado "Accept" para ser application/vnd.api+json';
$app_strings['LBL_UNSUPPORTED_MEDIA_TYPE_EXCEPTION_DETAIL'] = 'JSON API espera el encabezado "Content-Type" que application/vnd.api+json';

$app_strings['MSG_BROWSER_NOTIFICATIONS_ENABLED'] = 'Las notificaciones de escritorio están ahora habilitadas para este navegador web.';
$app_strings['MSG_BROWSER_NOTIFICATIONS_DISABLED'] = 'Las notificaciones de escritorio están desactivadas para este navegador web. Utilice las preferencias de su navegador para habilitarlas otra vez.';
$app_strings['MSG_BROWSER_NOTIFICATIONS_UNSUPPORTED'] = 'Este navegador no es compatible con las notificaciones de escritorio.';

$app_strings['LBL_THERE_WAS_AN_ERR'] = 'Se ha producido un error: ';
$app_strings['LBL_CLICK_HERE'] = 'Haga clic aquí';
$app_strings['LBL_TO_CONTINUE'] = ' para continuar.';
$app_strings['LBL_OPT_OUT'] = 'Salida Opcional';
$app_strings['LBL_INVALID_EMAIL'] = 'Invalid';
$app_strings['LBL_PRIMARY'] = 'Primary';
$app_strings['LBL_EMAIL_ADDRESS'] = 'Email Address';

$app_strings['IMAP_HANDLER_ERROR'] = 'ERROR: {error}; la clave era: "{key}".';
$app_strings['IMAP_HANDLER_SUCCESS'] = 'OK: configuración de prueba cambiada a "{key}"';
$app_strings['IMAP_HANDLER_ERROR_INVALID_REQUEST'] = 'Solicitud inválida, use el valor "{var}".';
$app_strings['IMAP_HANDLER_ERROR_UNKNOWN_BY_KEY'] = 'Se produjo un error desconocido, la clave "{key}" no fue guardada.';
$app_strings['IMAP_HANDLER_ERROR_NO_TEST_SET'] = 'Las configuraciones de prueba no existen.';
$app_strings['IMAP_HANDLER_ERROR_NO_KEY'] = 'Clave no encontrada.';
$app_strings['IMAP_HANDLER_ERROR_KEY_SAVE'] = 'Error al guardar la clave.';
$app_strings['IMAP_HANDLER_ERROR_UNKNOWN'] = 'Error desconocido';
$app_strings['LBL_SEARCH_TITLE']                   = 'Búsqueda';
$app_strings['LBL_SEARCH_TEXT_FIELD_TITLE_ATTR']   = 'Criterios de búsqueda';
$app_strings['LBL_SEARCH_SUBMIT_FIELD_TITLE_ATTR'] = 'Búsqueda';
$app_strings['LBL_SEARCH_SUBMIT_FIELD_VALUE']      = 'Búsqueda';
$app_strings['LBL_SEARCH_QUERY']                   = 'Búsqueda: ';
$app_strings['LBL_SEARCH_RESULTS_PER_PAGE']        = 'Results per module: ';
$app_strings['LBL_SEARCH_ENGINE']                  = 'Buscador: ';
$app_strings['LBL_SEARCH_TOTAL'] = 'Resultados Totales: ';
$app_strings['LBL_SEARCH_PREV'] = 'Previous';
$app_strings['LBL_SEARCH_NEXT'] = 'Next';
$app_strings['LBL_SEARCH_PAGE'] = 'Página ';
$app_strings['LBL_SEARCH_OF'] = ' de ';
$app_strings['LBL_INSIGHTS'] = 'Perspectivas';
$app_strings['LBL_CHARTS'] = 'Gráficos';
$app_strings['LBL_CHART_NOT_FOUND'] = 'Gráfico no encontrado';
$app_strings['LBL_NO_DATA'] = 'Sin datos';
$app_strings['LBL_ERROR_FETCHING_METADATA'] = 'Ocurrió un error al recuperar metadatos';
$app_strings['LBL_TOTAL'] = 'Total';
$app_strings['LBL_ACTIONS'] = 'Actions';
$app_strings['LBL_SELECT_SUBPANEL_BANNER'] = 'Seleccionar qué subpaneles ver';
$app_strings['LBL_SELECT_ITEM'] = 'Seleccione un elemento';
$app_strings['LBL_ITEMS_SELECTED'] = 'elementos seleccionados';
$app_strings['LBL_WIDGET_NOT_FOUND'] = 'Widget no encontrado';
$app_strings['LBL_BAD_CONFIG'] = 'Configuración incorrecta';
$app_strings['LBL_CONFIG_BAD_CONTEXT'] = 'Configuración incorrecta: contexto no configurado correctamente';
$app_strings['LBL_CONFIG_NO_CONFIG'] = 'Configuración incorrecta: falta la configuración';
$app_strings['LBL_CONFIG_NO_STATISTICS_KEY'] = 'Configuración incorrecta: falta la clave de estadísticas';
$app_strings['LBL_STATISTIC_ERROR'] = 'Error al cargar estadística';
$app_strings['LBL_STATISTIC_ERROR_DESC'] = 'Error al cargar estadística';
$app_strings['LBL_STATISTIC_ERROR_DESC_TOOLTIP'] = 'Error al cargar estadísticas. Póngase en contacto con su administrador';
$app_strings['LBL_AVERAGE_CLOSED_WON_PER_YEAR'] = 'Promedio de oportunidades ganadas por año';
$app_strings['LBL_OPPORTUNITIES_TOTAL'] = 'Oportunidad Valor';
$app_strings['LBL_CASE_TOTAL_DAYS_OPEN'] = 'Días totales abiertos';
$app_strings['LBL_DAYS_OPEN'] = 'Días abiertos';
$app_strings['LBL_DAYS_IN_SALE_STAGE'] = 'DAY(S) THIS OPPORTUNITY HAS BEEN AT THIS SALES STAGE';
$app_strings['LBL_STAT_DAYS'] = 'Día(s)';
$app_strings['LBL_CLOSED_PER_YEAR'] = 'Cerrado por año';
$app_strings['LBL_WAS_OPEN'] = 'Este caso fue abierto para';
$app_strings['LBL_HAS_BEEN_OPEN'] = 'Este caso ha sido abierto para';
$app_strings['LBL_NUMBER_OF_CASES_PER_ACCOUNT'] = 'Número de casos por cuenta';
$app_strings['LBL_TOTAL_CASES_FOR_THIS_ACCOUNT'] = 'Total Cases For This Account';
$app_strings['LBL_NONE_OUTSTANDING'] = 'None';
$app_strings['LBL_VALIDATION_ERROR_REQUIRED'] = 'Falta el campo obligatorio: {{fields.field.label}}';
$app_strings['LBL_VALIDATION_ERROR_ATTACHMENT'] = 'File attachment(s) not valid.';
$app_strings['LBL_VALIDATION_ERROR_CURRENCY_FORMAT'] = "Formato de moneda no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_INT_FORMAT'] = "Formato de int no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_FLOAT_FORMAT'] = "Formato decimal no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_DATE_FORMAT'] = "Formato de fecha no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_DATETIME_FORMAT'] = "Formato de fecha no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_UNSUBSCRIBE_LINK'] = "Non-Transactional Emails must contain an unsubscribe link. Please add an opt out tracker, '{{ unsubscribe_link }}' or select the icon: ";
$app_strings['LBL_VALIDATION_ERROR_REMOVE_UNSUBSCRIBE_LINK'] = "Transactional Emails must NOT contain an unsubscribe link. Please remove '{{ unsubscribe_link }}'";
$app_strings['LBL_VALIDATION_ERROR_EMAIL_FORMAT'] = "Formato de correo electrónico no válido. Esperado: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_PHONE_FORMAT'] = "Formato de teléfono inválido.";
$app_strings['LBL_VALIDATION_ERROR_MIN'] = "Valor no válido. El valor debe ser mayor o igual a '{{context.min}}'";
$app_strings['LBL_VALIDATION_ERROR_VERSIONING'] = "Invalid format. Expected: '{{context.expected}}'";
$app_strings['LBL_VALIDATION_ERROR_MAX'] = "Valor no válido. El valor debe ser menor o igual a '{{context.max}}'";
$app_strings['LBL_MULTIPLE_PRIMARY_EMAIL_VALIDATION_ERROR'] = "Only one Valid Email Address should be marked as primary";
$app_strings['LBL_DUPLICATE_EMAIL_VALIDATION_ERROR'] = "No se permiten direcciones de correo electrónico duplicadas";
$app_strings['LBL_NO_PRIMARY_EMAIL_VALIDATION_ERROR'] = "One Valid Email Address should be marked as primary";
$app_strings['LBL_NO_EM_ID'] = 'Unable to get Email Marketing ID';
$app_strings['LBL_VALIDATION_ERRORS'] = 'Hay errores de validación, no se puede realizar la acción.';
$app_strings['LBL_LOADING_IN_PROGRESS'] = 'El cálculo está actualmente en curso, por favor espere unos momentos antes de intentarlo de nuevo.';
$app_strings['LBL_SELECT_EMAIL_FOR_TEST'] = 'Please Select Targets/ Users or Enter an Email';
$app_strings['LBL_TYPE_TO_SEARCH'] = 'Escriba para buscar...';
$app_strings['LBL_SEARCHING'] = 'buscando...';
$app_strings['LBL_NOT_FOUND'] = 'No encontrado.';
$app_strings['LBL_SEARCH_ERROR'] = 'Error de búsqueda.';
$app_strings['LBL_FOUND'] = 'Encontrado';
$app_strings['LBL_GET_RECORD_LIST_ERROR'] = 'Se produjo un error al guardar los datos';
$app_strings['LBL_NUMBER_OF_RECORDS'] = 'Número total de registros';
$app_strings['LBL_FORWARD_SLASH'] = '/';
$app_strings['LBL_CASES_INSIGHT'] = ' {{fields.cases.value}} ( {{fields.default.value}} )';
$app_strings['LBL_INVOICES_INSIGHT'] = ' {{fields.invoices.value}} ( {{fields.default.value}} )';
$app_strings['LBL_CONTRACT_RENEWAL_TOOLTIP'] = 'Fecha de la próxima renovación de contrato';
$app_strings['LBL_INVOICES_OVERDUE_TOOLTIP'] = 'Número total de facturas atrasadas';
$app_strings['LBL_ACTIVITIES_NEXT_DATE_TOOLTIP'] = 'Fecha de la siguiente interacción';
$app_strings['LBL_CAMPAIGN_LAST_RECEIVED_TOOLTIP'] = 'Fecha de la campaña más reciente recibida';
$app_strings['LBL_OPEN_CASES_COUNT_TOOLTIP'] = 'Número total de Casos Abiertos';
$app_strings['LBL_EVENTS_LAST_DATE_TOOLTIP'] = 'Fecha del evento más reciente';
$app_strings['LBL_HISTORY_LAST_DATE_TOOLTIP'] = 'Fecha de la interacción más reciente';
$app_strings['LBL_OPPORTUNITIES_TOTAL_SUM_TOOLTIP'] = 'Suma total de oportunidades';
$app_strings['LBL_QUOTES_EXPIRY_TOOLTIP'] = 'Fecha del próximo vencimiento del presupuesto';
$app_strings['LBL_DEFAULT_TOTAL_TOOLTIP'] = 'Número total de registros';
$app_strings['LBL_CONTRACT_RENEWAL'] = 'Fecha de renovación';
$app_strings['LBL_INVOICES_OVERDUE'] = 'Total Vencido';
$app_strings['LBL_ACTIVITIES_NEXT_DATE'] = 'Próxima fecha de actividad';
$app_strings['LBL_CAMPAIGN_LAST_RECEIVED'] = 'Última participación';
$app_strings['LBL_OPEN_CASES_COUNT'] = 'Casos abiertos';
$app_strings['LBL_EVENTS_LAST_DATE'] = 'Último evento atendido';
$app_strings['LBL_HISTORY_LAST_DATE'] = 'Último Tochpoint';
$app_strings['LBL_OPPORTUNITIES_TOTAL_SUM'] = 'Valor total';
$app_strings['LBL_QUOTES_EXPIRY'] = 'Próxima fecha de vencimiento';
$app_strings['LBL_DEFAULT_TOTAL'] = 'Total';
$app_strings['AOS_Contracts'] = 'Contracts';
$app_strings['AOS_Quotes'] = 'Presupuestos';
$app_strings['AOS_Invoices'] = 'Invoices';
$app_strings['LBL_PHOTO'] = 'Photo';
$app_strings['LBL_CASE_UPDATES'] = 'Actualizaciones de Casos';
$app_strings['LBL_CASE_UPDATE_SUBMITTED'] = 'Actualización de Caso Enviada';
$app_strings['LBL_SUMMARY_DEFAULT'] = "{{fields.name.value}}";
$app_strings['LBL_SUMMARY_PERSON'] = "{{fields.salutation.value}} {{fields.first_name.value}} {{fields.last_name.value}}";
$app_strings['LBL_REVISION_FILENAME'] = "{{fields.document_name.value}} - v{{fields.revision.value}}";
$app_strings['LBL_SUMMARY_DOCUMENT'] = "{{fields.document_name.value}}";
$app_strings['LBL_CREATE'] = 'Nuevo';
$app_strings['LBL_CLEAR_FILTER'] = 'Borrar filtros';
$app_strings['LBL_QUICK_FILTERS'] = 'Filtros rápidos';
$app_strings['LBL_SAVED_FILTER_SAVED'] = 'Filtro guardado correctamente';
$app_strings['LBL_FILTER_ID_NOT_DEFINED'] = 'Id de filtro no definido';
$app_strings['LBL_GENERIC_CONFIRMATION'] = '¿Desea continuar con la acción?';
$app_strings['LBL_SHOW_MORE'] = 'Mostrar más';
$app_strings['LBL_SHOW_LESS'] = 'Mostrar menos';
$app_strings['LBL_LOAD_MORE'] = 'Cargar más';
$app_strings['LBL_EMPTY'] = '-- Empty --';
$app_strings['LBL_OPERATOR'] = 'Operator';
$app_strings['LBL_START'] = 'Comenzar';
$app_strings['LBL_END'] = 'End';
$app_strings['LBL_LINE_ITEMS_FIELD_CONFIG'] = 'Configuración incorrecta';


$app_strings['LBL_ACTION_SUCCESS'] = 'Acción exitosa';

$app_strings['LBL_YES'] = 'Yes';
$app_strings['LBL_NO'] = 'No';

$app_list_strings['sort_order'] = [];
$app_list_strings['sort_order']['asc'] = 'Orden ascendente';
$app_list_strings['sort_order']['desc'] = 'Descendente';

// Labels used by subpanel unlink relationship process
$app_strings['LBL_LINK'] = 'Link';
$app_strings['LBL_LINK_UNLINK'] = 'Link / Unlink';
$app_strings['LBL_SAVE'] = 'Save';
$app_strings['LBL_UNLINK_RECORD'] = 'Desvincular registro';
$app_strings['LBL_DELETE_RECORD'] = 'Delete Record';
$app_strings['LBL_EDIT_RECORD'] = 'Editar registro';
$app_strings['LBL_UNLINK_RELATIONSHIP_CONFIRM'] = '¿Está seguro que desea desvincular este registro? Sólo la relación se desvinculará. El registro no se eliminará.';
$app_strings['LBL_UNLINK_RELATIONSHIP_SUCCESS'] = 'Registro desvinculado correctamente.';
$app_strings['LBL_UNLINK_RELATIONSHIP_FAILED'] = 'Se ha producido un error al desvincular este registro.';
$app_strings['LBL_ALL_RECORDS_UNLINKED'] = 'All records unlinked successfully';
$app_strings['LBL_SOME_RECORDS_UNLINKED_FAILED'] = 'There was an issue unlinking some records. See the logs for more.';
$app_strings['LBL_LINK_RELATIONSHIP_SUCCESS'] = 'Relación enlazada con éxito.';
$app_strings['LBL_LINK_RELATIONSHIP_FAILED'] = 'Se ha producido un error al vincular esta relación.';
$app_strings['LBL_MODULE_NOT_FOUND'] = 'Módulo no encontrado.';
$app_strings['LBL_RECORD_NOT_FOUND'] = 'No se puede cargar el registro';
$app_strings['LBL_FILE_NOT_FOUND'] = 'Unable to load file';
$app_strings['LBL_RELATIONSHIP_LOAD_ERROR'] = 'No se puede cargar la relación';
$app_strings['LBL_NOT_LINKED'] = 'No se puede desenlazar. Los registros no están enlazados';
$app_strings['LBL_ACCESS_DENIED'] = 'Acceso Denegado';
$app_strings['LBL_ADD_RECORDS_TO_TARGET_LIST_SUCCESS'] = 'Registros añadidos a la lista de destino con éxito.';
$app_strings['LBL_ADD_RECORDS_TO_TARGET_LIST_FAILED'] = 'Hubo un error al añadir registros a la lista de destino.';
$app_strings['LBL_ADD_CONTACTS_TO_TARGET_LIST_SUCCESS'] = 'Contactos añadidos a la lista de Público Objetivo con éxito.';
$app_strings['LBL_ADD_CONTACTS_TO_TARGET_LIST_FAILED'] = 'Hubo un error al añadir contactos a la lista Público Objetivo.';
$app_strings['LBL_CHANGED_TO_TEXT'] = 'cambiado a';
$app_strings['LBL_RECORD_CHANGED'] = 'Registro actualizado';
$app_strings['LBL_CREATE'] = "Nuevo";
$app_strings['LBL_USE_ADVANCED_SEARCH'] = 'Usar búsqueda avanzada';
$app_strings['LBL_USE_BASIC_SEARCH'] = 'Usar búsqueda básica';
$app_strings['LBL_NO_MODULE_SELECTED'] = 'Ningún módulo seleccionado';
$app_strings['LBL_CLOSE_MENU'] = 'Cerrar menú';
$app_strings['LOGIN_INCORRECT'] = 'Datos de inicio de sesión incorrectos; vuelve a intentarlo.';
$app_strings['LOGIN_TOO_MANY_FAILED'] = 'Demasiados intentos fallidos de inicio de sesión, por favor reinténtalo más tarde.';

// PDF Engines
$app_strings['LBL_LEGACY_MPDF_ENGINE'] = 'Motor MPDF antiguo';
$app_strings['LBL_TCPDF_ENGINE'] = 'Motor TCPDF';


$app_strings['ERR_INVALID_FILE_NAME'] = 'Nombre de archivo inválido:';
$app_strings['LBL_LOGGER_VALID_FILENAME_CHARACTERS'] = 'Esto sólo puede ser caracteres alfanuméricos, más \'.\', \'-\' y \'_\'';
$app_strings['LBL_LOGGER_INVALID_FILENAME'] = 'Nombre de archivo de importación no válido';

$app_strings['LBL_PASSWORD_SET_NEW_VALUE_TO_RESET'] = 'Conjunto de contraseña. Introduzca el valor para establecer una nueva contraseña.';
$app_strings['LBL_VALUE_SET_PLACEHOLDER'] = 'Valor establecido. Introduzca un nuevo valor para sobreescribir el actual.';

$app_strings['ERR_IMAP_OAUTH_CONNECTION_ERROR'] = 'No se puede conectar usando acceso OAuth con el servidor de correo entrante. Para la conexión: ';
$app_strings['WARN_OAUTH_TOKEN_SESSION_EXPIRED'] = 'Su sesión de IMAP OAuth ha expirado, por favor inicie sesión de nuevo en la conexión: ';

$app_strings['ERR_OAUTH_CONNECTION_ERROR'] = 'Not able to connect using OAuth login. For connection: ';

$app_strings['LBL_KEY'] = 'Clave';
$app_strings['LBL_VALUE'] = 'Value';
$app_strings['LBL_OPTIONAL'] = 'Opcional';
$app_strings['LBL_OPTIONAL_CONNECTION_STRING'] = 'Opcional. Establecer para usar una cadena de conexión específica';
$app_strings['LBL_OUTBOUND_ACCOUNT'] = 'Cuenta de Salida';
$app_strings['LBL_INBOUND_ACCOUNT'] = 'Cuenta de Entrada';
$app_strings['LBL_SYSTEM_ACCOUNT'] = 'System Account';
$app_strings['LBL_FROM_SYSTEM'] = 'Enviar desde la cuenta del sistema';
$app_strings['LBL_SIGNATURE'] = 'Firma';
$app_strings['LBL_NEW_NOTIFICATION'] = "Tienes {{context.unread}} nuevas notificaciones";
$app_strings['LBL_ALERT_STATUS_COMPLETED'] = 'Completed';
$app_strings['LBL_ALERT_STATUS_COMPLETED_WITH_FAILURES'] = 'Completed With Failures';
$app_strings['LBL_ALERT_STATUS_FAILED'] = 'Failed';
$app_strings['LBL_NOTIFICATION_ITEM_DATE'] = 'Vence: {{fields.date_start.value}}';
$app_strings['LBL_NOTIFICATION_ITEM_DATE_ENTERED'] = 'Notificado: {{fields.snooze.value}}';
$app_strings['LBL_QUICK_ACTIONS'] = 'Acciones rápidas';
$app_strings['LBL_RELATIONSHIPS'] = 'Relationships';
$app_strings['LBL_SHOW_CC'] = 'Show Cc';
$app_strings['LBL_SHOW_BCC'] = 'Show Bcc';
$app_strings['LBL_CC'] = 'Cc';
$app_strings['LBL_BCC'] = 'Bcc';
$app_strings['LNK_NEW_EMAIL'] = 'New Email';
$app_strings['LBL_INSERT_TEMPLATE'] = 'Insert Template';
$app_strings['LBL_MISSING_RECORD_DATA'] = 'Missing Record Data';
$app_strings['LBL_MISSING_FIELDS_DATA'] = 'Missing Fields Data';
$app_strings['LBL_WRONG_MODULE_PROVIDED'] = 'Wrong module provided';
$app_strings['LBL_NO_TEMPLATE_ID_PROVIDED'] = 'No template id provided';
$app_strings['LBL_TEMPLATE_NOT_FOUND'] = 'Template not found';
$app_strings['LBL_EMAIL_MODAL_DYNAMIC_TITLE'] = 'New Email{{fields.name.value|prefix:\' - \'}}';
$app_strings['LBL_EMAIL_MODAL_DRAFT_DYNAMIC_TITLE'] = 'Draft{{fields.name.value|prefix:\' - \'}}';
$app_strings['LBL_CLOSE_EMAIL_MODAL'] = 'Are you sure you wish to discard this Email? (Changes will be lost)';
$app_strings['LBL_RELATED_TO_DYNAMIC'] = '{{fields.parent_type.value|uppercase}}';
$app_strings['LBL_RELATED_TO'] = 'Related To';
$app_strings['LBL_OUTBOUND_EMAIL_NAME_COMPOSE_LABEL'] = '{{fields.smtp_from_name}}';
$app_strings['LBL_OUTBOUND_EMAIL_NAME_COMPOSE_SUB_LABEL'] = '{{fields.smtp_from_addr}}';
$app_strings['LBL_SMALL'] = 'Small';
$app_strings['LBL_MEDIUM'] = 'Medium';
$app_strings['LBL_NORMAL'] = 'Normal';
$app_strings['LBL_LARGE'] = 'Large';
$app_strings['LBL_HUGE'] = 'Huge';
$app_strings['LBL_DEFAULT'] = 'Por Defecto';
$app_strings['LBL_APPLY'] = 'Apply';
$app_strings['LBL_INSERT_LINK_URL_DESCRIPTION'] = 'Insert URL or email:';
$app_strings['LBL_INSERT_LINK_PLACEHOLDER'] = 'e.g.: https://www.example.com';

$app_strings['LBL_COLOR_BLACK'] = 'Black';
$app_strings['LBL_COLOR_FIREBRICK'] = 'Firebrick';
$app_strings['LBL_COLOR_RED'] = 'Red';
$app_strings['LBL_COLOR_SALMON'] = 'Salmon';
$app_strings['LBL_COLOR_BLUSH'] = 'Blush';
$app_strings['LBL_COLOR_DARK_RED'] = 'Dark Red';
$app_strings['LBL_COLOR_BROWN'] = 'Brown';
$app_strings['LBL_COLOR_DARK_ORANGE'] = 'Dark Orange';
$app_strings['LBL_COLOR_ORANGE'] = 'Orange';
$app_strings['LBL_COLOR_ANTIQUE_WHITE'] = 'Antique White';
$app_strings['LBL_COLOR_SADDLE_BROWN'] = 'Saddle Brown';
$app_strings['LBL_COLOR_GOLDENROD'] = 'Golden Rod';
$app_strings['LBL_COLOR_GOLD'] = 'Gold';
$app_strings['LBL_COLOR_YELLOW'] = 'Yellow';
$app_strings['LBL_COLOR_LIGHT_YELLOW'] = 'Light Yellow';
$app_strings['LBL_COLOR_DARK_SLATE_GRAY'] = 'Dark Slate Grey';
$app_strings['LBL_COLOR_DARK_GREEN'] = 'Dark Green';
$app_strings['LBL_COLOR_GREEN'] = 'Green';
$app_strings['LBL_COLOR_LIME'] = 'Lime';
$app_strings['LBL_COLOR_HONEYDEW'] = 'Honeydew';
$app_strings['LBL_COLOR_TEAL'] = 'Teal';
$app_strings['LBL_COLOR_TURQUOISE'] = 'Turquoise';
$app_strings['LBL_COLOR_AQUA'] = 'Aqua';
$app_strings['LBL_COLOR_PALE_TURQUOISE'] = 'Pale Turquoise';
$app_strings['LBL_COLOR_AZURE'] = 'Azure';
$app_strings['LBL_COLOR_NAVY_BLUE'] = 'Navy Blue';
$app_strings['LBL_COLOR_MEDIUM_BLUE'] = 'Medium Blue';
$app_strings['LBL_COLOR_BLUE'] = 'Blue';
$app_strings['LBL_COLOR_LIGHT_BLUE'] = 'Light Blue';
$app_strings['LBL_COLOR_ALICE_BLUE'] = 'Alice Blue';
$app_strings['LBL_COLOR_INDIGO'] = 'Indigo';
$app_strings['LBL_COLOR_PATRIARCH_PURPLE'] = 'Patriarch Purple';
$app_strings['LBL_COLOR_VIOLET_PURPLE'] = 'Violet Purple';
$app_strings['LBL_COLOR_PLUM'] = 'Plum';
$app_strings['LBL_COLOR_LAVENDER'] = 'Lavender';
$app_strings['LBL_COLOR_DIM_GRAY'] = 'Dim Gray';
$app_strings['LBL_COLOR_GRAY'] = 'Gray';
$app_strings['LBL_COLOR_DARK_GRAY'] = 'Dark Gray';
$app_strings['LBL_COLOR_LIGHT_GRAY'] = 'Light Gray';
$app_strings['LBL_COLOR_WHITE'] = 'White';

$app_strings['LBL_BOLD'] = 'Bold';
$app_strings['LBL_ITALIC'] = 'Italic';
$app_strings['LBL_INSERT_TEMPLATE_VARIABLE'] = 'Insertar variable';
$app_strings['LBL_UNDERLINE'] = 'Underline';
$app_strings['LBL_STRIKETHROUGH'] = 'Strikethrough';
$app_strings['LBL_FONT_FACE'] = 'Font Face';
$app_strings['LBL_TEXT_SIZE'] = 'Text Size';
$app_strings['LBL_TEXT_COLOR'] = 'Text Color';
$app_strings['LBL_TEXT_HIGHLIGHT'] = 'Text Highlight';
$app_strings['LBL_LINK'] = 'Link';
$app_strings['LBL_UNORDERED_LIST'] = 'Unordered List';
$app_strings['LBL_ORDERED_LIST'] = 'Ordered List';
$app_strings['LBL_QUOTE'] = 'Cotización';
$app_strings['LBL_UNQUOTE'] = 'Unquote';
$app_strings['LBL_ALIGN'] = 'Align';
$app_strings['LBL_ALIGN_LEFT'] = 'Left';
$app_strings['LBL_ALIGN_CENTER'] = 'Center';
$app_strings['LBL_ALIGN_RIGHT'] = 'Right';
$app_strings['LBL_JUSTIFY'] = 'Justify';
$app_strings['LBL_TEXT_LEFT_TO_RIGHT'] = 'Text Direction: Left to Right';
$app_strings['LBL_TEXT_RIGHT_TO_LEFT'] = 'Text Direction: Right to Left';
$app_strings['LBL_CLEAR_FORMATTING'] = 'Clear Formatting';
$app_strings['LBL_INJECT_UNSUBSCRIBE'] = 'Unsubscribe Link';
$app_strings['LBL_TEXT_INDENT_LEFT'] = 'Indent Text Left';
$app_strings['LBL_TEXT_INDENT_RIGHT'] = 'Indent Text Right';

// Day and Time labels
$app_strings['LBL_SUN'] = 'Sunday';
$app_strings['LBL_MON'] = 'Monday';
$app_strings['LBL_TUE'] = 'Tuesday';
$app_strings['LBL_WED'] = 'Wednesday';
$app_strings['LBL_THU'] = 'Thursday';
$app_strings['LBL_FRI'] = 'Friday';
$app_strings['LBL_SAT'] = 'Saturday';
$app_strings['LBL_ALL'] = 'Every Day';
$app_strings['LBL_EVERY'] = 'Cada';
$app_strings['LBL_ON_THE'] = 'En el';
$app_strings['LBL_RANGE'] = 'a';
$app_strings['LBL_FROM'] = 'Desde';
$app_strings['LBL_AND'] = 'y';
$app_strings['LBL_MINS'] = 'Min';
$app_strings['LBL_MINUTES'] = 'minutos';
$app_strings['LBL_HOUR'] = 'horas';
$app_strings['LBL_HOUR_SING'] = 'hora';
$app_strings['LBL_OFTEN'] = 'Tan a menudo como sea posible.';
$app_strings['LBL_MIN_MARK'] = 'marca por minuto';
$app_strings['LBL_INBOUND_EMAIL'] = 'Inbound Email';

$app_strings['LBL_LEGEND'] = 'Legend';

$app_strings['LBL_EMAIL_MARKETING_NOT_UNSCHEDULED'] = 'Email Marketing is not Un Scheduled cannot schedule';
$app_strings['LBL_INCORRECT_RECORD_ID'] = 'Incorrect record id';

$app_strings['LBL_TEST_ENTRIES_DELETED'] = 'Test Entries Deleted.';
$app_strings['LBL_UNABLE_TO_GET_ID'] = 'Unable to retrieve Email Marketing ID';
$app_strings['LBL_UNABLE_TO_DELETE_TEST_ENTRIES'] = 'Error Deleting Test Entries. See logs for more info';
$app_strings['LBL_SECTION_KEY_NOT_DEFINED'] = 'Section key not defined';
$app_strings['LBL_DOES_BOUNCE_EXIST'] = 'Does a Bounce Email exist?';
$app_strings['LBL_IS_OUTBOUND_CONNECTED'] = 'Is Outbound Email Connected?';
$app_strings['LBL_CAMPAIGN_SETTINGS'] = 'Settings';

$app_strings['LBL_SEND_FROM_QUEUE_DYNAMIC_LABEL'] = '{{ fields.send-from-queue.value }}';
$app_strings['LBL_EMAIL_TO_QUEUE_DYNAMIC_LABEL'] = '{{ fields.email-to-queue.value }}';
$app_strings['LBL_POLL_BOUNCED_CAMPAIGN_DYNAMIC_LABEL'] = '{{ fields.pollMonitoredInboxesForBouncedCampaignEmails.value }}';

$app_strings['LBL_CRON_LINUX_DESC1_DYNAMIC'] = '{{ fields.desc1.value }}';
$app_strings['LBL_CRON_LINUX_DESC2_DYNAMIC'] = '{{ fields.desc2.value }}';
$app_strings['LBL_CRON_LINUX_DESC3_DYNAMIC'] = '{{ fields.desc3.value }}';
$app_strings['LBL_CRON_LINUX_DESC4_DYNAMIC'] = '{{ fields.desc4.value }}';
$app_strings['LBL_CRON_LINUX_DESC5_DYNAMIC'] = '{{ fields.desc5.value }}';
$app_strings['LBL_CRON_LINUX_DESC6_DYNAMIC'] = '{{ fields.desc6.value }}';
$app_strings['LBL_CRON_LINUX_DESC7_DYNAMIC'] = '{{ fields.desc7.value }}';
$app_strings['LBL_CRON_LINUX_DESC8_DYNAMIC'] = '{{ fields.desc8.value }}';

$app_strings['LBL_CRON_WIN_DESC1_DYNAMIC'] = '{{ fields.desc1.value }}';
$app_strings['LBL_CRON_WIN_DESC2_DYNAMIC'] = '{{ fields.desc2.value }}';
$app_strings['LBL_CRON_WIN_DESC3_DYNAMIC'] = '{{ fields.desc3.value }}';
$app_strings['LBL_CRON_WIN_DESC4_DYNAMIC'] = '{{ fields.desc4.value }}';
$app_strings['LBL_CRON_WIN_DESC5_DYNAMIC'] = '{{ fields.desc5.value }}';

$app_strings['LBL_CRON_LAST_RUN'] = 'Last successful run';
$app_strings['LBL_CRON_LAST_USER_TO_RUN'] = 'Last user to run schedulers';
$app_strings['LBL_LAST_RUN_VALUE'] = '{{ fields.lastRun.value }}';
$app_strings['LBL_LAST_USER_RUN_VALUE'] = '{{ fields.user.value }}';
$app_strings['LBL_RUN_USER_INVALID'] = 'This user is not part of `allowed_cron_users` config setting. Therefore the last run was not successful';
$app_strings['LBL_SCHEDULERS_NEVER_RUN'] = 'Schedulers have never been run.';
$app_strings['LBL_MARKETING_ITEMS_PER_RUN'] = 'Campaign Marketing Items Per Run';
$app_strings['LBL_EMAILS_PER_RUN'] = 'Campaign Emails Per Run';
$app_strings['LBL_TRACKERS_ENABLED'] = 'Trackers Enabled';
$app_strings['LBL_TRACKER_LINKS_ENABLED'] = 'Tracker Links Enabled';

$app_strings['LBL_MARKETING_ITEMS_PER_RUN_DYNAMIC_LABEL'] = '{{ fields.campaign_marketing_items_per_run.value }}';
$app_strings['LBL_EMAILS_PER_RUN_DYNAMIC_LABEL'] = '{{ fields.campaign_emails_per_run.value }}';
$app_strings['LBL_EMAILS_MAX_RETRIES'] = 'Campaign Emails Max Retries';
$app_strings['LBL_EMAILS_MAX_RETRIES_DYNAMIC_LABEL'] = '{{ fields.campaign_emails_max_retries.value }}';
$app_strings['LBL_EMAILS_THRESHOLD'] = 'Campaign Emails Error Threshold Per Batch';
$app_strings['LBL_EMAILS_THRESHOLD_DYNAMIC_LABEL'] = '{{ fields.campaign_emails_threshold.value }}';
$app_strings['LBL_TRACKERS_ENABLED_DYNAMIC_LABEL'] = '{{ fields.trackers_enabled.value }}';
$app_strings['LBL_UNSUBSCRIBE'] = 'Unsubscribe';
$app_strings['LBL_INACTIVE'] = 'Inactive';
$app_strings['LBL_DISPLAYING_TEST_EMAIL_MARKETING_DATA'] = 'Charts and Subpanels currently displaying data generated from Test Emails.';
$app_strings['LBL_DASH_SYMBOL'] = '-';
$app_strings['LBL_FIELD_STORAGE_NOT_SET'] = 'File storage type not set for field. Unable to upload file.';
$app_strings['LBL_FIELD_STORAGE_INVALID_TYPE'] = 'File storage type is not valid for field. Unable to upload file.';
$app_strings['LBL_UPLOAD'] = 'Upload';
$app_strings['LBL_UPLOAD_FAILED'] = 'Upload failed, please try again later';
$app_strings['LBL_UPLOADING'] = 'Uploading';
$app_strings['LBL_UPLOAD_FROM_FILES'] = 'Upload from files';
$app_strings['LBL_ATTACH_DOCUMENTS'] = 'Adjuntar Documentos';
$app_strings['LBL_FILE_FIELD_UPLOAD_BUTTON_DESCRIPTION'] = 'Click or drag a file here to upload';
$app_strings['LBL_ATTACHMENTS_FIELD_UPLOAD_BUTTON_DESCRIPTION'] = 'Drag and drop a file here to upload';
$app_strings['LBL_SOME_ATTACHMENTS_FAILED'] = 'Some attachments failed to upload. See logs for more info.';
$app_strings['LBL_UPLOAD_IMAGE'] = 'Upload Image';
$app_strings['LBL_DOWNLOAD_IMAGE'] = 'Download Image';
$app_strings['LBL_PREVIEW_IMAGE'] = 'Preview Image';
$app_strings['LBL_UPLOAD_IMAGE_DESCRIPTION'] = 'Click or drag an image here to upload';
$app_strings['LBL_INVALID_PROCESS_OPTIONS'] = 'Invalid process options. See logs for more info.';
$app_strings['LBL_TEMPORARY'] = 'Temporary';
$app_strings['LBL_MAX_FILE_SIZE_EXCEEDED'] = 'The file exceeds the maximum allowed size.';
$app_strings['LBL_UNSUPPORTED_IMAGE_TYPE'] = 'The image type is not supported.';
$app_strings['LBL_UNSUPPORTED_FILE_TYPE'] = 'The file type is not supported.';
$app_strings['LBL_UNSUPPORTED_IMAGE_FILE_TYPE'] = 'This image type is not supported.';
$app_strings['LBL_MALWARE_DETECTED'] = 'Malware detected in uploaded file. The upload has been rejected.';

$app_strings['LBL_DEFAULT_OUTBOUND_NOT_SET'] = 'Unable to retrieve Default Outbound Email';
$app_strings['LBL_SMTP_UNABLE_TO_CONNECT']='Unable to connect to SMTP server with the current Outbound Email settings.';
$app_strings['LBL_DEFAULT_OUTBOUND_NOT_CONFIGURED'] = 'Outbound Email Account not correctly configured.';

$app_strings['LBL_CRON_UNRECOMMENDED_USER'] = 'You are currently running as root, this is NOT recommended, would you like to continue (y,n)? ';
$app_strings['LBL_UNKNOWN_USER'] = 'Unknown User';

$app_strings['LBL_DRAFTS'] = 'Borradores';
$app_strings['LBL_DRAFT_ITEM_LAST_MODIFIED'] = '{{fields.date_modified.value}}';
$app_strings['LBL_DRAFT_ITEM_TO_EMPTY'] = 'No Recipient(s)';
$app_strings['LBL_DRAFT_ITEM_TO'] = '{{fields.to_addrs_names.valueList|filter:primary=true:attributeKey=name}}';
$app_strings['LBL_DRAFT_ITEM_TO_ICON'] = '{{fields.to_icon_type.value}}';
$app_strings['LBL_DRAFTS_TOTAL'] = '{{fields.count.value}}';
$app_strings['LBL_DRAFTS_DELETED_SUCCESSFULLY'] = 'Drafts Deleted Successfully.';
$app_strings['LBL_DRAFT_DELETED_SUCCESSFULLY'] = 'Draft Deleted Successfully.';
$app_strings['LBL_DRAFTS_DELETED_UNSUCCESSFULLY'] = 'Drafts Not Deleted Successfully. See logs for more info.';
$app_strings['LBL_DRAFT_DELETED_UNSUCCESSFULLY'] = 'Draft Not Deleted Successfully. See logs for more info.';
$app_strings['LBL_OPEN_DRAFT'] = 'Open Draft';
$app_strings['LBL_DELETE_DRAFT'] = 'Delete Draft';
$app_strings['LBL_UNABLE_TO_GET_DRAFT_ID'] = 'Unable to retrieve Draft ID.';
$app_strings['LBL_UNABLE_TO_DELETE_DRAFT'] = 'Unable to delete draft.';
$app_strings['LBL_EMAIL_NOT_DRAFT'] = 'Email is no longer a draft.';
$app_strings['LBL_DRAFT_DELETED_SUCCESSFULLY'] = 'Draft Deleted Successfully.';

$app_strings['LBL_CANNOT_DELETE_LATEST_REVISION'] = 'You cannot delete the latest revision of a document.';
$app_strings['LBL_NO_DOCUMENT_ID_PROVIDED'] = 'Cannot find document to delete revision, no document id provided.';
$app_strings['LBL_NO_RECORD_ID_PROVIDED'] = 'Cannot find docuemnt revision to delete, no record id provided.';
$app_strings['LBL_DELETE_REVISION_CONFIRM'] = 'Are you sure you want to delete this revision?';
$app_strings['LBL_DOCUMENT_NOT_FOUND'] = 'Document not found.';
$app_strings['LBL_EMAIL_ATTACHMENT_DOCUMENT_DELETED'] = 'One or more attached documents have been deleted and cannot be sent.';

$app_strings['LBL_DISMISS_INVALID_STATUS'] = 'This record cannot be dismissed while it is still in progress.';
$app_strings['LBL_DISMISS_FAILED'] = 'Failed to dismiss. Please try again.';
$app_strings['LBL_RERUN_NOT_ELIGIBLE'] = 'This record is not eligible for re-run. It may not have completed with failures or re-run may not be supported.';
$app_strings['LBL_RETRY_FAILED_NOT_ELIGIBLE'] = 'This record is not eligible for retry. It may not have completed with failures or retry may not be supported.';
$app_strings['LBL_ASYNC_TASK_UNSUPPORTED_MODULE'] = 'This module does not support async task actions.';
$app_strings['LBL_RERUN_SUCCESS'] = 'Task has been re-queued and will restart from the beginning.';
$app_strings['LBL_RETRY_FAILED_SUCCESS'] = 'Failed items have been re-queued for processing.';

$app_strings['LBL_MIGRATE_GOOGLE_CALENDAR_SYNC_SIBLING_RUNNING'] = 'Cannot run this migration while "Migrate Google Calendar Users Sync" is currently pending / running.';
$app_strings['LBL_MIGRATE_GOOGLE_CALENDAR_SYNC_USERS_SIBLING_RUNNING'] = 'Cannot run this migration while "Migrate Google Calendar Sync" is currently pending / running.';

$app_strings['LBL_CANNOT_DELETE_LATEST_REVISION'] = 'You cannot delete the latest revision of a document.';
$app_strings['LBL_NO_DOCUMENT_ID_PROVIDED'] = 'Cannot find document to delete revision, no document id provided.';
$app_strings['LBL_NO_RECORD_ID_PROVIDED'] = 'Cannot find docuemnt revision to delete, no record id provided.';

$app_strings['LBL_CANNOT_DELETE_LATEST_REVISION'] = 'You cannot delete the latest revision of a document.';
$app_strings['LBL_NO_DOCUMENT_ID_PROVIDED'] = 'Cannot find document to delete revision, no document id provided.';
$app_strings['LBL_NO_RECORD_ID_PROVIDED'] = 'Cannot find docuemnt revision to delete, no record id provided.';

$app_list_strings['email_import_timeframe_start_dom'] = [
    '-1 year' => '1 Year',
    '-6 months' => '6 Months',
    '-3 months' => '3 Months',
    '-30 days' => '30 Days',
    '-15 days' => '15 Days',
    '-5 days' => '5 Days',
    '-1 days' => '1 Day',
    '0 days' => '0 Days',
];

$app_strings['LBL_NOT_AUTHORIZED'] = 'Not authorized';
