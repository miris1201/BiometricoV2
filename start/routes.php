<?php
function call($controller, $action) {
    require_once($controller . '/index_ctrl.php');
    switch($controller) {
        case 'controlador':
            $controller = new Inicio();
            break;
        case 'controlador/business':
            $controller = new Business();
            break;
        case 'controlador/sys':
            $controller = new Sys();
            break;
        case 'controlador/admin/sis_usuarios':
            $controller = new admin_usuarios();
            break;
        case 'controlador/admin/sis_roles':
            $controller = new admin_roles();
            break;
        case 'controlador/catalogos/elementos':
                $controller = new cElementos();
            break;
        case 'controlador/catalogos/faltas':
                $controller = new cFaltas();
            break;
        case 'controlador/catalogos/smd':
                $controller = new cUMA();
            break;
        case 'controlador/catalogos/jueces':
            $controller = new cJueces();
            break;
        case 'controlador/catalogos/colonias':
            $controller = new CColonias();
            break;
        case 'controlador/catalogos/edo_fisico':
            $controller = new cEdo_Fisico();
            break;
        case 'controlador/catalogos/estudios':
            $controller = new cEstudios();
            break;
        case 'controlador/catalogos/ocupacion':
            $controller = new cOcupacion();
            break;
        case 'controlador/catalogos/estatus':
            $controller = new cEstatus();
            break;
        case 'controlador/oficialia/remisiones':
            $controller = new cLRemision();
            break;
        case 'controlador/oficialia/a_informativa':
            $controller = new cA_Informativa();
            break;
        case 'controlador/oficialia/u_libre':
            $controller = new cU_Libre();
            break;
        case 'controlador/oficialia/alcoholimetro':
            $controller = new cL_Alcoholimetro();
            break;
        
    }
    $controller->{ $action }();
}

$controllers = array(
    'controlador'                     => ['index'],
    'controlador/business'            => ['show'],
    'controlador/sys'                 => ['account', 'add_account'],
    'controlador/admin/sis_usuarios'  => ['index', 'nuevo'],
    'controlador/admin/sis_roles' 	  => ['index', 'nuevo'],
    'controlador/catalogos/elementos' => ['index', 'nuevo'],
    'controlador/catalogos/faltas'    => ['index', 'nuevo'],
    'controlador/catalogos/smd'       => ['index', 'nuevo'],
    'controlador/catalogos/jueces'    => ['index', 'nuevo'],
    'controlador/catalogos/colonias'  => ['index', 'nuevo'],
    'controlador/catalogos/edo_fisico' => ['index', 'nuevo'],
    'controlador/catalogos/estudios'  => ['index', 'nuevo'],
    'controlador/catalogos/ocupacion' => ['index', 'nuevo'],
    'controlador/catalogos/estatus'   => ['index', 'nuevo'],
    'controlador/oficialia/remisiones'=> ['index', 'nuevo', 'seguimiento'],
    'controlador/oficialia/a_informativa'=> ['index', 'nuevo', 'seguimiento'],
    'controlador/oficialia/u_libre'=> ['index', 'nuevo', 'seguimiento'],
    'controlador/oficialia/alcoholimetro'=> ['index', 'nuevo', 'seguimiento'],
);

if (array_key_exists($controller, $controllers)) {
    if (in_array($action, $controllers[$controller])) {
        call($controller, $action);
    } else {
        call('business/', 'error');
    }
} else {
    call('business/', 'error');
}
