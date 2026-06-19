<?php

class Database {
    private $host = "localhost";
    private $dbname = "DB_SIMULASI_PBO_KELAS_NamaLengkap";
    private $username = "root";
    private $password = "";
    protected $conn;

    public function connect() {
        try {
            $this->conn = new PDO(
                "mysql:host=".$this->host.";dbname=".$this->dbname,
                $this->username,
                $this->password
            );

            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            return $this->conn;

        } catch (PDOException $e) {
            die("Koneksi gagal: " . $e->getMessage());
        }
    }
}
?>