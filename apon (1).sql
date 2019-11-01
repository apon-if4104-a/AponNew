-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2019 at 04:34 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apon`
--

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `ID_Obat` int(11) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Keterangan_Obat` varchar(255) NOT NULL,
  `Harga_Obat` varchar(11) NOT NULL,
  `Deskripsi_Obat` varchar(255) NOT NULL,
  `Foto_Obat` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`ID_Obat`, `Nama_Obat`, `Keterangan_Obat`, `Harga_Obat`, `Deskripsi_Obat`, `Foto_Obat`) VALUES
(23131, 'askdba', 'asjkdbna', '123', 'aljsdna                            ', ''),
(21312312, '12312312', '1231231', '12312312', '                            1231231', ''),
(23131231, '2311231', '412343e24', '23131', '                        21312312    ', ''),
(2147483647, '1231231312', '12412412', '1231231', '        1231231                    ', '');

-- --------------------------------------------------------

--
-- Table structure for table `obat_resep`
--

CREATE TABLE `obat_resep` (
  `Foto_Resep` blob NOT NULL,
  `Deskripsi_Resep` varchar(255) NOT NULL,
  `ID_Resep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `NOHP` int(11) NOT NULL,
  `Password1` varchar(255) NOT NULL,
  `Password2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`ID_Obat`);

--
-- Indexes for table `obat_resep`
--
ALTER TABLE `obat_resep`
  ADD PRIMARY KEY (`ID_Resep`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `ID_Obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- AUTO_INCREMENT for table `obat_resep`
--
ALTER TABLE `obat_resep`
  MODIFY `ID_Resep` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
