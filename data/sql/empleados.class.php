<?php
//Incluyendo la conexión a la base de datos de SQL server, ojo, ¡¡¡SQL SERVER!!!
require_once $dir_fc."connections/sql/conn_data_sql.php";
require_once $dir_fc."connections/sql/conn_config_sql.php";

class cEmpleados extends BD_SQL
{
    function __construct()
    {
        $this->conn = new BD_SQL();
    }


    private $filtro;
    private $inicio;
    private $fin;
    private $limite;

    private $dep_keydep;
    private $dep_desdep;
    private $emp_keyemp;

    /**
     * @return mixed
     */
    public function getEmpKeyemp()
    {
        return $this->emp_keyemp;
    }
    public function setEmpKeyemp($emp_keyemp)
    {
        $this->emp_keyemp = $emp_keyemp;
    }

    public function getDepKeydep()
    {
        return $this->dep_keydep;
    }
    public function setDepKeydep($dep_keydep)
    {
        $this->dep_keydep = $dep_keydep;
    }


    public function getDepDesdep()
    {
        return $this->dep_desdep;
    }
    public function setDepDesdep($dep_desdep)
    {
        $this->dep_desdep = $dep_desdep;
    }

    public function getAreas() {
        $query = " SELECT dep_keydep, dep_desdep
                    FROM nmcodeps
                   WHERE dep_desdep <> '.' AND dep_desdep <> 'BAJAS'";

        $result = $this->conn->prepare($query);
        $result->execute();
        return $result;
    }

    public function getAllPersonal() {
        $milimite = "";

        if ($this->getLimite() == 1) {
            $milimite = " OFFSET  " . $this->getInicio() . " ROWS FETCH FIRST " . $this->getFin() . " ROWS ONLY";
        }

        $query = " SELECT emp_keyemp, emp_nomemp, emp_keydep, D.dep_desdep
                    FROM nmcoempl E 
                    LEFT JOIN nmcodeps D ON E.emp_keydep = D.dep_keydep
                   ORDER BY emp_keydep ASC, emp_keyemp ASC ";
         $result = $this->conn->prepare($query);
         $result->execute();
         return $result;
    }


    public function getPersonal() {
        $condicion = "";

        if(is_array($this->getDepKeydep())){
            $str4 = implode("' , '", $this->getDepKeydep()); // convirtiendo arreglo a string para comparación
            if($str4 != ""){
                $condicion .= "emp_keydep in ('".$str4."')";
            }
        }

        if ($this->getEmpKeyemp() != "") {
            $condicion .= "LTRIM(RTRIM(emp_keyemp)) = LTRIM(RTRIM(".$this->getEmpKeyemp().")) ";
        }

        $query = " SELECT emp_keyemp, emp_nomemp, emp_keydep, D.dep_desdep
                    FROM nmcoempl E 
                    LEFT JOIN nmcodeps D ON E.emp_keydep = D.dep_keydep
                   WHERE $condicion
                   ORDER BY emp_keydep ASC, emp_keyemp ASC ";
         $result = $this->conn->prepare($query);
         $result->execute();
         return $result;
    }

    public function getNomEmp($numero) {
        $query = "  SELECT emp_keyemp, emp_nomemp, emp_status, emp_fecbaj, E.emp_keydep, d.dep_desdep,
                           CONCAT(emp_keyemp, ' - ', emp_nomemp) AS empleado
                      FROM nmcoempl E 
                    LEFT JOIN nmcodeps D ON E.emp_keydep = D.dep_keydep
                     WHERE emp_keyemp = $numero";
        $result = $this->conn->prepare($query);
        $result->execute();
        return $result;
    }

    public function getPersonalByAutocomplete($term){
        $datos     = array();
        $condicion = "";

        if($term != ""){
            $condicion .= "WHERE (LTRIM(RTRIM(emp_keyemp)) LIKE '%$term%'
                              OR  LTRIM(REPLACE(emp_nomemp, '/', ' ')) LIKE '%$term%')";
        }

        $query = " SELECT TOP 20 E.emp_nomemp, emp_keyemp, D.dep_desdep
                     FROM nmcoempl E 
                    LEFT JOIN nmcodeps D ON E.emp_keydep = D.dep_keydep
                    $condicion
                    ORDER BY E.emp_nomemp";
        $result = $this->conn->prepare($query);
        $result->execute();
        $datos = $result->fetchAll(PDO::FETCH_ASSOC);
        // var_dump($datos);
        return $result;
        // foreach($result as $row){
        //     echo $row;
            
        // }



    }


    /**
     * Get the value of filtro
     */ 
    public function getFiltro()
    {
        return $this->filtro;
    }

    /**
     * Set the value of filtro
     *
     * @return  self
     */ 
    public function setFiltro($filtro)
    {
        $this->filtro = $filtro;

        return $this;
    }

    /**
     * Get the value of inicio
     */ 
    public function getInicio()
    {
        return $this->inicio;
    }

    /**
     * Set the value of inicio
     *
     * @return  self
     */ 
    public function setInicio($inicio)
    {
        $this->inicio = $inicio;

        return $this;
    }

    /**
     * Get the value of fin
     */ 
    public function getFin()
    {
        return $this->fin;
    }

    /**
     * Set the value of fin
     *
     * @return  self
     */ 
    public function setFin($fin)
    {
        $this->fin = $fin;

        return $this;
    }

    /**
     * Get the value of limite
     */ 
    public function getLimite()
    {
        return $this->limite;
    }

    /**
     * Set the value of limite
     *
     * @return  self
     */ 
    public function setLimite($limite)
    {
        $this->limite = $limite;

        return $this;
    }
}
