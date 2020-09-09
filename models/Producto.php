<?php
    class Producto extends Conectar {

		public function get_producto($cat_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_producto WHERE cat_id=? AND est=1;";
            $sql=$conectar->prepare($sql);
            $sql->bindvalue(1, $cat_id);
			$sql->execute();
			return $resultado=$sql->fetchAll();
        }

    }
?>