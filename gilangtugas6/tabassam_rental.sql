-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2020 pada 10.23
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabassam_rental`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'reynaldo', 'reynaldo@gmail.com', '$2y$10$WhZWXm8fqoCLOfO4HqqZ1ukYPcYQhgkgq5/v5dcXL7T3eQm6Ihaa2', '2020-03-31 06:34:49', '2020-03-31 06:34:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `kendaraan_id` int(11) NOT NULL,
  `kendaraan_platnomor` varchar(30) NOT NULL,
  `kendaraan_merk` varchar(100) NOT NULL,
  `kendaraan_tipe` varchar(47) NOT NULL,
  `kendaraan_tahunrakit` int(4) NOT NULL,
  `kendaraan_seat` int(11) NOT NULL,
  `kendaraan_foto` text DEFAULT NULL,
  `kendaraan_fasilitas` text DEFAULT NULL,
  `kendaraan_status` enum('bebas','jalan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`kendaraan_id`, `kendaraan_platnomor`, `kendaraan_merk`, `kendaraan_tipe`, `kendaraan_tahunrakit`, `kendaraan_seat`, `kendaraan_foto`, `kendaraan_fasilitas`, `kendaraan_status`) VALUES
(2, 'B 2222 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, '', 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', ''),
(3, 'B 3333 VGA', 'hino', 'R 260', 2011, 43, 'ASAS', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(4, 'B 4444 VGA', 'hino', 'RN 285', 2012, 40, 'asa', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(8, 'B 5555 VGA', 'Mercedes Benz', 'MB 1626', 2011, 43, 'DSDSDS', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(9, 'B 6666 VGA', 'Mercedes Benz', 'MB 1626', 2012, 40, 'DSD', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(10, 'B 7777 VGA', 'K310IB-4x2', 'SCANIA', 2010, 40, 'SDD', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(11, 'B 8888 VGA', 'Scania', 'K360IB-4x2', 2012, 40, 'SDSD', 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(12, 'B 9999 VGA', 'MAN', 'MAN R37', 2012, 40, 'DSDSDSDSDSDS', 'Reclining seats, Foot rests, 5 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(13, 'B 2222 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, NULL, 'bebas'),
(14, 'B 1010 VGA', 'avanza', 'Dutro Bus 130 MDBL', 2011, 25, NULL, NULL, 'jalan'),
(15, 'B 1111 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, NULL, 'bebas'),
(16, 'B 1212 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(17, 'B 1313 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(18, 'B 1414 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(19, 'B 1515 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(20, 'B 1515 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(21, 'B 1616 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2011, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(22, 'B 1717 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2012, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(23, 'B 1818 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2012, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(24, 'B 1919 VGA', 'Hino', 'Dutro Bus 130 MDBL', 2007, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(25, 'B 2020 VGA', 'Mercedes Benz', 'MB 1626', 2011, 5, NULL, 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi, Toilet', 'bebas'),
(26, 'B 2323 VGA', 'Mercedes Benz', 'MB 1626', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(27, 'B 2424 VGA', 'Mercedes Benz', 'MB 1626', 2007, 5, NULL, 'Reclining seats, Foot rests, 3 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(28, 'B 2525 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(29, 'B 2626 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(30, 'B 2727 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(31, 'B 2727 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 6, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(32, 'B 2828 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(33, 'B 2828 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(34, 'B 2929 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(35, 'G 123 BZ', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(36, 'G 345 BA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(37, 'G 385 BF', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2005, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(38, 'G 265 FB', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(39, 'H 1234 GA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(40, 'I 657 H', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(41, 'H 546 LBP', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(42, 'U 654 J', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(43, 'G  987 BD', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(44, 'R 987 ZA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(45, 'G  7658 H', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(46, 'A 7867 DB', 'SCANIA', 'K310IB-4x2', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(47, 'B 345 AP', 'SCANIA', 'K310IB-4x2', 2006, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(48, 'G 5364 PA', 'SCANIA', 'K310IB-4x2', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(49, 'A 9876  BI', 'SCANIA', 'K310IB-4x2', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(50, 'W 578 A', 'SCANIA', 'K310IB-4x2', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(51, 'B 9786 AF', 'SCANIA', 'K310IB-4x2', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(52, 'G 8796 BY', 'SCANIA', 'K310IB-4x2', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(53, 'V 0989 GA', 'SCANIA', 'K310IB-4x2', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(54, 'A 23678 BT', 'SCANIA', 'K310IB-4x2', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(55, 'I 7753 BA', 'SCANIA', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(56, 'Y 7658 GI', 'SCANIA', 'K310IB-4x2', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(57, 'I 98757 CI', 'SCANIA', 'K310IB-4x2', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(58, 'AV 67859 FB', 'SCANIA', 'K310IB-4x2', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(59, 'B 75348 BF', 'SCANIA', 'K310IB-4x2', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(60, 'R 98675 A', 'SCANIA', 'K310IB-4x2', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(61, 'J 65467 BA', 'SCANIA', 'K310IB-4x2', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(62, 'F 85447 GB', 'SCANIA', 'K310IB-4x2', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(63, 'H 98765 AG', 'SCANIA', 'K310IB-4x2', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(64, 'B 87545 AV', 'SCANIA', 'K310IB-4x2', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(65, 'B 2727 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(66, 'A 97538 CF', 'Mercedes Benz', 'K310IB-4x2', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(67, 'Y 64688 GZ', 'SCANIA', 'Dutro Bus 130 MDBL', 2018, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(68, 'F 98757 HG', 'Mercedes Benz', 'MB 1626', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(69, 'Y 987536 RG', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(70, 'B 1515 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(71, 'F 85657LBP', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(72, 'T 87564 GH', 'SCANIA', 'K310IB-4x2', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(73, 'R 87689 J', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(74, 'B 1515 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2011, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(75, 'H84547 JH', 'Hino', 'MB 1626', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(76, 'H 549 LBP', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(77, 'B 2828 VGA', 'SCANIA', 'K310IB-4x2', 2011, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(78, 'A 23677 BT', 'Mercedes Benz', 'MB 1626', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(79, 'B 2222 VGA', 'SCANIA', 'Dutro Bus 130 MDBL', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(80, 'B 2829 VGA', 'SCANIA', 'MB 1626', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(81, 'B 2828 VG', 'Mercedes Benz', 'K310IB-4x2', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(82, 'B 2727 VA', 'avanza', 'Dutro Bus 130 MDBL', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(83, 'B 2825 GA', 'avanza', 'MB 1626', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(84, 'G  7655 H', 'avanza', 'MB 1626', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(85, 'B 2814 VGA', 'avanza', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(86, 'H 5467 IJ', 'avanza', 'Dutro Bus 130 MDBL', 2006, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(87, 'IJ 54675 U', 'avanza', 'MB 1626', 2006, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(88, 'B 2823 VGA', 'avanza', 'MB 1626', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'jalan'),
(89, 'Y 87545 H', 'Hino', 'K310IB-4x2', 2011, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(90, 'R 87547 UJ', 'SCANIA', 'K310IB-4x2', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(91, 'W 7865 G', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2018, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(92, 'W 7865 G', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2018, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(93, 'S 876578 H', 'Hino', 'MB 1626', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(94, 'W 7865 G', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(95, 'U 765 I', 'Mercedes Benz', 'K310IB-4x2', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(96, 'D 9875 G', 'Hino', 'Dutro Bus 130 MDBL', 2011, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(97, 'F 7890876 WB', 'Mercedes Benz', 'K310IB-4x2', 2012, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(98, 'B 2848 VGA', 'SCANIA', 'Dutro Bus 130 MDBL', 2007, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(99, 'B 2267 VGA', 'Mercedes Benz', 'Dutro Bus 130 MDBL', 2006, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(100, 'B 2256 VGA', 'SCANIA', 'K310IB-4x2', 2012, 5, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(101, 'U 87665 Y', 'Hino', 'MB 1626', 2011, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(102, 'Q 234 IJ', 'SCANIA', 'K310IB-4x2', 2018, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(103, 'A 2345 B', 'SCANIA', 'K310IB-4x2', 2018, 25, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas'),
(104, 'B 2828 VG', 'Hino', 'MB 1626', 2007, 4, NULL, 'Reclining seats, Foot rests, 2 LCD 19\", Multimedia player, Wireless microphone, Koneksi wifi', 'bebas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_30_073322_create_admins_table', 1),
(4, '2020_03_30_152746_create_products_table', 2),
(5, '2020_03_30_152914_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(50) NOT NULL,
  `pelanggan_alamat` varchar(230) DEFAULT NULL,
  `pelanggan_telpon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_alamat`, `pelanggan_telpon`) VALUES
(1, 'NURIS AKBAR', 'BANDUNG', '082121473036'),
(2, 'andi', 'jakarta', '0812 1111'),
(3, 'tono', 'bekasi', '0812 2222'),
(4, 'citra', 'depok', '0812 3333'),
(5, 'dewi', 'bogor', '0812 4444'),
(6, 'marzuki', 'tangerang', '0812 5555'),
(8, 'edo', 'jalan asemtiga', '0853467'),
(9, 'Musyrifah', 'Jakarta', '0853467'),
(10, 'Syahida', 'Bandung', '09876545'),
(11, 'Mujahida', 'Surabaya', '09876555'),
(12, 'reynaldo', 'Palembang', '08353636'),
(13, 'Ruqayah', 'Jakarta', '08353636'),
(14, 'Zaidul', 'Bandung', '09876545'),
(15, 'Ahmad', 'Bali', '0875456767'),
(16, 'suharto', 'Padang', '08353636'),
(17, 'Mujiah', 'Makasar', '09876545'),
(18, 'Reva', 'Palembang', '09876555'),
(19, 'Raiz', 'Jakarta', '0875456767'),
(20, 'Varo', 'Bandung', '08353636'),
(21, 'Kunto', 'Aceh', '09876555'),
(22, 'Rivani', 'Bali', '09876555'),
(23, 'Puji', 'Bngka Belitung', '9363533637'),
(24, 'Ilham', 'Surabaya', '9363533637'),
(25, 'Zsechisty', 'Jakarta', '09876545'),
(26, 'roma', 'Balikpapan', '03933363636'),
(27, 'Ridho', 'Brebes', '0982726222'),
(28, 'Kinto', 'Majalengka', '9363533637'),
(29, 'Alim', 'Purwokerto', '08353636'),
(30, 'Munzir', 'Medan', '092722353'),
(31, 'Umar', 'Jakarta', '9363533637'),
(32, 'Utsman', 'Bandung', '09876555'),
(33, 'Ali', 'Palembang', '083633637377'),
(34, 'edo Alfarizi', 'Bandung', '9363533637'),
(35, 'I Made Wirawan', 'Bali', '037334337373'),
(36, 'I Made Wirawan', 'Bali', '037334337373'),
(37, 'Ngurah Rai', 'Bali', '0388377336'),
(38, 'Kuida', 'Jakarta', '028344747'),
(39, 'Lovely', 'Surabaya', '9353536474'),
(40, 'Kirito', 'Balikpapan', '9363533637'),
(41, 'Sutoyo', 'Majalengka', '02827225252'),
(42, 'Muzdalifah', 'Bandung', '08353636'),
(43, 'Mita', 'Kota Tegal', '0282625252'),
(44, 'Syrta', 'Jakarta', '0227225'),
(45, 'Muhammad Adi', 'Banjarmasin', '0373333'),
(46, 'Dirojah', 'Banyumas', '0282252'),
(47, 'Nia', 'Kota Tegal', '038333'),
(48, 'Ve', 'Jakarta', '0853467'),
(49, 'Zay', 'Bali', '02837363636'),
(50, 'Riko', 'Bandung', '9363533637'),
(51, 'Zainudin', 'Jakarta', '02873633'),
(52, 'Memet', 'Surabaya', '0875456767'),
(53, 'Aidho', 'TulungAgung', '028303833'),
(54, 'I Made Gede', 'Bali', '0875456767'),
(55, 'Ronaldinho', 'Palembang', '09643373737'),
(56, 'Muzaka', 'Manado', '096545677'),
(57, 'Umar Al-farizi', 'Bandung', '05678887643'),
(58, 'Dodo', 'Palembang', '0875456767'),
(59, 'Fani', 'Kota Tegal', '0987444555'),
(60, 'Ayuni', 'Brebes', '0875456767'),
(61, 'Syaeful Bakhri', 'Kota Tegal', '09333737373'),
(62, 'Syaeful Labib', 'Pemalang', '098333636'),
(63, 'Mita Mutia', 'Kota Tegal', '09876545'),
(64, 'Reza', 'Jakarta', '0875456767'),
(65, 'Hida', 'Kota Tegal', '9363533637'),
(66, 'Mutia', 'Bali', '0853467'),
(67, 'Teuku Wisnu', 'Aceh', '098765567'),
(68, 'Kurniawan', 'Jakarta', '03837363'),
(69, 'Rumaysho', 'Yogyakarta', '08373535363'),
(70, 'ReyuKhan', 'Kota Tegal', '0987635353'),
(71, 'Sumarni', 'Bandung', '9363533637'),
(72, 'Sumanto', 'Palembang', '0836353336'),
(73, 'Sudada', 'Bandung', '0282726252'),
(74, 'I Made Wirawan Santoso', 'Bali', '09876555'),
(75, 'Ade', 'Kota Tegal', '09654444433'),
(76, 'Wiwit', 'Kota Tegal', '0875456767'),
(77, 'Reynaldo Edwin', 'Kota Tegal', '098765464'),
(78, 'vembri', 'Kota Tegal', '9363533637'),
(79, 'wijaya', 'Kota Tegal', '0875456767'),
(80, 'Tasya', 'Kota Tegal', '084746363'),
(81, 'Vey', 'Palembang', '08353636'),
(82, 'Kurniawan Ade', 'Brebes', '0987464663'),
(83, 'Ade Owen', 'Kota Tegal', '0874333'),
(84, 'Ade Barkash', 'Bandung', '9363533637'),
(85, 'Murnia', 'Jakarta', '9363533637'),
(86, 'Rifa\'i', 'Kota Tegal', '0875456767'),
(87, 'Ravildo', 'Surabaya', '0938335353'),
(88, 'Mujhira', 'Jakarta', '09876545'),
(89, 'Robin', 'Bandung', '0853467'),
(90, 'Robin', 'Bandung', '0853467'),
(91, 'Syaukani', 'Batang', '0987624262'),
(92, 'Syaukani', 'Batang', '0987624262'),
(93, 'Hartoyo', 'Tangerang', '098262526'),
(94, 'Zubaedah', 'Kota Tegal', '0938833363'),
(95, 'Razi', 'Surabaya', '083363363'),
(96, 'Kurniawan Masrury', 'Bandung', '0837333526'),
(97, 'Nomury', 'Bali', '0987876242'),
(98, 'Demian', 'Kota Tegal', '09876555'),
(99, 'Lucardo', 'Banjarmasin', '0986884'),
(100, 'I Made AgusWirawan', 'Bali', '087765227'),
(101, 'bakhry', 'Kota Tegal', '08763567');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sopir`
--

