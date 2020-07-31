var usu_id = $("#useridx").val();

function init(){
    $("#detalle_form").on("submit",function(e){
        guardaryeditar(e);	
    });
}

$(document).ready(function(){
    $.post("../../controller/partes.php?op=insert",{usu_id:usu_id},function(data){
        data = JSON.parse(data);
        $('#part_id').val(data.part_id);

        llenartabla(data.part_id);
    });
});

function guardaryeditar(e){
    e.preventDefault();
    var formData = new FormData($("#detalle_form")[0]);
    $.ajax({
        url: "../../controller/partes.php?op=insertdetalle",
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        success: function(datos){ 
            Swal.fire(
                'Mesa De Partes',
                'Se registro Correctamente',
                'success'
            );
            $("#modalarchivo").modal('hide');
            var part_id =  $('#part_id').val();
            llenartabla(part_id);
        }
    });        
}

$(document).on("click","#btnguardar", function(){
    var part_id = $('#part_id').val();
    var part_asun = $('#part_asun').val();
    var part_desc = $('#part_desc').val();

    var usu_nom = $('#usernomx').val();
    var usu_ape = $('#userapex').val();

    if(part_asun=='' || part_desc==''){
        Swal.fire(
            'Mesa De Partes',
            'Campos Vacios',
            'error'
        );
    }else{
        $.post("../../controller/partes.php?op=update",{part_id:part_id,part_asun:part_asun,part_desc:part_desc},function(data){
            let timerInterval;
            Swal.fire({
            title: 'Mesa de Partes',
            html: 'Guardado Registro...Espere..<b></b>.',
            timer: 2000,
            timerProgressBar: true,
            onBeforeOpen: () => {
                Swal.showLoading();
                timerInterval = setInterval(() => {
                const content = Swal.getContent();
                if (content) {
                    const b = content.querySelector('b');
                    if (b) {
                    b.textContent = Swal.getTimerLeft();
                    }
                }
                }, 100);

                $.post("../../controller/email.php?op=send_solicitud", { part_id : part_id,usu_nom : usu_nom, usu_ape : usu_ape}, function(data){
               
                });
            },
            onClose: () => {
                clearInterval(timerInterval);
            }
            }).then((result) => {
                if (result.dismiss === Swal.DismissReason.timer) {
                    location.reload();
                }
            });
        });
    }
});

$(document).on("click","#btnadd", function(){
    $('#partd_obs').val('');
    $('#partd_file').val('');
    $("#modalarchivo").modal('show');
});

function llenartabla(part_id){
    tabla= $('#detalle_data').DataTable({
        "aProcessing": true,//Activamos el procesamiento del datatables
        "aServerSide": true,//Paginación y filtrado realizados por el servidor
        dom: 'Bfrtip',//Definimos los elementos del control de tabla
        "ajax":{
        url:"../../controller/partes.php?op=listardetalle",
        type : "post",
        data:{part_id:part_id},						
            error: function(e){
                console.log(e.responseText);
            },
        },
        "bDestroy": true,
        "responsive": true,
        "bInfo":true,
        "iDisplayLength": 10,
        "order": [[ 0, "desc" ]],
        "language": {
            "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {          
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        },
    });
}

function eliminar(partd_id){
    $.post("../../controller/partes.php?op=deletedetalle",{partd_id:partd_id},function(data){
        Swal.fire(
            'Mesa De Partes',
            'Se elimino correctamente',
            'info'
        );
    });

    var part_id =  $('#part_id').val();
    llenartabla(part_id);
}

init();