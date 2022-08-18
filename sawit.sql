-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2021 at 11:01 AM
-- Server version: 10.3.31-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lukmandi_sistempakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `Id` int(10) NOT NULL,
  `kode_penyakit` varchar(10) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `MB` int(10) NOT NULL,
  `MD` float NOT NULL,
  `CF` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`Id`, `kode_penyakit`, `nama_gejala`, `nama_penyakit`, `MB`, `MD`, `CF`) VALUES
(1, 'G01', 'Gejala awal berupa bercak berwarna kecokelatan', 'Bercak Daun', 1, 0.4, '0.6'),
(2, 'G03', 'Gejala lanjut berupa bercak berwarna cokelat tua dengan tepian bewarna kekuningan', 'Bercak Daun', 1, 0.5, '0.75'),
(3, 'G04', 'Bercak daun dengan intensitas berat, bercak bersatu dan menyebabkan jaringan daun mengering dan mati', 'Bercak Daun', 1, 0.6, '0.7'),
(4, 'G05', 'Gejala awal pada tanaman menguningnya hampir seluruh pelepah daun', 'Busuk Pangkal Batang (Ganoderma)', 1, 0.5, '0.7'),
(5, 'G06', 'Pada tanaman TBM, gejala diikuti dengan nekrosisnya daun dan terjadinya akumulasi daun tombak lebih ', 'Busuk Pangkal Batang (Ganoderma)', 1, 0.6, '0.6'),
(6, 'G07', 'Pada tanaman TM, gejala lanjut berupa patahnya semua pelepah dan akumulasi daun tombak. Akhirnya ter', 'Busuk Pangkal Batang (Ganoderma)', 1, 0.4, '0.8'),
(7, 'G09', 'Pelepah yang bengkok dan pada bengkokan ini anak daunnya kecil atau robek-robek', 'Penyakit Tajuk', 1, 0.4, '0.6'),
(8, 'G10', 'Gejala ini umumnya tampak pada tanaman belum menghasilkan', 'Penyakit Tajuk', 1, 0.5, '0.6'),
(9, 'G13', 'Anak-anak daun yang masih terlipat itu tampak busuk pada sudut atau tengahnya', 'Penyakit Tajuk', 1, 0.4, '0.8'),
(10, 'G11', 'Daun-daun tua tidak mengkilat, kotor, dan berwarna kemerahan', 'Karat Daun', 1, 0.4, '0.7'),
(11, 'G12', 'Koloni ganggang menyatu menutupi permukaan helai daun', 'Karat Daun', 1, 0.4, '0.6'),
(12, 'G20', 'Karat muda berwarna hijau kelabu, sedangkan yang tua merah bata', 'Karat Daun', 1, 0.4, '0.6'),
(13, 'G14', 'Beberapa helai daun tombak membusuk dan mengering', 'Penyakit Busuk Pupus (Spear rot)', 1, 0.5, '0.6'),
(14, 'G15', 'Pembusukan terus terjadi hingga menyebabkan daun tombak dapat dengan mudah dicabut', 'Penyakit Busuk Pupus (Spear rot)', 1, 0.5, '0.7'),
(15, 'G19', 'Gejala awal dapat berupa kemunculan bercak klorosis/ nekrosis pada daun tombak', 'Penyakit Busuk Pupus (Spear rot)', 1, 0.3, '0.65'),
(16, 'G02', 'Gejala membusuknya daun secara kering yang dimulai dari tepi daun dan berkembang melebar ke tengah', 'Anthracnose', 1, 0.3, '0.7'),
(17, 'G08', 'Jaringan yang sakit mengakibatkan kematian tanaman', 'Anthracnose', 1, 0.8, '0.8'),
(18, 'G16', 'Pada daging buah (mesokarp) menjadi lembek dan berubah warna menjadi coklat kemudian menghitam', 'Busuk Buah (Marasmius Palmivorus)', 1, 0.3, '0.5'),
(19, 'G17', 'Penyakit ini mulai meyerang buah yang berumur 2-4 bulan', 'Busuk Buah (Marasmius Palmivorus)', 1, 0.4, '0.7'),
(20, 'G18', 'Gejala awal biasanya ditandai adanya berkas-berkas miselia jamur berwarna putih menyebar pada kulit ', 'Busuk Buah (Marasmius Palmivorus)', 1, 0.5, '0.75');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `no_hp`, `jenis_kelamin`, `alamat`, `tanggal`) VALUES
(7, 'Lukman', '082225552432', 'Laki', 'Baratajaya IX No 56', '26 - 11 - 2021'),
(8, 'adit', '+6282153915948', 'laki laki', 'lama', '17'),
(9, '', '', '', '', '25 - 11 - 2021'),
(10, '', '', '', '', '25 - 11 - 2021'),
(11, '', '', '', '', ''),
(12, 'Lukman', '082225552432', 'Laki', 'brata', '26 - 11 - 2021'),
(13, '', '', '', '', ''),
(14, 'Lukman', '082225552432', 'Laki', 'Baratajaya IV /57', '26 - 11 - 2021'),
(15, 'aditya', '', '', '', ''),
(16, 'a', '', '', '', ''),
(17, '', '', '', '', ''),
(18, 'beni', '081367848832', 'lakilaki', 'medan', '12 Mei 1987'),
(19, 'beni', '081367848832', 'lakilaki', 'medan', '12 Mei 1987'),
(20, 'Rasi', '08137818128', 'laki laki', 'medan', '12 Januari 2022'),
(21, 'Rasi', '08137818128', 'laki laki', 'medan', '12 Januari 2022'),
(22, '', '', '', '', ''),
(23, 'banang', '082225552432', 'lakik', 'barata', '30 - 11 - 2021'),
(24, 'Babang', '082225552432', 'Laki Laki', 'Barata Jaya', '30 - 11 - 2021'),
(25, '', '', '', '', ''),
(26, '', '', '', '', ''),
(27, '', '', '', '', ''),
(28, '', '', '', '', ''),
(29, '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
