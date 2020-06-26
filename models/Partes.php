<?php
    class Partes extends Conectar {
        
        public function insert_partes($usu_id){
            $conectar=parent::conexion();
            parent::set_names();
            $sql="insert into tm_partes values (null, ?, null,null,now(),null,null,2);";
            $sql=$conectar->prepare($sql);
            $sql->bindvalue(1, $usu_id);
            $sql->execute();

            $sql1="select last_insert_id() as 'part_id';";
            $sql1=$conectar->prepare($sql1);
            $sql1->execute();
            return $resultado=$sql1->fetchall(pdo::FETCH_ASSOC);
        }

        public function update_partes($part_id,$part_asun,$part_desc){
            $conectar=parent::conexion();
            parent::set_names();
            $sql="update tm_partes set
                    part_asun=?,
                    part_desc=?,
                    est=1
                where
                    part_id=?;";
            $sql=$conectar->prepare($sql);
            $sql->bindvalue(1, $part_asun);
            $sql->bindvalue(2, $part_desc);
            $sql->bindvalue(3, $part_id);
            $sql->execute();
        }



    }
?>