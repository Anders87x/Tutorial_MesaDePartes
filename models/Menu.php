<?php
    class Menu extends Conectar {

		public function get_menu(){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_menu WHERE est=1;";
            $sql=$conectar->prepare($sql);
			$sql->execute();
			return $resultado=$sql->fetchAll();
        }

    }
?>