<?php
require_once "Pendaftaran.php";

class PendaftaranReguler extends Pendaftaran {
    protected $pilihanProdi;
    protected $lokasiKampus;

    public function __construct(
        $id_pendaftaran,
        $nama_calon,
        $asal_sekolah,
        $nilai_ujian,
        $biayaPendaftaranDasar,
        $pilihanProdi,
        $lokasiKampus
    ) {
        parent::__construct(
            $id_pendaftaran,
            $nama_calon,
            $asal_sekolah,
            $nilai_ujian,
            $biayaPendaftaranDasar
        );

        $this->pilihanProdi = $pilihanProdi;
        $this->lokasiKampus = $lokasiKampus;
    }

    public function hitungTotalBiaya() {
        return $this->biayaPendaftaranDasar + 500000;
    }

    public function tampilkanInfoJalur() {
        return "Jalur Reguler - Prodi: {$this->pilihanProdi}, Kampus: {$this->lokasiKampus}";
    }

    public function getDaftarReguler($db) {
        $query = "SELECT * FROM tabel_pendaftaran 
                  WHERE jalur_pendaftaran = 'Reguler'";
        $stmt = $db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>