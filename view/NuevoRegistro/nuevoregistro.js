var usu_id = $("#useridx").val();

function init(){
    
}

$(document).ready(function(){
    $.post("../../controller/partes.php?op=insert",{usu_id:usu_id},function(data){
        data = JSON.parse(data);
        $('#part_id').val(data.part_id);
    });
});


$(document).on("click","#btnguardar", function(){
    var part_id = $('#part_id').val();
    var part_asun = $('#part_asun').val();
    var part_desc = $('#part_desc').val();

    if(part_asun=='' || part_desc==''){
        Swal.fire(
            'Mesa De Partes',
            'Campos Vacios, por favor verificar',
            'error'
        );
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

init();