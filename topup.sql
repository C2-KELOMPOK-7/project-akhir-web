-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2023 pada 07.58
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `saran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `email`, `waktu`, `saran`) VALUES
(13, 'abu@gmail.com', '2023-05-10 13:55:07', 'aman dan terpercaya'),
(14, 'refansyah@gmail.com', '2023-05-12 22:29:40', 'no tipu tipu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `game` varchar(50) NOT NULL,
  `uid` varchar(15) NOT NULL,
  `qty` varchar(30) DEFAULT NULL,
  `harga` varchar(30) NOT NULL,
  `via` varchar(100) NOT NULL,
  `tlp` varchar(18) NOT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `email`, `game`, `uid`, `qty`, `harga`, `via`, `tlp`, `waktu`) VALUES
(62, 'riski123123@gmail.com', 'PUBG Mobile', '56364564', '6000 UC', ' 400.000', 'Shopee Pay', '4564564', '2023-05-16 12:46:29'),
(63, 'riski123123@gmail.com', 'PUBG Mobile', '214342342', '150 UC', ' 10.000', 'Gopay', '1423424', '2023-05-16 12:46:00'),
(64, 'riski123123@gmail.com', 'PUBG Mobile', '32423525', '1500 UC', ' 100.000', 'Shopee Pay', '325252', '2023-05-16 12:48:44'),
(65, 'riski123123@gmail.com', 'Genshin Impact', '3252352', '3000 GC', ' 200.000', 'Shopee Pay', '252525252', '2023-05-16 12:48:59'),
(66, 'riski123123@gmail.com', 'Genshin Impact', '2352525', '750 GC', ' 50.000', 'Dana', '2352525', '2023-05-16 12:49:12'),
(67, 'riski123123@gmail.com', 'Genshin Impact', '23523525', '350 GC', ' 25.000', 'Dana', '2534535', '2023-05-16 12:49:23'),
(68, 'riski123123@gmail.com', 'Free Fire', '452463464', '250 Diamonds', ' 10.000', 'OVO', '362463463', '2023-05-16 12:49:35'),
(69, 'riski123123@gmail.com', 'Free Fire', '6758686', '4000 Diamonds', ' 200.000', 'Gopay', '34645747', '2023-05-16 12:49:45'),
(70, 'rinto@gmail.com', 'Mobile Legends', '3525345', '2000 Diamonds', ' 200.000', 'Dana', '5235345', '2023-05-16 12:51:10'),
(71, 'rinto@gmail.com', 'Mobile Legends', '74743535', '4000 Diamonds', ' 400.000', 'OVO', '23525353', '2023-05-16 12:51:20'),
(72, 'rinto@gmail.com', 'Mobile Legends', '245252', '100 Diamonds', ' 10.000', 'Gopay', '23425', '2023-05-16 12:51:29'),
(73, 'rinto@gmail.com', 'PUBG Mobile', '34634626', '3000 UC', ' 200.000', 'Dana', '3463634', '2023-05-16 12:51:45'),
(74, 'rinto@gmail.com', 'PUBG Mobile', '52523532', '750 UC', ' 50.000', 'Dana', '45346436', '2023-05-16 12:51:54'),
(75, 'rinto@gmail.com', 'PUBG Mobile', '2534535', '6000 UC', ' 400.000', 'Dana', '34235324', '2023-05-16 12:52:06'),
(76, 'refansyah@gmail.com', 'Genshin Impact', '2124345436', '3000 GC', ' 200.000', 'Gopay', '21341432', '2023-05-16 12:52:28'),
(77, 'refansyah@gmail.com', 'Genshin Impact', '32534525', '350 GC', ' 25.000', 'OVO', '25235345', '2023-05-16 12:52:41'),
(78, 'refansyah@gmail.com', 'Genshin Impact', '35453', '150 GC', ' 10.000', 'Gopay', '235253452', '2023-05-16 12:52:50'),
(79, 'refansyah@gmail.com', 'Mobile Legends', '235245', '2000 Diamonds', ' 200.000', 'Gopay', '25345252', '2023-05-16 12:52:59'),
(80, 'refansyah@gmail.com', 'Mobile Legends', '43653645', '4000 Diamonds', ' 400.000', 'Shopee Pay', '325346456', '2023-05-16 12:53:09'),
(81, 'riski123123@gmail.com', 'Genshin Impact', '3432423', '350 GC', ' 25.000', 'Dana', '46456456', '2023-05-16 13:04:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `status`) VALUES
(1, 'admin@gmail.com', 'admin', '123', 'admin'),
(2, 'refansyah@gmail.com', 'refan', '123', 'pelanggan'),
(20, 'riski123123@gmail.com', 'riski', '123', 'pelanggan'),
(21, 'seller@gmail.com', 'seller', '123', 'seller'),
(24, 'rinto@gmail.com', 'rinto', '123', 'pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `user_unique` (`id`,`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
