<?php
class Database {
    private $host     = 'localhost';
    private $user     = 'root';
    private $password = '';
    private $dbname   = 'DB_SIMULASI_PBO_KELAS_NamaLengkap';

    public function connect() {
        $conn = new mysqli($this->host, $this->user, $this->password, $this->dbname);

        if ($conn->connect_error) {
            die("Koneksi gagal: " . $conn->connect_error);
        }

        $conn->set_charset("utf8mb4");
        return $conn;
    }
}