CREATE TABLE `sopir` (
  `sopir_id` int(11) NOT NULL,
  `sopir_alamat` text NOT NULL,
  `sopir_nama` varchar(100) NOT NULL,
  `sopir_telpon` varchar(12) NOT NULL,
  `sopir_ktp` varchar(30) NOT NULL,
  `sopir_sim` varchar(30) NOT NULL,
  `sopir_status` enum('bebas','jalan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sopir`
--

INSERT INTO `sopir` (`sopir_id`, `sopir_alamat`, `sopir_nama`, `sopir_telpon`, `sopir_ktp`, `sopir_sim`, `sopir_status`) VALUES
(1, 'BEKASI', 'Andreas', '08182222', '1234 2222', '6789 2222', 'bebas'),
(2, 'JAKARTA', 'Alexander', '08181111', '1234 1111', '6789 1111', 'jalan'),
(3, 'DEPOK', 'Bimo', '08183333', '1234 3333', '6789 3333', 'bebas'),
(4, 'bogor', 'Bima', '08184444', '1234 4444', '6789 4444', 'bebas'),
(5, 'jakarta', 'Chandra', '08185555', '1234 5555', '6789 5555', 'bebas'),
(6, 'benasi', 'David', '08186666', '1234 6666', '6789 6666', 'bebas'),
(7, 'Kota Medan', 'Dewi', '08187777', '1234 7777', '6789 7777', 'bebas'),
(8, 'bogor', 'Edward', '08188888', '1234 8888', '6789 8888', 'bebas'),
(9, 'tangerang', 'Aidho', '08189999', '1234 9999', '6789 9999', 'bebas'),
(11, 'Jakarta', 'Supri', '087642345678', '872223242526', '242422627228', 'bebas'),
(12, 'Medan', 'Dirjo', '087652422425', '922625353633', '83634337383', 'jalan'),
(13, 'Madura', 'supri', '092625272726', '92725222626', '9282635637338', 'bebas'),
(14, 'Surabaya', 'Reynaldo', '09373633', '0383635363737', '0383635336377', 'bebas'),
(15, 'Madura', 'daryo', '0974262727', '526282929292', '928262526282', 'bebas'),
(16, 'Bali', 'I Gede', '082622222', '9272625252626', '9272525272828', 'bebas'),
(17, 'Kebumen', 'Suyoto', '098363535', '033363633378', '0383635353637', 'bebas'),
(18, 'Jakarta', 'Durjo', '097353637', '038335337383', '03833533339', 'jalan'),
(19, 'Aceh', 'Sujoto', '038336363', '03933636373', '033735363737', 'bebas'),
(20, 'Bandung', 'Salva', '09373633', '03938363637', '03938833377', 'bebas'),
(21, 'Bali', 'Edo', '08363535', '03373633366', '033773363377', 'jalan'),
(22, 'Denpasar', 'I Putu Gede', '937363535', '938336353637', '039933333533', 'jalan'),
(23, 'Madura', 'Sugibyo', '03937363535', '833536333939', '038335353633', 'bebas'),
(24, 'Jakarta', 'Darjo', '093363535', '03933335333', '03933633635', 'bebas'),
(25, 'tangerang', 'somad', '0383353', '9333363337377', '039373636363', 'bebas'),
(26, 'Pemalang', 'Dibyo', '0746474847', '04944445464747', '0494746464646', 'bebas'),
(27, 'Madura', 'doodo', '09373633', '0447464646', '049474644', 'bebas'),
(28, 'Bali', 'Dewi', '84464474', '9484464647', '0484746446', 'bebas'),
(29, 'Madura', 'Aidho Alfa', '84464474', '9484464647', '0484746446', 'bebas'),
(30, 'Surabaya', 'I Nyoman Agung', '38373338', '04474644747', '94846454546', 'bebas'),
(31, 'Jakarta', 'Dewi Anggreani', '38373338', '9484464647', '0484746446', 'bebas'),
(32, 'Kota Medan', 'Dewi Anggreani Syahputri', '38373338', '9484464647', '0484746446', 'bebas'),
(33, 'Surabaya', 'Ragil', '099474646', '048474645', '04474644', 'bebas'),
(34, 'Surabaya', 'Dewi Arofa', '9446464744', '049446464647', '04847464646', 'jalan'),
(35, 'Bali', 'I Ngurah Rai', '93363535', '04474644747', '0484746446', 'bebas'),
(36, 'Jakarta', 'Aidho Suplaii', '9446464744', '9484464647', '04474644', 'jalan'),
(37, 'Bandung', 'Kuya', '9446464744', '9484464647', '04847464646', 'bebas'),
(38, 'Jakarta', 'Ray', '0944645547', '484746454546', '92862524748', 'jalan'),
(39, 'Manado', 'Galaxy', '0373653363', '3837363536', '0393333534', 'bebas'),
(40, 'Yogyakarta', 'Buwono', '933633535', '058573542', '0484752426', 'bebas'),
(41, 'Madura', 'Mey', '0393837363', '826254857', '098765477', 'jalan'),
(42, 'Makasar', 'Opa', '0393363535', '8373524238', '0393363536', 'bebas'),
(43, 'Makasar', 'Dewi Alfia', '0337363536', '03938366177', '02827252422', 'bebas'),
(44, 'Madura', 'sumanto', '03933336', '039336336', '039383635', 'bebas'),
(45, 'Aceh', 'Tengu arsy', '9446464744', '3837363536', '92862524748', 'jalan'),
(46, 'Aceh', 'Cut Hida', '0373653363', '049446464647', '0484746446', 'bebas'),
(47, 'Aceh', 'Rido', '84464474', '9484464647', '94846454546', 'bebas'),
(48, 'Madura', 'Ryhan', '9446464744', '04474644747', '04474644', 'jalan'),
(49, 'Madura', 'Ryhan Alfiana', '84464474', '3837363536', '0393333534', 'jalan'),
(50, 'Madura', 'Aidho Musyafa', '039373635', '039383736', '0337322526', 'jalan'),
(51, 'Surabaya', 'Rosyid', '84464474', '9484464647', '92862524748', 'jalan'),
(52, 'Surabaya', 'Rifani', '09836353', '039373636', '7363373839', 'jalan'),
(53, 'Kota Tegal', 'vembri', '0994463536', '0494444646', '827233839', 'jalan'),
(54, 'Kota Tegal', 'Nia', '03837363', '01136374', '02726337', 'bebas'),
(55, 'Bali', 'Mita', '9446464744', '04474644747', '92862524748', 'bebas'),
(56, 'Brebes', 'Johan', '039383736', '9383353537', '1817353737', 'bebas'),
(57, 'Madura', 'Dewi Arando', '38373338', '9484464647', '94846454546', 'bebas'),
(58, 'Madura', 'Dewi Arando', '38373338', '9484464647', '94846454546', 'bebas'),
(59, 'Padang', 'Sugiono', '38373338', '3837363536', '04474644', 'jalan'),
(60, 'Surabaya', 'Siao', '048553738', '03937363537', '08252675858', 'bebas'),
(61, 'Bandung', 'Xe', '048574644', '059475222', '0836474484', 'bebas'),
(62, 'Brebes', 'Ve', '9446464744', '3837363536', '04847464646', 'jalan'),
(63, 'Madura', 'Kuy', '0397353647', '085352253748', '08262425478', 'jalan'),
(64, 'Pemalang', 'Rua', '03736337', '0393736337', '03335333838', 'jalan'),
(65, 'Surabaya', 'I Nyoman Setiwan', '03372557494', '03836353637', '08168448466', 'bebas'),
(66, 'Bali', 'Aidho Alfa Amirul', '84464474', '484746454546', '0393333534', 'jalan'),
(67, 'Jakarta', 'Roward', '0383725326', '05752326484', '03825357587', 'bebas'),
(68, 'Pemalang', 'Gugun', '9446464744', '484746454546', '04474644', 'jalan'),
(69, 'Padang', 'Reko', '38373338', '9484464647', '04847464646', 'jalan'),
(70, 'bekasi', 'Ningtyas', '098353425', '42537485847', '927252263849', 'jalan'),
(71, 'Aceh', 'Cut Hina', '09476367', '4364844955', '9372226844', 'jalan'),
(72, 'Malang', 'Yusli', '83632264849', '937353537474', '234493262527', 'bebas'),
(73, 'Lamongan', 'Sujoyo', '094542637', '753435363', '4463389486', 'bebas'),
(74, 'Bali', 'I Nyoman', '0484634226', '3335336338', '098465342', 'jalan'),
(75, 'Surabaya', 'I Nyoman Purwo', '38373338', '3837363536', '94846454546', 'jalan'),
(76, 'Aceh', 'Teuku Risa', '38373338', '3837363536', '04474644', 'jalan'),
(77, 'Kota Tegal', 'Romli', '38373338', '04474644747', '04847464646', 'bebas'),
(78, 'Madura', 'Aidho Muhammad', '037353426', '03363425272', '48463536338', 'jalan'),
(79, 'Aceh', 'Cut Mutia', '0373653363', '9484464647', '0393333534', 'bebas'),
(80, 'Brebes', 'Aramco', '84464474', '04474644747', '92862524748', 'jalan'),
(81, 'Brebes', 'Aramco', '84464474', '04474644747', '92862524748', 'jalan'),
(82, 'Padang', 'Simanjutak', '9446464744', '9484464647', '04474644', 'bebas'),
(83, 'Surabaya', 'Yoga', '0373653363', '04474644747', '0393333534', 'bebas'),
(84, 'Surabaya', 'Aramco Nahila', '84464474', '484746454546', '0393333534', 'jalan'),
(85, 'Bali', 'I Nyoman Terrawan', '083735425', '8675343383', '9876434566', 'bebas'),
(86, 'Jakarta', 'Budi', '09826242', '8463424374', '8742574785', 'bebas'),
(87, 'Bandung', 'Maudia', '072522627', '09363353637', '435378969968', 'jalan'),
(88, 'Madura', 'Rumili', '094745435', '97445648383', '652325374849', 'bebas'),
(89, 'Bali', 'I Nyoman Munwar', '947453363', '0557464744', '53422564785', 'bebas'),
(90, 'Lamongan', 'Anandita', '84464474', '049446464647', '92862524748', 'bebas'),
(91, 'Bali', 'Putu Gede wirawan', '9446464744', '9484464647', '94846454546', 'jalan'),
(92, 'Madura', 'Mulyono', '0373653363', '049446464647', '04847464646', 'bebas'),
(93, 'Kota Tegal', 'Aramco Muhammad', '9446464744', '9484464647', '04847464646', 'bebas'),
(94, 'Surabaya', 'Aidho Kuya', '933633535', '8373524238', '7363373839', 'bebas'),
(95, 'Surabaya', 'Dewi Arando Da Silva', '933633535', '484746454546', '0393333534', 'bebas'),
(96, 'Bali', 'Ridho Gustalvo', '2354646447', '23474848485', '23645755585', 'jalan'),
(97, 'Kota Tegal', 'Sujiwo', '735342283', '62423253738', '946343633', 'jalan'),
(98, 'Surabaya', 'Da Silva Cinamos', '9836355343', '0937363535', '3574484848', 'bebas'),
(99, 'Surabaya', 'Dewi Aisyah', '9446464744', '8373524238', '0484746446', 'bebas'),
(100, 'Bali', 'I Nyoman Agung Setiawan', '9446464744', '3837363536', '0484746446', 'jalan'),
(101, 'Surabaya', 'Aisyah Syahida', '84464474', '04474644747', '1817353737', 'bebas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif`
--

CREATE TABLE `tarif` (
  `tarif_id` int(11) NOT NULL,
  `kendaraan_id` int(11) NOT NULL,
  `tarif_perhari` int(11) NOT NULL,
  `tarif_overtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tarif`
--

INSERT INTO `tarif` (`tarif_id`, `kendaraan_id`, `tarif_perhari`, `tarif_overtime`) VALUES
(3, 1, 1200000, 1000000),
(4, 2, 2000000, 2000000),
(5, 3, 3000000, 3000000),
(6, 4, 4000000, 4000000),
(7, 8, 5000000, 5000000),
(8, 9, 6000000, 6000000),
(9, 10, 7000000, 7000000),
(10, 11, 8000000, 8000000),
(14, 12, 800, 2000000),
(15, 13, 300, 500),
(16, 14, 300, 500),
(17, 14, 120000, 500000),
(18, 15, 120000, 500000),
(19, 16, 120000, 500000),
(20, 16, 120000, 500000),
(21, 18, 120000, 500000),
(22, 19, 120000, 500000),
(23, 20, 120000, 500000),
(24, 21, 120000, 500000),
(25, 22, 120000, 500000),
(26, 23, 120000, 500000),
(27, 24, 120000, 500000),
(28, 25, 120000, 500000),
(29, 26, 120000, 500000),
(30, 27, 120000, 500000),
(31, 28, 120000, 500000),
(32, 29, 120000, 500000),
(33, 30, 120000, 500000),
(34, 31, 120000, 500000),
(35, 32, 120000, 500000),
(36, 33, 200000, 400000),
(37, 34, 200000, 400000),
(38, 35, 200000, 400000),
(39, 36, 200000, 400000),
(40, 37, 200000, 400000),
(41, 38, 200000, 400000),
(42, 39, 200000, 400000),
(43, 40, 200000, 400000),
(44, 41, 200000, 400000),
(45, 42, 200000, 400000),
(46, 43, 200000, 400000),
(47, 44, 200000, 400000),
(48, 45, 200000, 400000),
(49, 46, 200000, 400000),
(50, 47, 200000, 400000),
(51, 48, 200000, 400000),
(52, 49, 200000, 400000),
(53, 50, 200000, 400000),
(54, 51, 300000, 600000),
(55, 52, 300000, 600000),
(56, 53, 300000, 600000),
(57, 54, 300000, 600000),
(58, 55, 300000, 600000),
(59, 56, 300000, 600000),
(60, 57, 300000, 600000),
(61, 58, 300000, 600000),
(62, 59, 300000, 600000),
(63, 60, 300000, 600000),
(64, 61, 300000, 600000),
(65, 62, 300000, 600000),
(66, 63, 300000, 600000),
(67, 64, 300000, 600000),
(68, 65, 300000, 600000),
(69, 66, 300000, 600000),
(70, 67, 300000, 600000),
(71, 68, 300000, 400000),
(72, 69, 300000, 400000),
(73, 70, 300000, 600000),
(74, 71, 300000, 600000),
(75, 72, 300000, 600000),
(76, 73, 300000, 600000),
(77, 74, 300000, 600000),
(78, 75, 300000, 600000),
(79, 76, 300000, 600000),
(80, 77, 300000, 600000),
(81, 78, 300000, 600000),
(82, 79, 300000, 600000),
(83, 80, 400000, 800000),
(84, 81, 400000, 800000),
(85, 82, 400000, 800000),
(86, 83, 400000, 800000),
(87, 84, 400000, 800000),
(88, 85, 400000, 800000),
(89, 86, 400000, 800000),
(90, 87, 400000, 800000),
(91, 88, 400000, 800000),
(92, 89, 400000, 800000),
(93, 90, 400000, 800000),
(94, 91, 500000, 1000000),
(95, 92, 500000, 1000000),
(96, 93, 500000, 1000000),
(97, 94, 500000, 1000000),
(98, 95, 500000, 1000000),
(99, 96, 500000, 1000000),
(100, 97, 500000, 1000000),
(101, 98, 500000, 1000000),
(102, 99, 500000, 1000000),
(103, 99, 500000, 1000000),
(104, 100, 500000, 1000000),
(105, 101, 500000, 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `sopir_id` int(11) NOT NULL,
  `transaksi_tglmulai` date NOT NULL,
  `transaksi_tglselesai` date DEFAULT NULL,
  `transaksi_hari` varchar(10) DEFAULT NULL,
  `transaksi_tglovertime` varchar(288) NOT NULL,
  `transaksi_hariovertime` int(11) DEFAULT NULL,
  `transaksi_total` int(11) NOT NULL,
  `transaksi_status` enum('mulai','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `pelanggan_id`, `sopir_id`, `transaksi_tglmulai`, `transaksi_tglselesai`, `transaksi_hari`, `transaksi_tglovertime`, `transaksi_hariovertime`, `transaksi_total`, `transaksi_status`) VALUES
(1, 2, 2, '2015-06-12', '2015-06-13', '1', '2015-06-19', 6, 6000000, 'selesai'),
(2, 2, 3, '2015-06-11', '2015-06-13', NULL, '0000-00-00', NULL, 0, 'mulai'),
(3, 2, 2, '2015-06-12', '2015-06-14', NULL, '2015-06-18', 7, 6000000, 'selesai'),
(4, 3, 3, '2015-06-06', '2015-06-08', '4', '2015-06-12', 7, 600000, 'selesai'),
(5, 4, 4, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(6, 5, 5, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(7, 6, 6, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(8, 7, 7, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 700000, 'selesai'),
(9, 8, 8, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 300000, 'selesai'),
(10, 9, 9, '2015-06-07', '2015-06-08', '1', '2015-06-15', 7, 300000, 'selesai'),
(11, 10, 10, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(12, 11, 11, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(13, 12, 12, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(14, 13, 13, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(15, 14, 14, '2015-06-08', '2015-06-09', '1', '2015-06-16', 7, 500000, 'selesai'),
(16, 15, 15, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(17, 16, 16, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(18, 16, 16, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(19, 17, 17, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(20, 18, 18, '2015-07-10', '2015-07-11', '1', '2015-07-18', 7, 500000, 'selesai'),
(21, 19, 19, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(22, 20, 20, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(23, 21, 21, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(24, 22, 22, '2015-07-12', '2015-07-13', '1', '2015-07-19', 7, 500000, 'selesai'),
(25, 24, 24, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 500000, 'selesai'),
(26, 25, 25, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 700000, 'selesai'),
(27, 26, 26, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(28, 27, 27, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(29, 28, 28, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 700000, 'selesai'),
(30, 29, 29, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 700000, 'selesai'),
(31, 30, 30, '2015-08-13', '2015-08-14', '1', '2015-08-20', 7, 500000, 'selesai'),
(32, 31, 31, '2015-07-13', '2015-07-14', '1', '2015-07-20', 7, 500000, 'selesai'),
(33, 32, 32, '2015-08-14', '2015-08-15', '1', '2015-08-19', 6, 400000, 'selesai'),
(34, 33, 33, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 400000, 'selesai'),
(35, 35, 35, '2015-08-13', '2015-08-14', '1', '2015-07-20', 6, 500000, 'selesai'),
(36, 36, 36, '2015-08-16', '2015-08-17', '1', '2015-08-21', 7, 500000, 'selesai'),
(37, 37, 37, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 500000, 'selesai'),
(38, 38, 38, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 700000, 'selesai'),
(39, 39, 39, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 400000, 'selesai'),
(40, 40, 40, '2015-08-13', '2015-08-14', '1', '2015-08-20', 6, 500000, 'selesai'),
(41, 41, 41, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 500000, 'selesai'),
(42, 42, 42, '2015-08-16', '2015-08-17', '1', '2015-08-20', 4, 550000, 'selesai'),
(43, 43, 43, '2015-09-01', '2015-09-02', '1', '2015-09-08', 6, 500000, 'selesai'),
(44, 44, 44, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 550000, 'selesai'),
(45, 45, 45, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 700000, 'selesai'),
(46, 46, 46, '2015-09-15', '2015-09-16', '1', '2015-09-25', 7, 500000, 'selesai'),
(47, 47, 47, '2015-10-01', '2015-10-02', '1', '2015-10-07', 5, 550000, 'selesai'),
(48, 48, 48, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 400000, 'selesai'),
(49, 49, 49, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 400000, 'selesai'),
(50, 50, 50, '2015-10-01', '2015-10-02', '1', '2015-10-07', 7, 500000, 'selesai'),
(51, 51, 51, '2015-10-01', '2015-10-02', '1', '2015-10-07', 6, 550000, 'selesai'),
(52, 52, 52, '2015-10-01', '2015-10-02', '1', '2015-10-07', 6, 600000, 'selesai'),
(53, 53, 53, '2015-10-03', '2015-10-04', '1', '2015-10-11', 7, 700000, 'selesai'),
(54, 54, 54, '2015-10-03', '2015-10-04', '1', '2015-10-12', 6, 500000, 'selesai'),
(55, 55, 55, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 600000, 'selesai'),
(56, 56, 56, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 700000, 'selesai'),
(57, 57, 57, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 600000, 'selesai'),
(58, 58, 58, '2015-10-04', '2015-10-05', '1', '2015-10-12', 7, 400000, 'selesai'),
(59, 59, 59, '2015-11-12', '2015-11-13', '1', '2015-11-20', 7, 700000, 'selesai'),
(60, 60, 60, '2015-11-11', '2015-11-12', '1', '2015-11-20', 7, 500000, 'selesai'),
(61, 61, 61, '2015-11-12', '2015-11-13', '1', '2015-11-21', 7, 800000, 'selesai'),
(62, 62, 62, '2015-11-13', '2015-11-14', '1', '2015-11-20', 7, 700000, 'selesai'),
(63, 63, 63, '2015-11-14', '2015-11-15', '1', '2015-11-21', 7, 850000, 'selesai'),
(64, 64, 64, '2015-11-14', '2015-11-15', '1', '2015-11-21', 7, 700000, 'selesai'),
(65, 65, 65, '2015-11-15', '2015-11-16', '1', '2015-11-22', 7, 700000, 'selesai'),
(66, 66, 66, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 500000, 'selesai'),
(67, 67, 67, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 550000, 'selesai'),
(68, 68, 68, '2015-11-20', '2015-11-21', '1', '2015-11-28', 7, 400000, 'selesai'),
(69, 69, 69, '2016-01-20', '2016-01-21', '1', '2016-1-28', 7, 500000, 'selesai'),
(70, 70, 70, '2016-01-23', '2016-01-24', '1', '2016-1-31', 7, 900000, 'selesai'),
(71, 71, 71, '2016-01-23', '2016-01-24', '1', '2016-1-31', 7, 600000, 'selesai'),
(72, 72, 72, '2016-02-10', '2016-02-11', '1', '2016-2-18', 7, 400000, 'selesai'),
(73, 73, 73, '2016-03-11', '2016-03-12', '1', '2016-3-19', 7, 700000, 'selesai'),
(74, 74, 74, '2016-04-11', '2016-04-12', '1', '2016-4-19', 7, 400000, 'selesai'),
(75, 75, 75, '2016-05-11', '2016-05-12', '1', '2016-5-19', 7, 500000, 'selesai'),
(76, 76, 76, '2016-06-11', '2016-06-12', '1', '2016-6-19', 7, 400000, 'selesai'),
(77, 77, 77, '2016-07-11', '2016-07-12', '1', '2016-7-19', 7, 500000, 'selesai'),
(78, 77, 77, '2016-08-11', '2016-08-12', '1', '2016-8-19', 7, 550000, 'selesai'),
(79, 79, 79, '2016-09-11', '2016-09-12', '1', '2016-9-19', 7, 700000, 'selesai'),
(80, 80, 80, '2016-10-11', '2016-10-12', '1', '2016-10-19', 7, 500000, 'selesai'),
(81, 81, 81, '2016-12-11', '2016-12-12', '1', '2016-12-19', 7, 500000, 'selesai'),
(82, 82, 82, '2017-01-11', '2017-01-12', '1', '2017-01-19', 7, 400000, 'selesai'),
(83, 83, 83, '2017-02-11', '2017-02-12', '1', '2017-01-19', 7, 600000, 'selesai'),
(84, 84, 84, '2017-03-11', '2017-03-12', '1', '2017-03-19', 7, 1000000, 'selesai'),
(85, 85, 85, '2017-04-11', '2017-04-12', '1', '2017-04-19', 7, 500000, 'selesai'),
(86, 86, 86, '2017-05-11', '2017-05-12', '1', '2017-05-19', 7, 700000, 'selesai'),
(87, 87, 87, '2017-06-11', '2017-06-12', '1', '2017-06-19', 7, 550000, 'selesai'),
(88, 88, 88, '2017-07-11', '2017-07-12', '1', '2017-07-19', 7, 700000, 'selesai'),
(89, 89, 89, '2017-08-11', '2017-08-12', '1', '2017-08-19', 7, 700000, 'selesai'),
(90, 90, 90, '2017-09-11', '2017-09-12', '1', '2017-09-19', 7, 700000, 'selesai'),
(91, 91, 91, '2017-10-11', '2017-10-12', '1', '2017-10-19', 7, 400000, 'selesai'),
(92, 93, 93, '2017-11-11', '2017-11-12', '1', '2017-11-19', 7, 700000, 'selesai'),
(93, 94, 94, '2017-12-11', '2017-12-12', '1', '2017-12-19', 7, 400000, 'selesai'),
(94, 95, 95, '2018-01-11', '2018-01-12', '1', '2018-01-19', 7, 1200000, 'selesai'),
(95, 96, 96, '2018-02-11', '2018-02-12', '1', '2018-02-19', 7, 700000, 'selesai'),
(96, 96, 96, '2018-03-11', '2018-03-12', '1', '2018-03-19', 7, 500000, 'selesai'),
(97, 97, 97, '2018-03-11', '2018-03-12', '1', '2018-03-19', 7, 500000, 'selesai'),
(98, 98, 998, '2018-04-11', '2018-04-12', '1', '2018-04-19', 7, 550000, 'selesai'),
(99, 99, 99, '2018-05-11', '2018-05-12', '1', '2018-05-19', 7, 500000, 'selesai'),
(100, 100, 100, '2018-06-11', '2018-06-12', '1', '2018-05-19', 7, 550000, 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'reynaldo', 'reynaldoex723@gmail.com', '$2y$10$OcNA5oK4pcqb4tac6Re.4e5Iq1NGgCWCtDCQOFaYuPCz2P5CGrjtm', 'rCzm3CzDZqc9PGuCTc3m7saR7JEUIqPJYmGqcDmsgtnLxUqm33Dt70PfvXbc', '2020-03-30 15:38:54', '2020-03-30 15:38:54'),
(2, 'hida', 'hida@gmail.com', '$2y$10$eP4wA57ABG6PxEpOhoKhzeygN4H.0..vV1A.PbyFL6DsPvdKBWbyC', '47O2heYxacoOsFwsPJjU6vEEvq0dgUMpuUCqJtXpms9DtN1i2JVyp97f02DU', '2020-04-02 20:50:38', '2020-04-02 20:50:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`kendaraan_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`sopir_id`);

--
-- Indeks untuk tabel `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`tarif_id`);

--
-- Indeks untuk tabel `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `kendaraan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sopir`
--
ALTER TABLE `sopir`
  MODIFY `sopir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `tarif`
--
ALTER TABLE `tarif`
  MODIFY `tarif_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
