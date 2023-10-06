-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2023 at 05:23 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prakweb_2023_b_213040045`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` char(5) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `kategori` enum('Horror','Romantis','Komedi','Sedih','Bahagia') NOT NULL,
  `tahun_terbit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penerbit`, `pengarang`, `kategori`, `tahun_terbit`) VALUES
('BK001', 'Cinta di Senja ', 'Penerbit A', 'Penulis A', 'Romantis', '2021-01-01'),
('BK002', 'Pelukan Malam', 'Penerbit B', 'Penulis B', 'Romantis', '2022-01-01'),
('BK003', 'Romansa Tengah Malam', 'Penerbit A', 'Penulis C', 'Romantis', '2020-01-01'),
('BK004', 'Puisi Cinta', 'Penerbit C', 'Penulis D', 'Romantis', '2019-01-01'),
('BK005', 'Rumah Hantu', 'Penerbit D', 'Penulis E', 'Horror', '2021-01-01'),
('BK006', 'Kereta Misterius', 'Penerbit E', 'Penulis F', 'Horror', '2022-01-01'),
('BK007', 'Bayangan Gelap', 'Penerbit D', 'Penulis G', 'Horror', '2020-01-01'),
('BK008', 'Kisah Hantu', 'Penerbit F', 'Penulis H', 'Horror', '2019-01-01'),
('BK009', 'Tawa Pagi Hari', 'Penerbit G', 'Penulis I', 'Komedi', '2021-01-01'),
('BK010', 'Cerita Lucu Om Bob', 'Penerbit H', 'Penulis J', 'Komedi', '2022-01-01'),
('BK011', 'Komik Lucu', 'Penerbit G', 'Penulis K', 'Komedi', '2020-01-01'),
('BK012', 'Dagelan Kampus', 'Penerbit I', 'Penulis L', 'Komedi', '2019-01-01'),
('BK013', 'Air Mata Terakhir', 'Penerbit J', 'Penulis M', 'Sedih', '2021-01-01'),
('BK014', 'Pulang Tanpa Jejak', 'Penerbit K', 'Penulis N', 'Sedih', '2022-01-01'),
('BK015', 'Hilangnya Cinta', 'Penerbit J', 'Penulis O', 'Sedih', '2020-01-01'),
('BK016', 'Kisah Sedih Di Kota', 'Penerbit L', 'Penulis P', 'Sedih', '2019-01-01'),
('BK017', 'Hari Bahagia', 'Penerbit M', 'Penulis Q', 'Bahagia', '2021-01-01'),
('BK018', 'Tawa di Tengah Kota', 'Penerbit N', 'Penulis R', 'Bahagia', '2022-01-01'),
('BK019', 'Kisah Bahagia', 'Penerbit M', 'Penulis S', 'Bahagia', '2020-01-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
