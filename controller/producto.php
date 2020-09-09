<?php
    require_once("../config/conexion.php");
    require_once("../models/Producto.php");
    $producto = new Producto();

    switch($_GET["op"]){

        case "combo":
            $datos=$producto->get_producto($_POST["cat_id"]);
            if(is_array($datos)==true and count($datos)>0){
                $html= "<option></option>";
                foreach($datos as $row)
                {
                    $html.= "<option value='".$row['prod_id']."'>".$row['prod_nom']."</option>";
                }
                echo $html;      
            }
        break;
    }

?>