-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 27 Jul 2023 pada 07.32
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbusers`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `AGE` int(11) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `CREATED_AT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`ID`, `NAME`, `AGE`, `CITY`, `CREATED_AT`) VALUES
(1, 'RIZAL SUBAGJA', 28, 'BANDA ACEH', '2023-07-27 12:04:15'),
(2, 'ALDIANSYAH ALI', 23, 'SUKABUMI', '2023-07-27 07:05:46'),
(3, 'AHMAD NASIR', 23, 'MOMPANG JAE', '2023-07-27 12:09:12'),
(4, 'GLIDSTO AIRIHANAN', 22, 'KOTA DEPOK', '2023-07-27 12:12:17'),
(5, 'ALDY DWI', 22, 'KOTA DEPOK', '2023-07-27 12:17:10'),
(6, 'DEWI LESTARI', 20, 'KOTA SUKABUMI', '2023-07-27 12:18:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
