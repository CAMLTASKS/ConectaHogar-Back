<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

/**
 * EntryPoint automático para cargar las 20 localidades de Bogotá en el módulo jjwg_Areas
 * Desarrollado para ConectaHogar
 */

global $current_user;


require_once('modules/jjwg_Areas/jjwg_Areas.php');

$localidades = [
    'Usaquén' => "-74.010,4.700\n-74.040,4.700\n-74.040,4.830\n-74.010,4.830\n-74.010,4.700",
    'Chapinero' => "-74.030,4.630\n-74.070,4.630\n-74.050,4.680\n-74.030,4.680\n-74.030,4.630",
    'Santa Fe' => "-74.040,4.590\n-74.080,4.590\n-74.070,4.620\n-74.040,4.620\n-74.040,4.590",
    'San Cristóbal' => "-74.050,4.530\n-74.090,4.530\n-74.080,4.580\n-74.050,4.580\n-74.050,4.530",
    'Usme' => "-74.080,4.400\n-74.150,4.400\n-74.120,4.540\n-74.080,4.540\n-74.080,4.400",
    'Tunjuelito' => "-74.120,4.560\n-74.150,4.560\n-74.140,4.600\n-74.110,4.600\n-74.120,4.560",
    'Bosa' => "-74.170,4.600\n-74.220,4.600\n-74.200,4.650\n-74.160,4.650\n-74.170,4.600",
    'Kennedy' => "-74.130,4.610\n-74.180,4.610\n-74.160,4.670\n-74.120,4.670\n-74.130,4.610",
    'Fontibón' => "-74.120,4.660\n-74.160,4.660\n-74.150,4.700\n-74.110,4.700\n-74.120,4.660",
    'Engativá' => "-74.090,4.680\n-74.140,4.680\n-74.130,4.730\n-74.090,4.730\n-74.090,4.680",
    'Suba' => "-74.040,4.720\n-74.130,4.720\n-74.110,4.830\n-74.030,4.830\n-74.040,4.720",
    'Barrios Unidos' => "-74.060,4.650\n-74.090,4.650\n-74.080,4.690\n-74.060,4.690\n-74.060,4.650",
    'Teusaquillo' => "-74.070,4.620\n-74.100,4.620\n-74.090,4.660\n-74.070,4.660\n-74.070,4.620",
    'Los Mártires' => "-74.080,4.590\n-74.100,4.590\n-74.090,4.620\n-74.070,4.620\n-74.080,4.590",
    'Antonio Nariño' => "-74.090,4.570\n-74.110,4.570\n-74.100,4.600\n-74.080,4.600\n-74.090,4.570",
    'Puente Aranda' => "-74.090,4.600\n-74.130,4.600\n-74.120,4.640\n-74.090,4.640\n-74.090,4.600",
    'La Candelaria' => "-74.065,4.590\n-74.078,4.590\n-74.075,4.605\n-74.062,4.605\n-74.065,4.590",
    'Rafael Uribe Uribe' => "-74.100,4.540\n-74.130,4.540\n-74.120,4.590\n-74.090,4.590\n-74.100,4.540",
    'Ciudad Bolívar' => "-74.110,4.420\n-74.190,4.420\n-74.160,4.580\n-74.120,4.580\n-74.110,4.420",
    'Sumapaz' => "-74.150,3.850\n-74.450,3.850\n-74.300,4.300\n-74.100,4.300\n-74.150,3.850",
];

echo "<h3>Iniciando aprovisionamiento de localidades en ConectaHogar...</h3>";
$creados = 0;
$actualizados = 0;

foreach ($localidades as $nombre => $coordenadas) {
    
    // Verificar si ya existe para no duplicar datos en las pruebas
    $check_area = BeanFactory::newBean('jjwg_Areas');
    $query = "name = '" . db_convert($nombre, 'text') . "' AND deleted = 0";
    $lista_existente = $check_area->get_full_list('', $query);
    
    if (!empty($lista_existente)) {
        $area = $lista_existente[0];
        echo "Localidad <b>{$nombre}</b> ya existe. Actualizando coordenadas...<br>";
        $actualizados++;
    } else {
        $area = BeanFactory::newBean('jjwg_Areas');
        $area->name = $nombre;
        $area->city = "Bogotá";
        $area->state = "Bogotá D.C.";
        $area->country = "Colombia";
        $area->description = "Polígono de geocerca automatizado para la localidad de {$nombre} en ConectaHogar.";
        $area->assigned_user_id = $current_user->id;
        echo "Creando localidad <b>{$nombre}</b>...<br>";
        $creados++;
    }
    
    // Asignar las coordenadas (Longitud,Latitud\n...)
    $area->coordinates = $coordenadas;
    
    // Guardar el registro. La lógica interna de jjwg_Areas procesará los centroides automáticamente.
    $area->save();
}

echo "<br><b>Aprovisionamiento finalizado con éxito.</b><br>";
echo "Polígonos Creados: {$creados} | Polígonos Actualizados: {$actualizados}<br>";