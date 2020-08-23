<?php
    require_once("../../config/conexion.php");

    require_once("../../models/Menu.php");
    $menu = new Menu();
    $menx = $menu ->get_menu();
?>

<div class="content-side content-side-full">
    <ul class="nav-main">
        <?php
            for($i=0; $i<sizeof($menx);$i++){
        ?>
            <li>
                <a href="<?php echo $menx[$i]["men_ruta"]?>"><i class="<?php echo $menx[$i]["men_icon"]?>"></i><span class="sidebar-mini-hide"><?php echo $menx[$i]["men_nom"]?></span></a>
            </li>
        <?php
            }
        ?>
    </ul>
</div>