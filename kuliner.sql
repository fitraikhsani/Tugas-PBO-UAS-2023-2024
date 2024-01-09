-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jan 2024 pada 03.39
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliner`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aceh`
--

CREATE TABLE `aceh` (
  `Roti_Canai` int(15) NOT NULL,
  `Kuah_Pileku` int(15) NOT NULL,
  `Mie_Aceh` int(15) NOT NULL,
  `Ayam_Tangkap` int(15) NOT NULL,
  `Sie_Reuboh` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `Nama` varchar(100) NOT NULL,
  `menu1` varchar(50) NOT NULL,
  `jumlah1` int(15) NOT NULL,
  `Harga1` varchar(20) NOT NULL,
  `menu2` varchar(15) NOT NULL,
  `jumlah2` int(15) NOT NULL,
  `Harga2` varchar(15) NOT NULL,
  `menu3` varchar(50) NOT NULL,
  `jumlah3` int(15) NOT NULL,
  `Harga3` varchar(15) NOT NULL,
  `menu4` varchar(50) NOT NULL,
  `jumlah4` int(15) NOT NULL,
  `harga4` varchar(50) NOT NULL,
  `menu5` varchar(50) NOT NULL,
  `jumlah5` int(15) NOT NULL,
  `harga5` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`Nama`, `menu1`, `jumlah1`, `Harga1`, `menu2`, `jumlah2`, `Harga2`, `menu3`, `jumlah3`, `Harga3`, `menu4`, `jumlah4`, `harga4`, `menu5`, `jumlah5`, `harga5`) VALUES
('san', 'sate', 3, 'Rp.36000', 'Bakso', 0, 'Rp.0', 'NasGor', 0, 'Rp.0', 'martabak', 0, 'Rp.0', 'ayam bakar', 0, 'Rp.0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `Email` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`Email`, `username`, `password`) VALUES
('isan', 'isan', 'isan'),
('san', 'san', 'san'),
('isan@gmail.com', 'san', 'san');

-- --------------------------------------------------------

--
-- Struktur dari tabel `minuman`
--

CREATE TABLE `minuman` (
  `Nama` varchar(100) NOT NULL,
  `menu1` varchar(50) NOT NULL,
  `jumlah1` int(15) NOT NULL,
  `harga1` varchar(50) NOT NULL,
  `menu2` varchar(50) NOT NULL,
  `jumlah2` int(15) NOT NULL,
  `harga2` varchar(50) NOT NULL,
  `menu3` varchar(50) NOT NULL,
  `jumlah3` int(15) NOT NULL,
  `harga3` varchar(50) NOT NULL,
  `menu4` varchar(50) NOT NULL,
  `jumlah4` int(15) NOT NULL,
  `harga4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `Nama` varchar(50) NOT NULL,
  `NoHP` int(15) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `Nama` varchar(100) NOT NULL,
  `menu_1` varchar(15) NOT NULL,
  `Jumlah_1` int(15) NOT NULL,
  `menu_2` varchar(15) NOT NULL,
  `Jumlah_2` int(15) NOT NULL,
  `Harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`Nama`, `menu_1`, `Jumlah_1`, `menu_2`, `Jumlah_2`, `Harga`) VALUES
('sav', 'Mie Aceh', 1, 'Roti Canai', 2, 'Rp.34000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
