<?php

class admin_empleados {
    public function index() {
        require_once('business/admin/sis_empleados/index_vw.php');
    }
    public function ver() {
        require_once('business/admin/sis_empleados/editar_vw.php');
    }    
    public function nuevo() {
        require_once('business/admin/sis_empleados/nuevo_vw.php');
    }
    
    public function error() {
        require_once('business/error.php');
    }
}
?>
