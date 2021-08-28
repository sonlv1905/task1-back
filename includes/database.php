<?php 

require_once("config.php");

class MySqli_DB{
    private $con;
    public $query_id;

    function __construct(){
        $this->db_connect(); 
    }

    public function db_connect(){
        $this->con = mysqli_connect(DB_HOST, DB_USER, DB_PASS);
        if(!$this->con){
            die("kết nối CSDL lỗi". mysqli_connect_error());
        }
    }

    public function db_disconnect(){
        if(isset($this->con)){
            mysqli_close($this->con);
            unset($this->con);
        }
    }
}

?>