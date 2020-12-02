var tabla;

function init(){
    $('#menu_form').parsley();

    $("#menu_form").on("submit",function(e){
        guardaryeditar(e);	
    });    
}

$(document).ready(function(){


});

function guardaryeditar(e){
    e.preventDefault();
    var formData = new FormData($("#menu_form")[0]);
    
}

init();