<?php
// Forzar a PHP a mostrar cualquier error fatal en la respuesta HTTP para depuración
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

global $current_user, $db;

$tipo_cobro = !empty($_POST['tipo_cobro']) ? $_POST['tipo_cobro'] : 'cuota_admin';
$conjunto_id = !empty($_POST['conjunto_id']) ? $_POST['conjunto_id'] : '';
$apartamentos_ids = !empty($_POST['apartamentos']) ? $_POST['apartamentos'] : array();

if (empty($conjunto_id) || empty($apartamentos_ids)) {
    ob_clean();
    header('HTTP/1.1 400 Bad Request');
    header('Content-Type: application/json');
    echo json_encode(array('status' => 'error', 'message' => 'Parámetros incompletos.'));
    die();
}

$count = 0;
$label_tipo = ($tipo_cobro == 'cuota_admin') ? 'Cuota Administración' : 'Parqueadero';

$meses = array("January"=>"Enero","February"=>"Febrero","March"=>"Marzo","April"=>"Abril","May"=>"Mayo","June"=>"Junio","July"=>"Julio","August"=>"Agosto","September"=>"Septiembre","October"=>"Octubre","November"=>"Noviembre","December"=>"Diciembre");
$mes_actual = $meses[date('F')] . " " . date('Y'); 

require_once('modules/Administration/Administration.php');

$sql_num = "SELECT MAX(number) as last_number FROM aos_invoices";
$res_num = $db->query($sql_num);
$row_num = $db->fetchByAssoc($res_num);
$siguiente_numero = (!empty($row_num['last_number'])) ? (int)$row_num['last_number'] + 1 : 1;

foreach ($apartamentos_ids as $apt_id) {
    try {
        // 1. Inmueble
        $apt = BeanFactory::getBean('caml_apartamentos', $apt_id);
        if (empty($apt->id)) {
            continue;
        }

        $precio_unitario = 0;

        if ($tipo_cobro == 'cuota_admin') {
            $precio_unitario = (int)$apt->valor_admin;
        } else {
            $apt_id_clean = $db->quote($apt->id);
            
            $sql_parqueadero = "SELECT t.valor, c.total_pagar 
                                FROM caml_control_accesos c
                                INNER JOIN caml_control_accesos_cstm ccst ON c.id = ccst.id_c
                                INNER JOIN caml_tarifa t ON ccst.caml_tarifa_id_c = t.id AND t.deleted = 0
                                INNER JOIN caml_apartamentos_caml_control_accesos_1_c rel ON c.id = rel.caml_apartamentos_caml_control_accesos_1caml_control_accesos_idb AND rel.deleted = 0
                                WHERE rel.caml_apartamentos_caml_control_accesos_1caml_apartamentos_ida = '$apt_id_clean' 
                                AND c.deleted = 0
                                AND (LOWER(t.tipo_cobro) LIKE '%mensual%' OR LOWER(t.name) LIKE '%mensual%')
                                LIMIT 1";
                                
            $res_parqueadero = $db->query($sql_parqueadero);
            if ($row_p = $db->fetchByAssoc($res_parqueadero)) {
                if (!empty($row_p['valor']) && (int)$row_p['valor'] > 0) {
                    $precio_unitario = (int)$row_p['valor'];
                } elseif (!empty($row_p['total_pagar']) && (int)$row_p['total_pagar'] > 0) {
                    $precio_unitario = (int)$row_p['total_pagar'];
                }
            }

            if ($precio_unitario <= 0) {
                continue;
            }
        }

        // 2. Factura
        $invoice = BeanFactory::newBean('AOS_Invoices');
        $invoice->name = "Factura - " . $label_tipo . " - " . $apt->name . " (" . $mes_actual . ")";
        $invoice->status = 'Unpaid'; 
        $invoice->invoice_date = date('Y-m-d');
        $invoice->due_date = date('Y-m-d', strtotime('+15 days')); 
        $invoice->billing_account_id = $conjunto_id;
        $invoice->assigned_user_id = $current_user->id;
        $invoice->caml_apartamentos_aos_invoices_1caml_apartamentos_ida = $apt->id;
        $invoice->number = $siguiente_numero; 

        $invoice->save();
        $siguiente_numero++; 

        // 3. Línea de Producto
        $lineItem = BeanFactory::newBean('AOS_Products_Quotes');
        $lineItem->name = "Cobro de " . $label_tipo . " - Periodo: " . $mes_actual;
        $lineItem->parent_type = 'AOS_Invoices';
        $lineItem->parent_id = $invoice->id;
        $lineItem->product_qty = 1;
        $lineItem->product_list_price = $precio_unitario;
        $lineItem->product_unit_price = $precio_unitario;
        $lineItem->vat_amt = 0;
        $lineItem->product_total_price = $precio_unitario;
        $lineItem->save();

        // 4. Totales
        $invoice->subtotal_amount = $precio_unitario;
        $invoice->total_amount = $precio_unitario;
        $invoice->save();

        // 5. OBTENER RESIDENTES Y CREAR ALERTAS INTERNAS
        $apt_id_db = $db->quote($apt->id);
        $sql_residentes = "SELECT cont.id, cont.first_name, cont.last_name, eadr.email_address, users.id AS user_id
                           FROM contacts cont
                           INNER JOIN caml_apartamentos_contacts_1_c rel ON cont.id = rel.caml_apartamentos_contacts_1contacts_idb AND rel.deleted = 0
                           LEFT JOIN email_addr_bean_rel erel ON cont.id = erel.bean_id AND erel.bean_module = 'Contacts' AND erel.deleted = 0 AND erel.primary_address = 1
                           LEFT JOIN email_addresses eadr ON erel.email_address_id = eadr.id AND eadr.deleted = 0
                           LEFT JOIN users ON (users.user_name = eadr.email_address AND users.deleted = 0 AND users.status = 'Active')
                           WHERE rel.caml_apartamentos_contacts_1caml_apartamentos_ida = '$apt_id_db' 
                           AND cont.deleted = 0";

        $res_residentes = $db->query($sql_residentes);

        while ($residente = $db->fetchByAssoc($res_residentes)) {
            // Generar Alerta en la Campana de Notificaciones del CRM
            if (!empty($residente['user_id'])) {
                $alert = BeanFactory::newBean('Alerts');
                $alert->name = "Nueva Factura - " . $label_tipo;
                $alert->description = "Se generó cobro de " . $label_tipo . " para " . $apt->name . " por $" . number_format($precio_unitario, 0);
                $alert->is_read = 0;
                $alert->target_module = 'AOS_Invoices';
                $alert->type = 'info';
                $alert->url_redirect = "index.php?module=AOS_Invoices&action=DetailView&record=" . $invoice->id;
                $alert->assigned_user_id = $residente['user_id'];
                $alert->status = 'active';
                $alert->save();
            }
            
            // --- ENVÍO DE CORREO APAGADO PARA PRUEBAS LOCALES ---
            // Se omite el uso de Mailer de forma temporal para evitar Fatal Errors de dependencias de Suite8
        }

        $count++;
    } catch (Exception $e) {
        ob_clean();
        header('HTTP/1.1 500 Internal Server Error');
        echo "Error en Apartamento ID: $apt_id. Mensaje: " . $e->getMessage();
        die();
    }
}

// Retornar éxito limpio a la vista
ob_clean();
header('Content-Type: application/json');
echo json_encode(array('status' => 'success', 'count' => $count));
die();