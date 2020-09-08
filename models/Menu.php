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

        public function insert_menu($men_ruta,$men_icon,$men_nom){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="INSERT INTO tm_menu VALUES(null,?,?,?,1)";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $men_ruta);
            $sql->bindValue(2, $men_icon);
            $sql->bindValue(3, $men_nom);
			$sql->execute();
        }

        public function update_menu($men_id,$men_ruta,$men_icon,$men_nom){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_menu SET
                men_ruta=?,
                men_icon=?,
                men_nom=?
                WHERE
                men_id=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $men_ruta);
            $sql->bindValue(2, $men_icon);
            $sql->bindValue(3, $men_nom);
            $sql->bindValue(4, $men_id);
			$sql->execute();
        }

        public function delete_menu($men_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="UPDATE tm_menu SET est=0 WHERE men_id=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $men_id);
			$sql->execute();
        }

        public function get_menu_x_id($men_id){
            $conectar= parent::conexion();
            parent::set_names();
            $sql="SELECT * FROM tm_menu WHERE men_id=?";
            $sql=$conectar->prepare($sql);
            $sql->bindValue(1, $men_id);
			$sql->execute();
			return $resultado=$sql->fetchAll();
        }

    }
?>