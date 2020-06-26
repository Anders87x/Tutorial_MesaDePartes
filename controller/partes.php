<?php
    require_once("../config/conexion.php");
    require_once("../models/Partes.php");
    $partes = new Partes();

    switch($_GET["op"]){

        case "insert":
            $datos = $partes->insert_partes($_POST["usu_id"]);
            if(is_array($datos)==true and count($datos)>0){
                foreach($datos as $row)
                {
                    $output["part_id"] = $row["part_id"];
                }
                echo json_encode($output);
            }
        break;

        case "update":
            $partes->update_partes($_POST["part_id"],$_POST["part_asun"],$_POST["part_desc"]);
        break;

        case "insertdetalle":
            $partes->insert_partesdetalle($_POST["part_id"],$_POST["partd_obs"],$_POST["partd_file"]);
        break;

    }

?>