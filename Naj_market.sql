-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Feb 2020 pada 08.23
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `najar_market`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `harga_barang` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga_barang`) VALUES
(112, 'baju Singlet Putih', 1, 20000),
(113, 'baju Singlet Adem', 2, 25000),
(114, 'baju Singlet Special Edition', 3, 45000),
(115, 'baju sekolah SMP', 4, 35000),
(116, 'baju sekolah SMA', 5, 55000),
(117, 'baju kaos hitam casual', 6, 30000),
(118, 'baju kaos sablon funk', 7, 40000),
(119, 'baju koko biru', 8, 50000),
(120, 'baju koko coklat', 9, 65000),
(121, 'baju merk eiger glosy', 10, 70000),
(122, 'baju merk nike', 11, 45000),
(123, 'baju korean Style', 12, 80000),
(124, 'baju winter', 13, 98000),
(125, 'baju blue milenium', 14, 55000),
(126, 'baju pinkadelic persuit', 15, 34000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kategori`
--

CREATE TABLE `t_kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_kategori`
--

INSERT INTO `t_kategori` (`id_kategori`, `nama_kategori`) VALUES
(2, 'bahan TOP'),
(6, 'bahan'),
(7, 'bahan kain'),
(8, 'abu'),
(23, 'bahan'),
(24, 'bahan TOP'),
(25, 'bahan'),
(27, 'bahan rajutan'),
(28, 'bahan mss'),
(29, 'bahan '),
(30, 'bahan kain'),
(31, 'bahan rajutan'),
(32, 'bahan TOP'),
(33, 'bahan'),
(42, 'bahan mss');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `id_transaksi` int(20) NOT NULL,
  `id_barang` int(20) NOT NULL,
  `id_user` int(5) NOT NULL,
  `harga` int(50) NOT NULL,
  `no_transaksi` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `qty_baju` int(10) NOT NULL,
  `total_baju` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `id_barang`, `id_user`, `harga`, `no_transaksi`, `tanggal`, `qty_baju`, `total_baju`) VALUES
(1, 112, 1, 20000, 'abc123', '2020-02-04', 3, 60000),
(2, 113, 2, 25000, 'abcd199', '2020-02-03', 12, 300000),
(3, 114, 3, 45000, 'asdf123', '2020-02-04', 2, 90000),
(4, 115, 4, 35000, 'asdf321', '2020-02-10', 1, 35000),
(5, 116, 5, 55000, 'abc456', '2020-02-07', 8, 440000),
(6, 117, 6, 30000, 'efg123', '2020-02-07', 9, 270000),
(7, 118, 7, 40000, 'abc789', '2020-02-13', 6, 240000),
(8, 119, 8, 50000, 'efg456', '2020-02-03', 2, 100000),
(9, 120, 9, 65000, 'cba444', '2020-02-08', 5, 325000),
(10, 121, 10, 70000, 'cba543', '2020-02-10', 11, 770000),
(11, 122, 11, 45000, 'asdf567', '2020-02-07', 7, 315000),
(12, 123, 12, 80000, 'nm0005', '2020-02-09', 9, 720000),
(13, 124, 13, 98000, 'asd996', '2020-02-07', 2, 196000),
(14, 125, 14, 55000, 'nm0006', '2020-02-11', 5, 275000),
(15, 126, 15, 34000, 'NAJ1294', '2020-02-01', 12, 408000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(20) NOT NULL,
  `nama_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `nama_user`) VALUES
(1, 'Ahmad'),
(2, 'sayidah'),
(3, 'Najar'),
(4, 'Hamdiyah'),
(5, 'Rudin'),
(6, 'Zainab'),
(7, 'udin'),
(8, 'Ayu Permatasari'),
(9, 'Saadudin'),
(10, 'RatnaSari'),
(11, 'khusnul'),
(12, 'Narulita'),
(13, 'Fauzan'),
(14, 'Ujang'),
(15, 'Maryatul Hibtiyah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `t_kategori`
--
ALTER TABLE `t_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `t_transaksi`
--
ALTER TABLE `t_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_barang`
--
ALTER TABLE `t_barang`
  MODIFY `id_barang` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `t_kategori`
--
ALTER TABLE `t_kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `t_transaksi`
--
ALTER TABLE `t_transaksi`
  MODIFY `id_transaksi` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
