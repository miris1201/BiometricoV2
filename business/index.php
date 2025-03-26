<?php
$dir_fc       = "";
include_once $dir_fc . 'connections/trop.php';
include_once $dir_fc . 'connections/php_config.php';

extract($_REQUEST);

$current_file = basename($_SERVER["PHP_SELF"]);
$dir          = dirname($_SERVER['PHP_SELF']) . "/";
$checkMenu    = $server_name . $dir . "?controller=business";
$param        = "?controller=business&action=";
$sys_id_men   = 0;

include_once $dir_fc . 'data/inicial.class.php';

$cInicial = new cInicial();

include_once 'sys/check_session.php';


extract($_REQUEST);

$ruta_app = "";
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <title><?php echo c_page_title ?></title>
    <meta content="" name="description" />
    <meta content="" name="author" />
    <?php include("dist/inc/headercommon.php"); ?>
</head>
<body class="<?php echo _BODY_STYLE_ ?> ">
    <?php include($dir_fc . "inc/header.php") ?>
    <div id="base">
        <div class="offcanvas"></div>
        <div id="content">
            <section>
                <div class="section-body">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="card">
                                <div class="card-body no-padding">
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <?php include($dir_fc . "inc/menucommon.php") ?>
    </div>
    <?php include("dist/components/business.php"); ?>
</body>

</html>