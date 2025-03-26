<?php
$dir_fc = "../../../../";

include_once $dir_fc.'data/rol.class.php';
include_once $dir_fc.'connections/trop.php'; 
include_once $dir_fc.'connections/php_config.php'; 


$cAccion  = new cRol();

$rol                = "";
$descripcion        = "";
$permiso_imp[]      = "";
$permiso_nuevo[]    = "";
$permiso_edit[]     = "";
$permiso_elim[]     = "";
$permiso_exportar[] = "";
$imp                = 0;
$nuev               = 0;
$edit               = 0;
$elim               = 0;
$export             = 0;

$done               = 0;
$resp               = "";
$inserted           = "";

extract($_REQUEST);

//buscar si existe un rol con el mismo nombre
$cAccion->setRol($rol);
$RolFound = $cAccion->foundRol();

if ($RolFound > 0) {
    $resp = "Existe un rol con el mismo nombre";

} else {
    $cAccion->setDescripcion($descripcion);
    $inserted = $cAccion->insertReg();
}

if(is_numeric($inserted) AND $inserted  > 0){
    if(isset($menus)){
        foreach ($menus as $id_arr => $valor_arr) {

            $imp     = 0;
            $nuev    = 0;
            $edit    = 0;
            $elim    = 0;
            $export  = 0;

            $dataDtl = array(
                $inserted,
                $valor_arr,
                $imp,            
                $edit,   
                $elim, 
                $nuev,
                $export
            );

            if(isset($grupo)){
                $grupo_rec = $grupo[$valor_arr];
                if($grupo_rec <> 0){
                    if(isset($permiso_imp[$valor_arr])){
                        $imp = $permiso_imp[$valor_arr];
                    }
                    if(isset($permiso_nuevo[$valor_arr])){
                        $nuev = $permiso_nuevo[$valor_arr];
                    }
                    if(isset($permiso_edit[$valor_arr])){
                        $edit = $permiso_edit[$valor_arr];
                    }
                    if(isset($permiso_elim[$valor_arr])){
                        $elim = $permiso_elim[$valor_arr];
                    }
                    if(isset($permiso_exportar[$valor_arr])){
                        $export = $permiso_exportar[$valor_arr];
                    }

                    $dataDtl = array(
                        $inserted,
                        $valor_arr,
                        $imp,            
                        $edit,   
                        $elim, 
                        $nuev,
                        $export
                    );

                }
            }
            $correcto = $cAccion->insertRegdtl( $dataDtl );
            if(!is_numeric($correcto)){
                die($correcto);
            }
        }
    }
    $done  = 1;
    $resp  = "Rol agregado correctamente.";
    $alert = "success";
    

} else{
        $done  = 0;
        $resp  = "Ocurrió un incoveniente con la base de datos: -- ".$inserted; 
}

echo json_encode(array("done" => $done, "resp" => $resp));
?>
