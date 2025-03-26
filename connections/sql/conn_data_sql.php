<?php
require_once $dir_fc."connections/sql/conn_config_sql.php";

class BD_SQL {

	private $_dbUser;
	private $_dbPassword;
	private $_dbHost;	
	protected $_dbName;
	public $_connection;
	private static $_instance;

	public function __construct()
	{
		try {
			$this->_dbHost = DB_HOST_SQL;			
			$this->_dbUser = DB_USER_SQL;
			$this->_dbPassword = DB_PASS_SQL;
			$this->_dbName = DB_NAME_SQL;

			$this->_connection = new \PDO('sqlsrv:Server='.$this->_dbHost.';Database='.$this->_dbName, $this->_dbUser, $this->_dbPassword);
			$this->_connection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
		}
		catch (\PDOException $e)
		{
			print "Error!: " . $e->getMessage();
			die();
		}
	}

	public function prepare($sql)
	{
		return $this->_connection->prepare($sql);
	}

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

	public function __clone()
	{
		trigger_error('La clonación de este objeto no está permitida', E_USER_ERROR);
	}

	public function escape($string)
	{
		return $this->_connection->quote($string);
	}
}

