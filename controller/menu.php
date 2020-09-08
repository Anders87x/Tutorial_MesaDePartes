<?php
    require_once("../config/conexion.php");
    require_once("../models/Menu.php");
    $menu = new Menu();

    switch($_GET["op"]){

        case "listar":
            $datos=$menu->get_menu();
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["men_ruta"];
                $sub_array[] = $row["men_icon"];
                $sub_array[] = $row["men_nom"];
                $sub_array[] = '<button type="button" onClick="editar('.$row["men_id"].');"  id="'.$row["men_id"].'" class="btn btn-outline-warning btn-icon"><div><i class="fa fa-edit"></i></div></button>';
                $sub_array[] = '<button type="button" onClick="eliminar('.$row["men_id"].');"  id="'.$row["men_id"].'" class="btn btn-outline-danger btn-icon"><div><i class="fa fa-trash"></i></div></button>';
                $data[] = $sub_array;
            }
        
            $results = array(
                "sEcho"=>1,
                "iTotalRecords"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);
        break;

        case "activarydesactivar":
            $datos=$menu->get_menu_x_id($_POST["men_id"]);
            if(is_array($datos)==true and count($datos)>0){
                $menu->delete_menu($_POST["men_id"]);
            } 
        break;

        case 'mostrar':
            $datos=$menu->get_menu_x_id($_POST["men_id"]);
            if(is_array($datos)==true and count($datos)>0){
                foreach($datos as $row)
                {
                    $output["men_id"] = $row["men_id"];
                    $output["men_ruta"] = $row["men_ruta"];
                    $output["men_icon"] = $row["men_icon"];
                    $output["men_nom"] = $row["men_nom"];
                }
                echo json_encode($output);
            }
        break;

        case "guardaryeditar":
                if(empty($_POST["men_id"])){       
                    if(is_array($datos)==true and count($datos)==0){
                        $menu->insert_menu($_POST["men_ruta"],$_POST["men_icon"],$_POST["men_nom"]);     
                    }
                }
                else {
                    $menu->update_menu($_POST["men_id"],$_POST["men_ruta"],$_POST["men_icon"],$_POST["men_nom"]); 
                }
        break;

    }
?>