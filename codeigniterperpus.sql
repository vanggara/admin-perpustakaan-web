-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2019 at 07:23 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniterperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`) VALUES
(121212, 'Vicky', 'Malang', 'Tuban', '2019-05-01'),
(131313, 'Giga', 'Tuban', 'Malang', '2019-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `isbn`, `judul`, `pengarang`, `penerbit`, `tahun`, `jumlah`) VALUES
(7, '1111', 'Ada Apa denganmu?', 'Abil Gabil', 'Sabila', '2002', 47),
(8, '2222', 'Inikah Cinta?', 'Bill Guy', 'Cahaya Bulan', '2007', 49),
(12, '3333', 'Menyesal', 'Amanda Alafi', 'Mega Bersinar', '2019', 49),
(13, '4444', 'Demi Kamu', 'Kokoling Amin', 'Samar-samar', '1998', 49),
(14, '5555', 'Ayat-ayat Cinta', 'Laburhan H.E.', 'Pneuromachy', '1999', 49),
(15, '6666', 'Dilan', 'Vovonk B.', 'Gogogo', '2015', 49);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `id_peminjam` varchar(50) NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `isbn_buku` varchar(50) NOT NULL,
  `date_pinjam` date NOT NULL,
  `date_kembali` date NOT NULL,
  `lama_keterlambatan` int(11) NOT NULL,
  `denda` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_peminjam`, `nama_peminjam`, `isbn_buku`, `date_pinjam`, `date_kembali`, `lama_keterlambatan`, `denda`) VALUES
(1, '111111', 'Fahri', '1111', '2019-05-24', '2019-05-23', 8, 534024),
(6, '222222', 'Vicky', '2222', '2019-05-22', '2019-05-28', 3, 102),
(7, '333333', 'Anggara', '3333', '2019-05-22', '2019-05-31', 0, 0),
(8, '444444', 'Giga', '4444', '2019-06-02', '2019-06-04', 0, 0),
(9, '555555', 'Setiawan', '5555', '2019-06-02', '2019-06-11', 0, 0),
(10, '666666', 'Rona', '6666', '2019-06-02', '2019-06-12', 0, 0),
(11, '777777', 'Salsabila', '7777', '2019-06-02', '2019-06-03', 0, 0),
(16, '131313', 'Nurhayati', '8888', '2019-06-02', '2019-06-04', 0, 0),
(17, '121212', 'vicky', '1111', '2019-06-02', '2019-06-04', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
