-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2023 pada 15.21
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestalt_adrian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Id` bigint(20) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Author` varchar(100) DEFAULT NULL,
  `Price_rent` decimal(10,0) DEFAULT NULL CHECK (`Price_rent` > 0),
  `Book_category` varchar(10) DEFAULT NULL CHECK (`Book_category` in ('MANGA','NOVEL','MAGAZINE'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Id`, `Title`, `Author`, `Price_rent`, `Book_category`) VALUES
(1, 'Her World', 'Singapura', '1000', 'MAGAZINE'),
(2, 'Baccarat', 'Hongkong', '59000', 'MAGAZINE'),
(3, 'Naruto', 'Masashi Kishimoto', '5000', 'MANGA'),
(4, 'Ayat-ayat Cinta', 'Habiburrahman El Shirazy', '3000', 'NOVEL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `Id` bigint(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `identity_card_number` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `identity_card_number`, `address`) VALUES
(1, 'Adrian', '123', 'aw'),
(2, 'Kurniawan', '321', 'wa'),
(3, 'Adrian Kurniawan', '456', 'www');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rent`
--

CREATE TABLE `rent` (
  `Id` bigint(20) NOT NULL,
  `Customer_id` bigint(20) DEFAULT NULL,
  `Book_id` bigint(20) DEFAULT NULL,
  `Date_Rent` date NOT NULL,
  `Date_Return` date DEFAULT NULL CHECK (`Date_Return` > `Date_Rent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rent`
--

INSERT INTO `rent` (`Id`, `Customer_id`, `Book_id`, `Date_Rent`, `Date_Return`) VALUES
(1, 1, 3, '2023-10-01', '2023-10-03'),
(2, 1, 4, '2023-10-08', '2023-10-09'),
(3, 1, 1, '2023-10-01', '2023-10-03'),
(4, 1, 2, '2023-10-01', '2023-10-03'),
(5, 1, 2, '2023-10-01', '2023-10-03'),
(6, 1, 4, '2023-10-01', '2023-10-09'),
(7, 1, 4, '2023-10-01', '2023-10-03'),
(8, 1, 1, '2023-10-01', '2023-10-03'),
(9, 1, 4, '2023-10-01', '2023-10-30'),
(10, 1, 2, '2023-10-01', '2023-10-30'),
(11, 1, 4, '2023-10-01', '2023-10-09'),
(12, 3, 1, '2023-10-01', '2023-10-09'),
(13, 2, 2, '2023-10-01', '2023-10-09'),
(14, 3, 2, '2023-10-08', '2023-10-18');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `Book_id` (`Book_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Id`),
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`Book_id`) REFERENCES `buku` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
