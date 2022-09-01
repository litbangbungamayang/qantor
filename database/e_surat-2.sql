-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 11:34 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_surat-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_dispos`
--

CREATE TABLE `m_dispos` (
  `id_dispos` int(11) NOT NULL,
  `nama_bagian` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `m_dispos`
--

INSERT INTO `m_dispos` (`id_dispos`, `nama_bagian`) VALUES
(9, 'Kadiv Akt dan Keuangan'),
(8, 'Kadiv Teknik dan Pengolahan'),
(10, 'Kadiv SDM dan Umum'),
(11, 'Kadiv Pusat Penelitian'),
(12, 'Staff Perpajakan'),
(13, 'Staff Akuntansi'),
(14, 'Staff SDM'),
(15, 'Staff SPI'),
(16, 'Staff Akuntansi'),
(17, 'Kadiv Tanaman'),
(18, 'Staff Aisintan'),
(19, 'Staff Sekretariat Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `ref_klasifikasi`
--

CREATE TABLE `ref_klasifikasi` (
  `id` int(4) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_klasifikasi`
--

INSERT INTO `ref_klasifikasi` (`id`, `kode`, `nama`, `uraian`) VALUES
(266, '02.102', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tb_asal_tujuan`
--

CREATE TABLE `tb_asal_tujuan` (
  `id_asal_tujuan` int(11) NOT NULL,
  `asal_tujuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_asal_tujuan`
--

INSERT INTO `tb_asal_tujuan` (`id_asal_tujuan`, `asal_tujuan`) VALUES
(4, 'Direktur'),
(5, 'Kadiv Akt dan Keuangan'),
(6, 'Kadiv Teknik dan Pengolahan'),
(7, 'Kadiv Tanaman'),
(8, 'Kadiv Puslit'),
(9, 'Kadiv SDM dan Umum'),
(10, 'Staff SPI'),
(11, 'Staff Teknik'),
(12, 'Staff Agronomi'),
(13, 'Staff Aisintan'),
(14, 'Staff Litbang'),
(15, 'Staff SDM'),
(16, 'Staff Umum'),
(17, 'Staff Sekretariat Perusahaan'),
(18, 'Staff Akuntansi'),
(19, 'Staff Keuangan'),
(20, 'Staff Perpajakan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(40) NOT NULL,
  `teruskan` varchar(255) NOT NULL,
  `ket` text NOT NULL,
  `sifat_dispos` varchar(50) NOT NULL,
  `batas` date NOT NULL,
  `indeks` varchar(100) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `tujuan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `kota` varchar(255) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`kota`, `lembaga`, `alamat`, `telpon`, `foto`) VALUES
('BANDAR LAMPUNG', 'PT BUMA CIMA NUSANTARA', 'Jl. Pramuka No.11/247, Rajabasa, Kec. Rajabasa, Kota Bandar Lampung, Lampung 35144', '', 'mail.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `kepada` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(50) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(9) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(20) NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `indeks` varchar(255) NOT NULL,
  `disposisi` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tujuan`
--

CREATE TABLE `tb_tujuan` (
  `id_tujuan` int(11) NOT NULL,
  `nama_tujuan` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tujuan`
--

INSERT INTO `tb_tujuan` (`id_tujuan`, `nama_tujuan`, `no_hp`) VALUES
(7, 'Kadiv SDM dan Umum', '082178760978'),
(8, 'Kadiv Akt dan Keuangan', '081378136150'),
(9, 'Kadiv Teknik dan Pengolahan', '081378652145'),
(10, 'Kadiv Pusat Penelitian', '082178760978'),
(11, 'Staff Akuntansi', '082178760978'),
(12, 'Staff Agronomi', '081378136150'),
(13, 'Staff Perpajakan', '082178760978'),
(14, 'Staff SDM', '082178760978'),
(15, 'Staff Perpajakan', '082178760978');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_user` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `level_pimpinan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama_user`, `level`, `foto`, `level_pimpinan`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'logo.JPG', 0),
(16, 'Kadiv TNP', 'teknik', 'Kadiv Teknik dan Pengolahan', 'user', 'mail.png', 9),
(13, 'Kadiv Keuangan', 'keuangan', 'Kadiv Akt dan Keuangan', 'user', 'mail.png', 8),
(15, 'Kadiv Puslit', 'puslit', 'Kadiv Pusat Penelitian', 'user', 'Desert.jpg', 10),
(17, 'Kadiv SDM dan Umum', 'umum', 'Kadiv SDM dan Umum', 'user', 'mail.png', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_dispos`
--
ALTER TABLE `m_dispos`
  ADD PRIMARY KEY (`id_dispos`);

--
-- Indexes for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_asal_tujuan`
--
ALTER TABLE `tb_asal_tujuan`
  ADD PRIMARY KEY (`id_asal_tujuan`);

--
-- Indexes for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  ADD PRIMARY KEY (`id_tujuan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_dispos`
--
ALTER TABLE `m_dispos`
  MODIFY `id_dispos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ref_klasifikasi`
--
ALTER TABLE `ref_klasifikasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `tb_asal_tujuan`
--
ALTER TABLE `tb_asal_tujuan`
  MODIFY `id_asal_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_tujuan`
--
ALTER TABLE `tb_tujuan`
  MODIFY `id_tujuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
