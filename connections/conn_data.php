<?php
require_once $dir_fc."connections/conn_config.php";

class BD
{

	private $_dbUser;
	private $_dbPassword;
	private $_dbHost;	
	private $_dbPort;
	protected $_dbName;
	public $_conn_bio;
	private static $_instance;

	public function __construct()
	{
		try {
			$this->_dbHost = DB_HOST;			
			$this->_dbPort = DB_PORT;
			$this->_dbUser = DB_USER;
			$this->_dbPassword = DB_PASS;
			$this->_dbName = DB_NAME;

			$this->_conn_bio = new \PDO('mysql:host='.$this->_dbHost.'; port='.$this->_dbPort.'; dbname='.$this->_dbName, $this->_dbUser, $this->_dbPassword);
			$this->_conn_bio->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
			$this->_conn_bio->exec("SET CHARACTER SET utf8");
		}
		catch (\PDOException $e)
		{
			print "Error!: " . $e->getMessage();
			die();
		}
	}

	public function prepare($sql)
	{
		return $this->_conn_bio->prepare($sql);
	}

	public function conexion()
	{
		return $this->_conn_bio;
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
		return $this->_conn_bio->quote($string);
	}
}

