-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2026 at 03:32 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_trpl1a_elangpancatunggal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `nilai_ujian` decimal(5,2) NOT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) NOT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(50) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Andi Saputra', 'SMA Negeri 1 Jakarta', 85.50, 300000.00, 'Reguler', 'Teknik Informatika', 'Kampus A', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMA Negeri 2 Bandung', 82.75, 300000.00, 'Reguler', 'Sistem Informasi', 'Kampus B', NULL, NULL, NULL, NULL),
(3, 'Citra Dewi', 'SMA Negeri 3 Surabaya', 88.00, 300000.00, 'Reguler', 'Manajemen', 'Kampus A', NULL, NULL, NULL, NULL),
(4, 'Deni Pratama', 'SMA Negeri 4 Medan', 79.50, 300000.00, 'Reguler', 'Akuntansi', 'Kampus C', NULL, NULL, NULL, NULL),
(5, 'Eka Lestari', 'SMA Negeri 5 Semarang', 90.25, 300000.00, 'Reguler', 'Hukum', 'Kampus A', NULL, NULL, NULL, NULL),
(6, 'Fajar Nugroho', 'SMA Negeri 6 Yogyakarta', 84.00, 300000.00, 'Reguler', 'Teknik Sipil', 'Kampus B', NULL, NULL, NULL, NULL),
(7, 'Gita Permata', 'SMA Negeri 7 Malang', 87.50, 300000.00, 'Reguler', 'Psikologi', 'Kampus C', NULL, NULL, NULL, NULL),
(8, 'Hani Putri', 'SMA Negeri 1 Solo', 92.50, 250000.00, 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Indra Wijaya', 'SMA Negeri 2 Solo', 91.00, 250000.00, 'Prestasi', NULL, NULL, 'Lomba Debat', 'Provinsi', NULL, NULL),
(10, 'Joko Susilo', 'SMA Negeri 3 Solo', 89.75, 250000.00, 'Prestasi', NULL, NULL, 'Juara Basket', 'Kabupaten', NULL, NULL),
(11, 'Kiki Amelia', 'SMA Negeri 4 Solo', 94.20, 250000.00, 'Prestasi', NULL, NULL, 'Olimpiade Fisika', 'Internasional', NULL, NULL),
(12, 'Lina Marlina', 'SMA Negeri 5 Solo', 90.80, 250000.00, 'Prestasi', NULL, NULL, 'Lomba Pidato', 'Nasional', NULL, NULL),
(13, 'Miko Saputro', 'SMA Negeri 6 Solo', 88.90, 250000.00, 'Prestasi', NULL, NULL, 'Juara Renang', 'Provinsi', NULL, NULL),
(14, 'Nina Kartika', 'SMA Negeri 7 Solo', 93.60, 250000.00, 'Prestasi', NULL, NULL, 'Lomba Coding', 'Nasional', NULL, NULL),
(15, 'Oki Prasetyo', 'SMA Negeri 1 Bogor', 86.50, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK001', 'Kementerian Perhubungan'),
(16, 'Putri Ayu', 'SMA Negeri 2 Bogor', 89.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK002', 'Kementerian Keuangan'),
(17, 'Qori Ahmad', 'SMA Negeri 3 Bogor', 87.75, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK003', 'Badan Intelijen Negara'),
(18, 'Rina Sari', 'SMA Negeri 4 Bogor', 91.20, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK004', 'Kementerian Dalam Negeri'),
(19, 'Sandi Wijaya', 'SMA Negeri 5 Bogor', 85.80, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK005', 'Kementerian Pertahanan'),
(20, 'Tika Ramadhani', 'SMA Negeri 6 Bogor', 90.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK006', 'Badan Siber dan Sandi Negara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
