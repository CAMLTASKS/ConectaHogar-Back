<?php
if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

#[\AllowDynamicProperties]
class AOS_InvoicesViewEdit extends ViewEdit
{
    public function __construct()
    {
        parent::__construct();
    }

    public function display()
    {
        $this->populateInvoiceTemplates();
        
        // Renderiza la vista de edición estándar de SuiteCRM
        parent::display();

        // Inyecta la funcionalidad interactiva de Facturación Masiva
        $this->renderMassInvoiceFeature();
    }

    public function populateInvoiceTemplates()
    {
        global $app_list_strings;

        $sql = "SELECT id, name FROM aos_pdf_templates WHERE deleted='0' AND type='AOS_Invoices'";
        $res = $this->bean->db->query($sql);

        $app_list_strings['template_ddown_c_list'] = array();
        while ($row = $this->bean->db->fetchByAssoc($res)) {
            $app_list_strings['template_ddown_c_list'][$row['id']] = $row['name'];
        }
    }

    /**
     * Inyecta el botón de facturación masiva, estilos y la lógica modal vía JS/AJAX
     */
    private function renderMassInvoiceFeature()
    {
        echo '
        <style>
            .mass-invoice-modal { display:none; position:fixed; z-index:9999; left:0; top:0; width:100%; height:100%; background-color: rgba(0,0,0,0.5); padding-top:50px; }
            .mass-content { background-color:#fff; margin:auto; padding:20px; border:1px solid #888; width:70%; max-height:85vh; overflow-y:auto; border-radius:5px; color: #333; }
            .mass-header { font-size:18px; font-weight:bold; margin-bottom:15px; border-bottom:1px solid #eee; padding-bottom:10px; color: #444; }
            .mass-actions { margin-top:20px; text-align:right; border-top:1px solid #eee; padding-top:10px; }
            .apt-table { width:100%; margin-top:10px; border-collapse: collapse; }
            .apt-table th, .apt-table td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            .apt-table th { background-color: #f5f5f5; color: #333; }
            .mass-form-group { margin-bottom: 15px; }
            .mass-control { width:100%; height:34px; padding: 6px 12px; background-color: #fff; border: 1px solid #ccc; border-radius: 4px; }
        </style>

        <script type="text/javascript">
            $(document).ready(function() {
                // 1. Insertar el botón "Facturación Masiva" en la barra de acciones principal
                var massBtn = $(\'<input type="button" class="button" value="Facturación Masiva" id="MASS_INVOICE_BTN" style="background-color: #17a2b8; color: white; margin-left: 5px; font-weight: bold;">\');
                
                // Selector adaptado para la barra superior e inferior de Suite8 / Legacy
                $(\'td.buttons.action-buttons\').append(massBtn);

                // 2. Construir la estructura HTML del Modal
                var modalHtml = `
                    <div id="massInvoiceModal" class="mass-invoice-modal">
                        <div class="mass-content">
                            <div class="mass-header"><i class="fa fa-building"></i> Generar Facturación Masiva por Conjunto</div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-6 mass-form-group">
                                    <label><b>1. Tipo de Cobro:</b></label>
                                    <select id="mass_type" class="mass-control">
                                        <option value="cuota_admin">Cobrar Cuota Administración</option>
                                        <option value="parqueadero">Cobrar Parqueadero</option>
                                    </select>
                                </div>
                                <div class="col-xs-12 col-sm-6 mass-form-group">
                                    <label><b>2. Conjunto Seleccionado:</b></label>
                                    <div id="mass_conjunto_display" style="padding:7px 12px; background:#f9f9f9; border:1px solid #ccc; border-radius:4px; font-weight:bold; height:34px; line-height:20px;">
                                        Ninguno seleccionado
                                    </div>
                                </div>
                            </div>
                            
                            <div style="margin-top:15px;">
                                <label><b>3. Seleccione los Apartamentos del Conjunto:</b></label>
                                <div id="apt_container" style="max-height:280px; overflow-y:auto; border:1px solid #ccc; padding:10px; background:#fff; border-radius:4px;">
                                    <p style="color:gray; font-style:italic;">Por favor seleccione un Conjunto primero en el formulario principal.</p>
                                </div>
                            </div>

                            <div class="mass-actions">
                                <span id="mass_loading" style="display:none; color:#007bff; margin-right:15px; font-weight:bold;">
                                     Procesando facturas masivas... Por favor espere.
                                </span>
                                <input type="button" class="button" id="closeMassModal" value="Cancelar">
                                <input type="button" class="button primary" id="executeMassInvoice" value="Generar Facturas Masivas" style="background-color:#28a745; border-color:#28a745; color:white;">
                            </div>
                        </div>
                    </div>`;
                
                $(\'body\').append(modalHtml);

                // 3. Evento al hacer clic en el botón de facturación masiva
                $(document).on(\'click\', \'#MASS_INVOICE_BTN\', function() {
                    var conjuntoId = $(\'#billing_account_id\').val();
                    var conjuntoName = $(\'#billing_account\').val();

                    if(!conjuntoId || conjuntoName === "") {
                        alert("Por favor, seleccione primero un \'Conjunto\' (Cuenta) en el campo correspondiente antes de proceder.");
                        return false;
                    }

                    $(\'#mass_conjunto_display\').text(conjuntoName);
                    $(\'#massInvoiceModal\').show();
                    cargarApartamentos(conjuntoId);
                });

                // Cierre del modal
                $(document).on(\'click\', \'#closeMassModal\', function() {
                    $(\'#massInvoiceModal\').hide();
                });

                // 4. Buscar Apartamentos por AJAX utilizando el EntryPoint
                function cargarApartamentos(accountId) {
                    $(\'#apt_container\').html(\'<p><i class="fa fa-spinner fa-spin"></i> Cargando apartamentos del conjunto...</p>\');
                    $.ajax({
                        url: \'index.php?entryPoint=getApartamentosPorConjunto\',
                        type: \'POST\',
                        data: { account_id: accountId },
                        dataType: \'json\',
                        success: function(data) {
                            if(!data || data.length == 0) {
                                $(\'#apt_container\').html(\'<p style="color:red; font-weight:bold;">No se encontraron apartamentos activos vinculados a este conjunto.</p>\');
                                return;
                            }
                            var table = \'<table class="apt-table"><thead><tr><th width="15%"><input type="checkbox" id="check_all_apts" checked> Todos</th><th>Apartamento</th><th>Valor Admin</th></tr></thead><tbody>\';
                            $.each(data, function(i, apt) {
                                var valorAdminFormatted = apt.valor_admin ? parseInt(apt.valor_admin).toLocaleString() : \'0\';
                                table += `<tr>
                                    <td><input type="checkbox" class="apt-select" value="${apt.id}" checked></td>
                                    <td>${apt.name}</td>
                                    <td>$ ${valorAdminFormatted}</td>
                                </tr>`;
                            });
                            table += \'</tbody></table>\';
                            $(\'#apt_container\').html(table);

                            // Checkbox para seleccionar/deseleccionar todos
                            $(\'#check_all_apts\').change(function() {
                                $(\'.apt-select\').prop(\'checked\', $(this).prop(\'checked\'));
                            });
                        },
                        error: function() {
                            $(\'#apt_container\').html(\'<p style="color:red; font-weight:bold;">Error de comunicación con el servidor al buscar apartamentos.</p>\');
                        }
                    });
                }

                // 5. Enviar procesamiento de facturas masivas por AJAX
                $(document).on(\'click\', \'#executeMassInvoice\', function() {
                    var seleccionados = [];
                    $(\'.apt-select:checked\').each(function() {
                        seleccionados.push($(this).val());
                    });

                    if(seleccionados.length === 0) {
                        alert("Por favor, seleccione al menos un apartamento de la lista para facturar.");
                        return;
                    }

                    if(confirm("¿Confirmas que deseas generar facturas masivas para los " + seleccionados.length + " apartamentos seleccionados?")) {
                        $(\'#executeMassInvoice\').attr(\'disabled\', true);
                        $(\'#closeMassModal\').attr(\'disabled\', true);
                        $(\'#mass_loading\').show();

                        $.ajax({
                            url: \'index.php?entryPoint=procesarFacturacionMasiva\',
                            type: \'POST\',
                            data: {
                                tipo_cobro: $(\'#mass_type\').val(),
                                conjunto_id: $(\'#billing_account_id\').val(),
                                apartamentos: seleccionados
                            },
                            dataType: \'json\',
                            success: function(response) {
                                $(\'#mass_loading\').hide();
                                $(\'#executeMassInvoice\').attr(\'disabled\', false);
                                $(\'#closeMassModal\').attr(\'disabled\', false);
                                
                                if(response && response.status === \'success\') {
                                    alert("¡Proceso Finalizado! Se crearon de manera exitosa " + response.count + " facturas.");
                                    $(\'#massInvoiceModal\').hide();
                                } else {
                                    alert("Hubo un error interno en el procesamiento: " + (response.message || "Desconocido"));
                                }
                            },
                            error: function() {
                                $(\'#mass_loading\').hide();
                                $(\'#executeMassInvoice\').attr(\'disabled\', false);
                                $(\'#closeMassModal\').attr(\'disabled\', false);
                                alert("Error crítico del servidor al intentar generar la facturación masiva.");
                            }
                        });
                    }
                });
            });
        </script>
        ';
    }
}