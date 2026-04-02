-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2018 at 04:40 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko_baju`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(35) NOT NULL,
  `harga` varchar(35) NOT NULL,
  `stok` varchar(35) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`, `gambar`, `id_kategori`) VALUES
(21, 'T-Shirt', '30000', '20', 'baju1.jpg', 8),
(22, 'klambih', '50000', '22', 'baju2.jpg', 8),
(23, 'celana', '60000', '21', 'celana1.jpg', 9),
(24, 'sepatu', '35000', '28', 'sepatu1.jpg', 10),
(25, 'sandal celleng', '5000', '20', 'Sandal-jepit-Keren-pantai-sandal-Hitam-dan-coklat-warna-ukuran-besar.jpg', 11),
(26, 'celana jeans', '80000', '13', 'celana2.jpg', 9),
(27, 'sepatu celleng', '40000', '31', 'sepatu2.jpg', 10),
(28, 'Baju', '25000', '26', 'baju3.jpg', 8),
(29, 'gray shoes', '65000', '25', 'sepatu3.jpg', 10),
(30, 'sandal pink', '20000', '19', 'oasis-sandal--162208Z 5J-front-1-300-0-320-320.jpg', 11),
(31, 'celana binik', '80000', '29', 'celana3.jpg', 9),
(32, 'Lenovo IdeaPad S300', '4000000', '9', 'Spesifikasi-Lenovo-IdeaPad-S300_new.jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(35) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(8, 'baju'),
(9, 'celana'),
(10, 'sepatu'),
(11, 'sandal'),
(12, 'laptop');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `harga_barang` varchar(25) NOT NULL,
  `jumlah_beli` varchar(25) NOT NULL,
  `status` varchar(30) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `total` varchar(25) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `harga_barang`, `jumlah_beli`, `status`, `waktu`, `total`, `id_barang`, `id_pengguna`) VALUES
(49, '4000000', '1', 'proses kirim', 'Friday, 19-10-2018 09:09:05pm', '4000000', 32, 2),
(50, '50000', '1', 'belum bayar', '', '50000', 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak` varchar(25) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `jenis_kelamin`, `tgl_lahir`, `username`, `password`, `hak`) VALUES
(1, 'anonymous', 'Laki - Laki', '1992-09-14', 'anonymous', '123', 'pengguna'),
(2, 'google', 'Laki - Laki', '1999-06-09', 'gogel', '321', 'pengguna'),
(6, 'admin online shop', 'Laki - Laki', '1992-09-14', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `waktu_transaksi` varchar(50) NOT NULL,
  `subtotal` varchar(25) NOT NULL,
  `status_transaksi` varchar(30) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `waktu_transaksi`, `subtotal`, `status_transaksi`, `alamat`, `no_hp`, `id_pengguna`) VALUES
(45, 'Friday, 19-10-2018 09:09:05pm', '4000000', 'proses kirim', 'Jeu', '083865209181', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
