<?php
    require('class.phpmailer.php');
    include("class.smtp.php");

    require_once("../config/conexion.php");
    require_once("../Models/Usuario.php");

    class Email extends PHPMailer{
        
        public function recuperar($usu_correo){
            $usuario = new Usuario();
            $datos = $usuario->get_correo_usuario($usu_correo);
            foreach ($datos as $row) {
                $nom = $row["usu_nom"].' '.$row["usu_ape"];
                $pass = $row["usu_pass"];
            }

            $this->IsSMTP();
            $this->Host = 'smtp.office365.com';
            $this->Port = 587;
            $this->SMTPAuth = true;
            $this->Username = $this->tu_email = "aqui tu correo @.com";
            $this->Password = $this->tu_password = "aqui la clave";
            $this->SMTPSecure = 'tsl';
            $this->From = $this->tu_email;
            $this->CharSet='UTF8';
            $this->addAddress($usu_correo);
            $this->WordWrap = 50;
            $this->IsHTML(true);
            $this->Subject = "Recuperar Contraseña";
                $cuerpo = file_get_contents('../public/recuperar.html');
                $cuerpo = str_replace('lblnomx',$nom,$cuerpo);
                $cuerpo = str_replace('lblpassx',$pass,$cuerpo);
            $this->Body = $cuerpo;
            $this->IsHTML(true);
            return $this->Send();
        }

        public function nuevo($usu_correo){
            $usuario = new Usuario();
            $datos = $usuario->get_correo_usuario($usu_correo);
            foreach ($datos as $row) {
                $nom = $row["usu_nom"].''.$row["usu_ape"];
                $pass = $row["usu_pass"];
            }

            $this->IsSMTP();
            $this->Host = 'smtp.office365.com';
            $this->Port = 587;
            $this->SMTPAuth = true;
            $this->Username = $this->tu_email = "aqui tu correo @.com";
            $this->Password = $this->tu_password = "aqui la clave";
            $this->SMTPSecure = 'tls';
            $this->From = $this->tu_email="alerta.auto@transtotalperu.com";
            $this->FromName = $this->tu_nombre="Registro Correcto";
            $this->CharSet='UTF8';
            $this->addAddress($usu_correo);
            $this->WordWrap = 50;
            $this->IsHTML(true);
            $this->Subject = "Registro Correcto";
                $cuerpo = file_get_contents('../public/nuevo.html');
                $cuerpo = str_replace('lblnomx',$nom,$cuerpo);
            $this->Body = $cuerpo;
            $this->IsHTML(true);
            $this->AltBody = strip_tags("Registro Correcto");
            return $this->Send();
        }

        public function solicitud($part_id,$usu_nom,$usu_ape){
            $this->IsSMTP();
            $this->Host = 'smtp.office365.com';
            $this->Port = 587;
            $this->SMTPAuth = true;
            $this->Username = $this->tu_email = "aqui tu correo @.com";
            $this->Password = $this->tu_password = "aqui la clave";
            $this->SMTPSecure = 'tls';
            $this->From = $this->tu_email="alerta.auto@transtotalperu.com";
            $this->FromName = $this->tu_nombre="Nueva Solicitud";
            $this->CharSet='UTF8';
            $this->addAddress("davis_anderson_87@hotmail.com");
            $this->WordWrap = 50;
            $this->IsHTML(true);
            $this->Subject = "Nueva Solicitud";
                $cuerpo = file_get_contents('../public/solicitud.html');
                $cuerpo = str_replace('lblnomx',$usu_nom.''.$usu_ape,$cuerpo);
                $cuerpo = str_replace('lblnumx',$part_id,$cuerpo);
            $this->Body = $cuerpo;
            $this->IsHTML(true);
            $this->AltBody = strip_tags("Nueva Solicitud");
            return $this->Send();
        }

    }
?>