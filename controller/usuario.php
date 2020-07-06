<?php
    require_once("../config/conexion.php");
    require_once("../models/Usuario.php");
    $usuario = new Usuario();

    switch($_GET["op"]){

        case "guardar":
            $datos = $usuario->get_correo_usuario($_POST["usu_correo"]);
            if($_POST["usu_pass1"] == $_POST["usu_pass2"]){
                if(is_array($datos)==true and count($datos)==0){
                    $usuario->insert_usuario($_POST["usu_nom"],$_POST["usu_ape"],$_POST["usu_correo"],$_POST["usu_pass1"]);
                }else{
                    echo "correo";
                } 
            }else{
                echo "pass";
            }
        break;

        case "correo":
            $datos = $usuario->get_correo_usuario($_POST["usu_correo"]);
            echo json_encode( $datos);
        break;

    }

?>