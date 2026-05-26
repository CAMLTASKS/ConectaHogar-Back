<?php
if (!defined('sugarEntry') || !sugarEntry) die('Not A Valid Entry Point');

class nameApartment
{
    /**
     * Automatiza el nombre del apartamento antes de guardar basándose en Tipo y Unidad
     */
    public function anadirName($bean, $event, $arguments)
    {
        // 1. Recuperar los valores limpios de los campos
        $tipo_key = isset($bean->tipo) ? trim($bean->tipo) : '';
        $unidad = isset($bean->unidad) ? trim($bean->unidad) : '';
        $bloque = isset($bean->bloque) ? trim($bean->bloque) : '';

        // Si por alguna razón ambos están vacíos, no forzamos un nombre vacío
        if (empty($tipo_key) && empty($unidad)) {
            return;
        }

        // 2. Traducir el Key del Dropdown a su etiqueta visible (Label)
        $tipo_label = $tipo_key;
        if (!empty($tipo_key)) {
            global $app_list_strings;
            
            // SuiteCRM guarda las listas en $app_list_strings. Buscamos el nombre de tu lista.
            // Nota: Por defecto en Estudio se suele crear como 'tipo_list' o similar. 
            // Si conoces el nombre exacto de la lista, reemplaza 'caml_apartamentos_tipo_list' abajo.
            $lista_dropdown = 'tipo_list'; 
            
            if (isset($app_list_strings[$lista_dropdown][$tipo_key])) {
                $tipo_label = $app_list_strings[$lista_dropdown][$tipo_key];
            } elseif (isset($bean->field_defs['tipo']['options'])) {
                // Intento alternativo dinámico leyendo los metadatos del campo
                $list_name = $bean->field_defs['tipo']['options'];
                if (isset($app_list_strings[$list_name][$tipo_key])) {
                    $tipo_label = $app_list_strings[$list_name][$tipo_key];
                }
            }
        }

        // 3. Construir la mezcla del Name de forma limpia
        // Formato sugerido: "Tipo Unidad (Bloque)" si el bloque existe, o "Tipo Unidad"
        $nuevo_nombre = $tipo_label;
        
        if (!empty($unidad)) {
            $nuevo_nombre .= " " . $unidad;
        }
        
        if (!empty($bloque)) {
            $nuevo_nombre .= " - Bloque " . $bloque;
        }

        // 4. Asignar el nuevo string al name del registro
        $bean->name = trim($nuevo_nombre);
        
        $GLOBALS['log']->fatal("ConectaHogar Log: Name de apartamento automatizado a: [" . $bean->name . "]");
    }
}