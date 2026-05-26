<?php

// Silenciador de advertencias y obsolescencias de ConectaHogar para proteger el output JSON de la API
error_reporting(E_ALL & ~E_NOTICE & ~E_WARNING & ~E_DEPRECATED & ~E_STRICT);
ini_set('display_errors', '0');
ini_set('log_errors', '1');

global $legacyRoute;

if (isset($legacyRoute['script-name'], $legacyRoute['request-uri'])) {
    $_SERVER['SCRIPT_NAME'] = $legacyRoute['script-name'];
    $_SERVER['REQUEST_URI'] = $legacyRoute['request-uri'];
}

chdir('../');
require_once __DIR__ . '/Core/app.php';
$app->run();
