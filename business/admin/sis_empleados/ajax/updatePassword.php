<?php
$dir_fc = "../../../../";
session_start();

include_once $dir_fc.'data/users.class.php';
include_once $dir_fc.'connections/trop.php'; 
include_once $dir_fc.'connections/php_config.php';

$cAccion    = new cUsers();

$delista    = 0;
$id_user_pw = 0;
$nuevaclave = "";
$confclave  = "";
$alert      = "error";
$done       = 0;
$msj        = "";

extract($_REQUEST);

if($delista == 1){
    if(is_numeric($id_user_pw) && $id_user_pw >0){
        $cAccion->setId_usuario($id_user_pw);
        $rows  = 1;
    }else{
        $id    = 0;
        $rows  = 0;
    }
}else{

    $data = array(
        $id_user_pw,
        hash('sha256', $clave));

    $rows   = $cAccion->getRegbyPW( $data );
}

if($rows == 1){  

    if($nuevaclave == $confclave){

        $updateData = array(
            hash('sha256', $nuevaclave),
            $id_user_pw);

        $update = $cAccion->updateRegPW( $updateData );
        
        if (is_numeric($update)) {
            $done  = 1;
            $msj   = "Contraseña actualizada correctamente";
            $alert = "success";
        }      

    } else {
        $msj = "Confirmación de contraseña no coincide";
        $alert = "error";
    }
} else {
    $msj = "Contraseña Actual incorrecta";
    $alert = "error";
}

$cAccion->closeOut();

echo json_encode(
    array(
        "done" => $done, 
        "alert"=> $alert,
        "resp" => $msj
    )
);
