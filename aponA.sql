-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Nov 2019 pada 10.24
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aponA`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
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
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`ID_Obat`, `Nama_Obat`, `Keterangan_Obat`, `Harga_Obat`, `Deskripsi_Obat`, `Foto_Obat`) VALUES
(33, 'bebasa', 'anjay', '892', '                              shshshsh', 0x466c6f7743686172742e706e67),
(23131, 'askdba', 'asjkdbna', '123', 'aljsdna                            ', ''),
(21312312, '12312312', '1231231', '12312312', '                            1231231', ''),
(23131231, '2311231', '412343e24', '23131', '                        21312312    ', ''),
(2147483647, '1231231312', '12412412', '1231231', '        1231231                    ', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat_resep`
--

CREATE TABLE `obat_resep` (
  `Foto_Resep` blob NOT NULL,
  `Deskripsi_Resep` varchar(255) NOT NULL,
  `ID_Resep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ID_Obat` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Metode_Pembayaran` int(11) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `namaUser` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `noHP` int(11) NOT NULL,
  `passwod` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `namaUser`, `email`, `noHP`, `passwod`) VALUES
('admin', 'Admin Ganteng', 'adminganteng@gmail.com', 812121212, 'admin123'),
('laz', 'Lazuardi', 'laz@gmail.com', 812121, 'laz');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`ID_Obat`);

--
-- Indeks untuk tabel `obat_resep`
--
ALTER TABLE `obat_resep`
  ADD PRIMARY KEY (`ID_Resep`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`),
  ADD KEY `FK_Transaksi1` (`ID_Obat`),
  ADD KEY `FK_Transaksi2` (`username`(191));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
