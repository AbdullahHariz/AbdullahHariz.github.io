-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 07:28 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gratis_masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `kas_masjid`
--

CREATE TABLE `kas_masjid` (
  `id_km` int(11) NOT NULL,
  `tgl_km` date NOT NULL,
  `uraian_km` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas_masjid`
--

INSERT INTO `kas_masjid` (`id_km`, `tgl_km`, `uraian_km`, `masuk`, `keluar`, `jenis`) VALUES
(1, '2020-06-22', 'Kotak Amal Sholat Jumat', 500000, 0, 'Masuk'),
(2, '2020-06-22', 'Kotak Amal Harian', 200000, 0, 'Masuk'),
(3, '2020-06-22', 'Sumbangan Majelis Talim', 600000, 0, 'Masuk'),
(4, '2020-06-22', 'Biaya Utilitas Masjid Bulanan', 0, 150000, 'Keluar'),
(5, '2020-06-22', 'Membeli Alat Kebersihan Masjid', 0, 75000, 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `kas_sosial`
--

CREATE TABLE `kas_sosial` (
  `id_ks` int(11) NOT NULL,
  `tgl_ks` date NOT NULL,
  `uraian_ks` varchar(200) NOT NULL,
  `masuk` int(11) NOT NULL,
  `keluar` int(11) NOT NULL,
  `jenis` enum('Masuk','Keluar') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kas_sosial`
--

INSERT INTO `kas_sosial` (`id_ks`, `tgl_ks`, `uraian_ks`, `masuk`, `keluar`, `jenis`) VALUES
(1, '2020-06-22', 'Iuran Sosial Bulanan Warga', 500000, 0, 'Masuk'),
(2, '2020-06-22', 'Donasi Atas Nama Bpk H. Murod', 1000000, 0, 'Masuk'),
(3, '2020-06-22', 'Santunan Warga Miskin', 0, 400000, 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('Administrator','Bendahara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Admin Masjid', 'admin', 'admin', 'Administrator'),
(2, 'Bendahara Masjid', 'bendahara', 'bendahara', 'Bendahara'),
(3, 'Admin Masjid 2', 'admin2', 'admin2', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kas_masjid`
--
ALTER TABLE `kas_masjid`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `kas_sosial`
--
ALTER TABLE `kas_sosial`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kas_masjid`
--
ALTER TABLE `kas_masjid`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kas_sosial`
--
ALTER TABLE `kas_sosial`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
