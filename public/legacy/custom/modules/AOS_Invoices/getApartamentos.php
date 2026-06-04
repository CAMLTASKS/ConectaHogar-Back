<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

global $db;

if (empty($_POST['account_id'])) {
    ob_clean();
    header('Content-Type: application/json');
    echo json_encode(array('error' => 'No se proporcionó el ID del conjunto.'));
    die();
}

$account_id = $db->quote($_POST['account_id']);
$apartamentos = array();

// INTENTO 1: Buscar mediante la tabla intermedia estándar de relaciones de Studio (Muchos a Muchos / Uno a Muchos con tabla relacional)
$queryIntermedia = "SELECT apt.id, apt.name, apt.valor_admin 
                    FROM caml_apartamentos apt
                    INNER JOIN accounts_caml_apartamentos_1_c rel 
                        ON apt.id = rel.accounts_caml_apartamentos_1caml_apartamentos_idb
                    WHERE rel.accounts_caml_apartamentos_1accounts_ida = '$account_id' 
                    AND apt.deleted = 0 
                    AND rel.deleted = 0
                    ORDER BY apt.name ASC";

$result = $db->query($queryIntermedia, false); // El false evita que SuiteCRM arroje un error fatal si la tabla no existe

// Si la tabla intermedia existía y devolvió registros, los procesamos
if ($result && $db->getRowCount($result) > 0) {
    while ($row = $db->fetchByAssoc($result)) {
        $apartamentos[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'valor_admin' => !empty($row['valor_admin']) ? (int)$row['valor_admin'] : 0
        );
    }
} else {
    // INTENTO 2: Si la tabla intermedia no existe o está vacía, buscamos por columna directa en la tabla principal
    $queryDirecta = "SELECT id, name, valor_admin 
                     FROM caml_apartamentos 
                     WHERE accounts_caml_apartamentos_1accounts_ida = '$account_id' 
                     AND deleted = 0 
                     ORDER BY name ASC";
                     
    $resultDirecto = $db->query($queryDirecta, false);
    
    if ($resultDirecto) {
        while ($row = $db->fetchByAssoc($resultDirecto)) {
            $apartamentos[] = array(
                'id' => $row['id'],
                'name' => $row['name'],
                'valor_admin' => !empty($row['valor_admin']) ? (int)$row['valor_admin'] : 0
            );
        }
    }
}

// Limpiar buffers y responder JSON impecable
ob_clean();
header('Content-Type: application/json');
echo json_encode($apartamentos);
die();