<?php
require_once "koneksi/database.php";
require_once "class/Pendaftaran.php";
require_once "class/PendaftaranReguler.php";
require_once "class/PendaftaranPrestasi.php";
require_once "class/PendaftaranKedinasan.php";

$database = new Database();
$db = $database->connect();

/*
|--------------------------------------------------------------------------
| Ambil Data Reguler
|--------------------------------------------------------------------------
*/
$regulerObj = new PendaftaranReguler(null, "", "", 0, 0, "", "");
$dataReguler = $regulerObj->getDaftarReguler($db);

/*
|--------------------------------------------------------------------------
| Ambil Data Prestasi
|--------------------------------------------------------------------------
*/
$prestasiObj = new PendaftaranPrestasi(null, "", "", 0, 0, "", "");
$dataPrestasi = $prestasiObj->getDaftarPrestasi($db);

/*
|--------------------------------------------------------------------------
| Ambil Data Kedinasan
|--------------------------------------------------------------------------
*/
$kedinasanObj = new PendaftaranKedinasan(null, "", "", 0, 0, "", "");
$dataKedinasan = $kedinasanObj->getDaftarKedinasan($db);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Data Pendaftaran Mahasiswa Baru</title>
    <style>
        table{
            border-collapse: collapse;
            width:100%;
            margin-bottom:30px;
        }
        th,td{
            border:1px solid black;
            padding:8px;
            text-align:left;
        }
    </style>
</head>
<body>

<h1>Daftar Pendaftaran Mahasiswa Baru</h1>

<!-- ================= REGULER ================= -->
<h2>Jalur Reguler</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Asal Sekolah</th>
        <th>Nilai</th>
        <th>Info Jalur</th>
        <th>Total Biaya</th>
    </tr>

    <?php foreach($dataReguler as $row): ?>
        <?php
        $obj = new PendaftaranReguler(
            $row['id_pendaftaran'],
            $row['nama_calon'],
            $row['asal_sekolah'],
            $row['nilai_ujian'],
            $row['biaya_pendaftaran_dasar'],
            $row['pilihan_prodi'],
            $row['lokasi_kampus']
        );
        ?>
        <tr>
            <td><?= $row['id_pendaftaran']; ?></td>
            <td><?= $row['nama_calon']; ?></td>
            <td><?= $row['asal_sekolah']; ?></td>
            <td><?= $row['nilai_ujian']; ?></td>
            <td><?= $obj->tampilkanInfoJalur(); ?></td>
            <td>Rp <?= number_format($obj->hitungTotalBiaya(),0,',','.'); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<!-- ================= PRESTASI ================= -->
<h2>Jalur Prestasi</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Asal Sekolah</th>
        <th>Nilai</th>
        <th>Info Jalur</th>
        <th>Total Biaya</th>
    </tr>

    <?php foreach($dataPrestasi as $row): ?>
        <?php
        $obj = new PendaftaranPrestasi(
            $row['id_pendaftaran'],
            $row['nama_calon'],
            $row['asal_sekolah'],
            $row['nilai_ujian'],
            $row['biaya_pendaftaran_dasar'],
            $row['jenis_prestasi'],
            $row['tingkat_prestasi']
        );
        ?>
        <tr>
            <td><?= $row['id_pendaftaran']; ?></td>
            <td><?= $row['nama_calon']; ?></td>
            <td><?= $row['asal_sekolah']; ?></td>
            <td><?= $row['nilai_ujian']; ?></td>
            <td><?= $obj->tampilkanInfoJalur(); ?></td>
            <td>Rp <?= number_format($obj->hitungTotalBiaya(),0,',','.'); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

<!-- ================= KEDINASAN ================= -->
<h2>Jalur Kedinasan</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Asal Sekolah</th>
        <th>Nilai</th>
        <th>Info Jalur</th>
        <th>Total Biaya</th>
    </tr>

    <?php foreach($dataKedinasan as $row): ?>
        <?php
        $obj = new PendaftaranKedinasan(
            $row['id_pendaftaran'],
            $row['nama_calon'],
            $row['asal_sekolah'],
            $row['nilai_ujian'],
            $row['biaya_pendaftaran_dasar'],
            $row['sk_ikatan_dinas'],
            $row['instansi_sponsor']
        );
        ?>
        <tr>
            <td><?= $row['id_pendaftaran']; ?></td>
            <td><?= $row['nama_calon']; ?></td>
            <td><?= $row['asal_sekolah']; ?></td>
            <td><?= $row['nilai_ujian']; ?></td>
            <td><?= $obj->tampilkanInfoJalur(); ?></td>
            <td>Rp <?= number_format($obj->hitungTotalBiaya(),0,',','.'); ?></td>
        </tr>
    <?php endforeach; ?>
</table>

</body>
</html>