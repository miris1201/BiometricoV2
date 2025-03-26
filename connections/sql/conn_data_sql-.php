<?php
require_once "conn_config_sql.php";
/**
 * Conexión a la base de datos via SQLServer....incluye el archvio de confirguración el cual trae la información de los datos de conexión.
 */
class BD_SQL {

    private $DB_USER;
	private $DB_PASS;
	private $DB_HOST;	
	private $_dbPort;
	protected $DB_NAME;
	public $_connection;
	private static $_instance;
    
    function conexionBD() {

        try {
            $this->DB_HOST = DB_HOST_SQL;
            $this->DB_USER = DB_USER_SQL;
            $this->DB_PASS = DB_PASS_SQL;
            $this->DB_NAME = DB_NAME_SQL;


            // $this->_connection = new PDO("sqlsrv:server=$this->DB_HOST, database=$this->DB_NAME", $this->DB_USER, $this->DB_PASS);
            $this->_connection = new PDO("sqlsrv:server=192.1.1.252;database=Labora", $this->DB_USER, $this->DB_PASS);
            $this->_connection->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
            $this->_connection->exec("SET CHARACTER SET utf8");

        }
		catch (\PDOException $e)
		{
			print "Error!: " . $e->getMessage();
			die();
		}
    }

    //  public function prepare($sql)
	// {
	// 	return $this->_connection->prepare($sql);
	// }

    public function conexion()
	{
		return $this->_connection;
	}

	//[instance singleton]
	public static function instance()
	{
		if (!isset(self::$_instance))
		{
			$class = __CLASS__;
			self::$_instance = new $class;
		}
		return self::$_instance;
	}

	/**[__clone Evita que el objeto se pueda clonar]
	 * @return [type] [message] */
	public function __clone()
	{
		trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
	}
}
?>
