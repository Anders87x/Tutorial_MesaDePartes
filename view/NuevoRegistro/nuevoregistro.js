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
            $('#detalle_form')[0].reset();
            $("#modalarchivo").modal('hide');
        }
    });        
}

$(document).on("click","#btnguardar", function(){
    var part_id = $('#part_id').val();
    var part_asun = $('#part_asun').val();
    var part_desc = $('#part_desc').val();

    if(part_asun=='' || part_desc==''){
        
    }else{
        $.post("../../controller/partes.php?op=update",{part_id:part_id,part_asun:part_asun,part_desc:part_desc},function(data){
            Swal.fire(
                'Mesa De Partes',
                'Se registro Correctamente',
                'success'
            );
        });
    }
});

$(document).on("click","#btnadd", function(){
    $("#modalarchivo").modal('show');
});

init();