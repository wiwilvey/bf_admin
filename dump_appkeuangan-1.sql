-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02 Sep 2019 pada 11.27
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appkeuangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `NIG` varchar(5) NOT NULL,
  `NAMA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`NIG`, `NAMA`) VALUES
('gr001', 'EKA TUSILAWATI,S.AB'),
('gr002', 'WIDHA OKTAVIA, S.Pd'),
('gr003', 'AIFIATU AZAZA RAHMAH, S.Pd'),
('gr004', 'ERINDA TITIK RIZKI FANI, S.Pd'),
('gr005', 'HAMIDIN, S.Pd'),
('gr006', 'KAMALIA FITRI, S.Pd'),
('gr007', 'ARDIAN PRIMA YUDHA, S.Pd'),
('gr008', 'YULIANA ARISTIANI, S.Pd'),
('gr009', 'IIS MUKTI WAHYUNI, S.Pd'),
('gr010', 'RAHAYU WIDODO, S.Pd'),
('gr011', 'ARY ROMALIA, S.Pd'),
('ks001', 'Dwi Setyowati, S.Pd'),
('BS001', 'Tutut Dwi Prihatin'),
('ks001', 'Dwi Setyowati, S.Pd'),
('BS001', 'Tutut Dwi Prihatin'),
('KSW01', 'Sudiyo, A.Md');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `KODE_KELAS` varchar(3) NOT NULL,
  `NAMA_KELAS` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`KODE_KELAS`, `NAMA_KELAS`) VALUES
('S1', 'X PKM'),
('S2', 'X TKJ 1'),
('S3', 'X TKJ 2'),
('S4', 'X TBSM'),
('D1', 'XI PKM'),
('D2', 'XI TKJ'),
('D3', 'XI TBSM'),
('T1', 'XII AKP'),
('T2', 'XII TKJ'),
('T3', 'XII TSM 1'),
('T4', 'XII TSM 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kodebyr`
--

CREATE TABLE `kodebyr` (
  `KODE_POST` varchar(5) NOT NULL,
  `KET_POST` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kodebyr`
--

INSERT INTO `kodebyr` (`KODE_POST`, `KET_POST`) VALUES
('1234', 'PRAKERIN'),
('K01', 'TRANSPORT'),
('K02', 'GAJI'),
('K03', 'LAIN-LAIN'),
('M01', 'SPP'),
('M02', 'DAFTAR ULANG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpemasukan`
--

CREATE TABLE `tbpemasukan` (
  `KODE_TERIMA` int(9) UNSIGNED ZEROFILL NOT NULL,
  `NIS` varchar(5) NOT NULL,
  `TANGGAL` date NOT NULL,
  `KODE_POST` varchar(3) NOT NULL,
  `JUMLAH` int(9) NOT NULL,
  `KASIR` varchar(30) NOT NULL,
  `BERITA` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpemasukan`
--

INSERT INTO `tbpemasukan` (`KODE_TERIMA`, `NIS`, `TANGGAL`, `KODE_POST`, `JUMLAH`, `KASIR`, `BERITA`) VALUES
(000000001, '16540', '2019-08-10', 'M01', 135000, 'Wiwi', 'Pemayaran SPP 2019-08-01 hingga 2019-08-31'),
(000000002, '16554', '2019-08-15', 'M01', 145000, 'Wiwi', 'Pemayaran SPP 2019-08-01 hingga 2019-08-31'),
(000000003, '16553', '2019-08-15', 'M01', 150000, 'Wiwi', 'Pemayaran SPP 2019-08-01 hingga 2019-08-31'),
(000000004, '16602', '2019-08-14', 'M02', 500000, 'Wiwi', 'Pemayaran Daftar Ulang'),
(000000005, '16556', '2019-08-19', 'M01', 290000, 'Wiwi', 'Pemayaran SPP 2019-08-01 hingga 2019-09-30'),
(000000006, '16557', '2019-07-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000007, '16559', '2019-07-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000008, '16563', '2019-07-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000009, '16539', '2019-07-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000010, '16540', '2019-07-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000011, '16553', '2019-07-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000012, '16554', '2019-07-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000013, '16561', '2019-07-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000014, '16558', '2019-07-17', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000015, '16549', '2019-07-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000016, '16549', '2019-07-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000017, '16553', '2019-07-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000018, '16558', '2019-07-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000019, '16561', '2019-07-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000020, '16678', '2019-07-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000021, '16556', '2019-07-21', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000022, '16554', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000023, '16556', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000024, '16557', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000025, '17685', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000026, '16542', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000027, '16559', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000028, '16641', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000029, '16678', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000030, '17695', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000031, '16563', '2019-07-24', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000032, '17685', '2019-07-24', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000033, '17695', '2019-07-24', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000034, '16561', '2019-09-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000035, '16563', '2019-09-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000036, '16545', '2019-09-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000037, '16565', '2019-09-08', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000038, '17695', '2019-09-08', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000039, '16557', '2019-09-12', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000040, '16540', '2019-09-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000041, '16559', '2019-09-17', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000042, '16641', '2019-09-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000043, '17685', '2019-09-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000044, '18869', '2019-09-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000045, '17692', '2019-09-19', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000046, '16678', '2019-09-20', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000047, '16559', '2019-07-15', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000048, '16553', '2019-07-16', 'M02', 400000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000049, '16641', '2019-07-16', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000050, '16545', '2019-07-18', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000051, '16565', '2019-07-18', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000052, '16540', '2019-07-19', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000053, '16562', '2019-07-19', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000054, '17692', '2019-07-19', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000055, '18869', '2019-07-19', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000056, '16565', '2019-07-20', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000057, '16641', '2019-07-23', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000058, '17695', '2019-07-23', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000059, '17685', '2019-07-24', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000060, '17692', '2019-07-24', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000061, '17695', '2019-07-24', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000062, '16544', '2019-07-25', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000063, '16562', '2019-07-25', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000064, '18869', '2019-07-25', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000065, '16539', '2019-09-05', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000066, '16562', '2019-09-07', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000067, '16553', '2019-09-11', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000068, '16564', '2019-09-13', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000069, '16544', '2019-09-16', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000070, '16641', '2019-09-18', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000071, '17692', '2019-09-19', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000072, '17747', '2019-07-02', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000073, '17748', '2019-07-03', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000074, '17749', '2019-07-04', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000075, '17751', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000076, '17752', '2019-09-14', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000077, '17753', '2019-09-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000078, '17754', '2019-09-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000079, '17755', '2019-09-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000080, '18868', '2019-09-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000081, '17759', '2019-07-21', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000082, '17762', '2019-07-27', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000083, '17763', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000084, '17764', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000085, '17765', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000086, '17767', '2019-08-02', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000087, '17772', '2019-08-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000088, '17696', '2019-08-09', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000089, '17699', '2019-07-04', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000090, '17701', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000091, '17705', '2019-07-21', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000092, '17706', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000093, '17708', '2019-07-24', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000094, '17710', '2019-07-03', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000095, '17723', '2019-08-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000096, '17725', '2019-08-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000097, '18783', '2019-08-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000098, '17728', '2019-08-09', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000099, '17737', '2019-08-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000100, '17739', '2019-08-09', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000101, '17740', '2019-08-10', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000102, '17775', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000103, '17743', '2019-07-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000104, '17744', '2019-08-08', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000105, '17748', '2019-07-03', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000106, '17753', '2019-09-15', 'M02', 400000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000107, '17757', '2019-09-17', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000108, '17758', '2019-07-13', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000109, '17760', '2019-07-21', 'M02', 600000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000110, '17761', '2019-07-26', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000111, '17766', '2019-07-21', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000112, '17768', '2019-08-03', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000113, '17769', '2019-08-03', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000114, '17771', '2019-08-05', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000115, '17773', '2019-08-08', 'M02', 700000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000116, '17704', '2019-07-08', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000117, '17706', '2019-07-22', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000118, '17708', '2019-07-24', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000119, '17709', '2019-07-25', 'M02', 700000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000120, '17710', '2019-07-03', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000121, '17711', '2019-07-04', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000122, '17712', '2019-07-05', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000123, '17716', '2019-08-03', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000124, '17726', '2019-08-08', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000125, '17729', '2019-08-03', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000126, '17730', '2019-08-03', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000127, '17732', '2019-08-05', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000128, '17738', '2019-08-08', 'M02', 700000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000129, '17742', '2019-07-06', 'M02', 100000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000130, '17745', '2019-08-09', 'M02', 200000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000131, '18791', '2019-07-02', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000132, '18792', '2019-07-03', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000133, '18793', '2019-07-04', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000134, '18797', '2019-09-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000135, '18798', '2019-09-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000136, '18799', '2019-09-16', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000137, '18830', '2019-09-18', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000138, '18832', '2019-07-21', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000139, '18840', '2019-07-27', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000140, '18841', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000141, '18847', '2019-07-22', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000142, '18849', '2019-08-02', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000143, '18855', '2019-08-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000144, '18856', '2019-08-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000145, '18858', '2019-08-09', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000146, '18861', '2019-08-10', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000147, '18829', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000148, '18801', '2019-07-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000149, '18874', '2019-07-08', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000150, '18809', '2019-07-21', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000151, '18811', '2019-07-23', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000152, '18877', '2019-07-24', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000153, '18812', '2019-07-25', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000154, '18814', '2019-07-04', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000155, '18815', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000156, '18816', '2019-09-14', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000157, '18817', '2019-09-15', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000158, '18819', '2019-08-10', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000159, '18823', '2019-07-05', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000160, '18824', '2019-07-06', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000161, '18825', '2019-07-07', 'M01', 125000, 'wiwi', 'Pembayaran SPP Bulan Ini'),
(000000162, '18788', '2019-07-01', 'M02', 50000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000163, '18793', '2019-07-04', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000164, '18794', '2019-07-05', 'M02', 100000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000165, '18796', '2019-09-14', 'M02', 100000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000166, '18797', '2019-09-15', 'M02', 400000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000167, '18828', '2019-09-17', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000168, '18831', '2019-07-13', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000169, '18833', '2019-07-21', 'M02', 600000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000170, '18839', '2019-07-26', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000171, '18870', '2019-07-22', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000172, '18847', '2019-07-22', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000173, '18848', '2019-07-21', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000174, '18852', '2019-08-03', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000175, '18853', '2019-08-03', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000176, '18854', '2019-08-05', 'M02', 350000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000177, '18857', '2019-08-08', 'M02', 700000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000178, '18800', '2019-07-04', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000179, '18829', '2019-07-05', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000180, '18874', '2019-07-08', 'M02', 375000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000181, '18810', '2019-07-22', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000182, '18877', '2019-07-24', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000183, '18812', '2019-07-25', 'M02', 700000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000184, '18813', '2019-07-03', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000185, '18817', '2019-09-15', 'M02', 275000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000186, '18818', '2019-09-16', 'M02', 100000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000187, '18822', '2019-07-04', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000188, '18823', '2019-07-05', 'M02', 1000000, 'wiwi', 'Pembayaran Daftar Ulang'),
(000000189, '18826', '2019-07-03', 'M02', 250000, 'wiwi', 'Pembayaran Daftar Ulang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpembukuan`
--

CREATE TABLE `tbpembukuan` (
  `JENIS` enum('MASUK','KELUAR') NOT NULL,
  `KODE_TRANSAKSI` int(9) NOT NULL,
  `TANGGAL` date NOT NULL,
  `BERITA` tinytext NOT NULL,
  `JML_MASUK` int(9) NOT NULL,
  `JML_KELUAR` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpengeluaran`
--

CREATE TABLE `tbpengeluaran` (
  `KODE_BAYAR` int(9) UNSIGNED ZEROFILL NOT NULL,
  `TANGGAL` date NOT NULL,
  `KODE_BIAYA` varchar(4) NOT NULL,
  `JUMLAH` int(9) NOT NULL,
  `PENERIMA` varchar(35) NOT NULL,
  `KASIR` varchar(30) NOT NULL,
  `BERITA` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpengeluaran`
--

INSERT INTO `tbpengeluaran` (`KODE_BAYAR`, `TANGGAL`, `KODE_BIAYA`, `JUMLAH`, `PENERIMA`, `KASIR`, `BERITA`) VALUES
(000000001, '2019-08-15', 'K01', 100000, 'Wawan', 'Wiwi', 'Honor Pelatih Choir'),
(000000002, '2019-08-15', 'K02', 50000, 'Nanang', 'Wiwi', 'Gaji Bulan Agustus'),
(000000003, '2019-07-15', 'K01', 30000, 'EKA TUSILAWATI,S.AB', 'wiwi', 'Transport seminar kebencanaan bagi peserta didik tahun 2019 di Auditorium Politeknik BNA'),
(000000004, '2019-07-15', 'K01', 50000, 'WIDHA OKTAVIA, S.Pd', 'wiwi', 'Transport MGMP Perbankan pembuatan soal PAT di RM. Barokah Gumiwang'),
(000000005, '2019-07-15', 'K01', 30000, 'Momon Riyanto, S.Pd', 'wiwi', 'Transport Pt. Toyo Seal di Kebumen'),
(000000006, '2019-07-15', 'K01', 20000, 'Wijiarto Indra N, S.Pd', 'wiwi', 'Transport resus bersama BPK Tri Mulyantoro dan Fraksi PKS di Aula Kecamatan PWJ Klampok'),
(000000007, '2019-07-24', 'K01', 25000, 'Eka Tusilawati, SAB.', 'wiwi', 'Transport rapat koordinasi USBN di SMK Panca Bhakti Banjarnegara'),
(000000008, '2019-07-25', 'K01', 25000, 'Wijiarto Indra N, S.Pd', 'wiwi', 'Transport mengikuti MGMP Penjasorkses SMK Cokroaminoto 2 Banjarengara'),
(000000009, '2019-07-25', 'K01', 50000, 'RAHAYU WIDODO, S.Pd', 'wiwi', 'Transport sosialisasi pemilu di SMAN 1 Purwareja Klampok'),
(000000010, '2019-07-10', 'K01', 25000, 'ARY ROMALIA, S.Pd', 'wiwi', 'Transport MGMP IPS di SMKN 2 Bawang'),
(000000011, '2019-07-25', 'K01', 150000, 'Hamidin, S.Pd', 'wiwi', 'Transport kegiatan penataran dan lokakarya pembina PMR Madya dan Wira Se Kab. BNA'),
(000000012, '2019-07-18', 'K01', 50000, 'Corry Nur Istho R, S.Pd', 'wiwi', 'Transport MGMP penyelesaian soal USBn di RM. Barokah Gumiwang'),
(000000013, '2019-07-18', 'K01', 20000, 'Siti Nurul Barokatul M, S.Pd', 'wiwi', 'Transport asman LPJ ruang praktik siswa SMAN 1 Bawang'),
(000000014, '2019-07-18', 'K01', 200000, 'Ganang Wahyu P, S.Pd', 'wiwi', 'Transport pesta siaga penentuan burung tergiat putra/putri kwartir ranting Purwareja Klampok di Lapangan Kalibening (2 Hari)'),
(000000015, '2019-07-19', 'K01', 1000000, 'Barlianto Agung W, S.E', 'wiwi', 'Transport pembekalan diklat di Ambarawa, Semaranf'),
(000000016, '2019-07-19', 'K01', 20000, 'Dedi Dwi Kristanto, S.Pd', 'wiwi', 'Transport menyerahkan soal kimia dan telaah soal di SMK 1 Mandiraja'),
(000000017, '2019-07-19', 'K01', 25000, 'Dadun Raih Sambodo, S.Kom', 'wiwi', 'Transport MGMP Penjasorkes di MSKN 1 Bawang'),
(000000018, '2019-07-19', 'K01', 30000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Transport koordinasi persiapan LKS kabupaten dan provinsi tahun 2019 dan bintek BOS tahun 2019 di SMK Panca Bhakti Banjarnegara'),
(000000019, '2019-07-01', 'K01', 2000000, 'Kamalia Fitri, S.Pd', 'wiwi', 'Transport diklat penguatan kepala sekolah di Ambarawa, Semarang (27 Februari s/d 6 Maret)'),
(000000020, '2019-07-19', 'K01', 25000, 'Muh. Setyo Raharjo, S.Pd', 'wiwi', 'Transport mengantar file UNBK dan mengambil KTP siswa di Dinduk Capil Banjarnegara'),
(000000021, '2019-07-19', 'K03', 100000, 'Dwi Setyowati, S. Pd.', 'wiwi', 'Partisipasi kegiatan FORDEM Banjarnegara'),
(000000022, '2019-07-19', 'K03', 200000, 'Niken Wijayanti, S.E, M.Si', 'wiwi', 'Dana sosial pembangunan masjid Al Ikhsan Purwasaba'),
(000000023, '2019-07-15', 'K03', 100000, 'Rahayu Widodo, S.H.', 'wiwi', 'Partisipasi redaksi media nasional'),
(000000024, '2019-07-20', 'K03', 95000, 'Tutut Dwi Prihatin', 'wiwi', 'Konsumsi ke rumah yayasan dan membeli bahan batik'),
(000000025, '2019-07-21', 'K03', 35000, 'Tutut Dwi Prihatin', 'wiwi', 'konsumsi Tamu'),
(000000026, '2019-07-21', 'K03', 12000, 'Tutut Dwi Prihatin', 'wiwi', 'Konsumsi instalasi printer Brother'),
(000000027, '2019-07-22', 'K03', 6000, 'Tutut Dwi Prihatin', 'wiwi', 'Konsumsi instalasi printer'),
(000000028, '2019-07-30', 'K03', 20000, 'Tutut Dwi Prihatin', 'wiwi', 'Konsumsi tamu sosialisasi STIE Jogja'),
(000000029, '2019-07-22', 'K03', 80500, 'Siti Nurul Barokatul M, S.Pd', 'wiwi', 'Iuran BPJS Kesehatan'),
(000000030, '2019-07-22', 'K03', 306500, 'Ganang Wahyu P, S.Pd', 'wiwi', 'Iuran diklat Kepala sekolah'),
(000000031, '2019-07-22', 'K03', 100000, 'Barlianto Agung W, S.E', 'wiwi', 'Iuran MGMP Perbankan (Pembuatan soal USBN Tp. 2018/2019'),
(000000032, '2019-07-23', 'K03', 150000, 'Dedi Dwi Kristanto, S.Pd', 'wiwi', 'Partisipasi baju batik VPAD'),
(000000033, '2019-07-23', 'K03', 80500, 'Dadun Raih Sambodo, S.Kom', 'wiwi', 'BPJS Kesehatan'),
(000000034, '2019-07-23', 'K03', 275000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Kontribusi kegiatan penataran dan lokakarya pembina PMR Madya dan Wira se Kab. BNA'),
(000000035, '2019-07-23', 'K03', 50000, 'Kamalia Fitri, S.Pd', 'wiwi', 'Iuran MGMP Perbankan (konsumsi 2 orang)'),
(000000036, '2019-07-23', 'K03', 100000, 'YULIANA ARISTIANI, S.Pd', 'wiwi', 'Iuran Gotong royong study Bandung MGMP Penjasorkes'),
(000000037, '2019-07-30', 'K02', 300000, 'Hamidin, S.Pd', 'wiwi', 'Vakasi pelatih voly untuk lomba popda di Banjarengara'),
(000000038, '2019-08-01', 'K01', 25000, 'Ardian Prima Yudha, S.Pd', 'wiwi', 'Transport persiapan PKK tahun 2019 ndi RM. Etnic Banjarnegara'),
(000000039, '2019-08-02', 'K01', 25000, 'Dadun Raih Sambodo, S.Kom', 'wiwi', 'Transport pengajuan permohonan penguji eksternal di PDBKK Banjarnegara'),
(000000040, '2019-08-03', 'K01', 50000, 'Dedi Dwi Kristanto, S.Pd', 'wiwi', 'Transport mengantar pemberkasan BSM di SMKN 2 Wonosobo'),
(000000041, '2019-08-04', 'K01', 25000, 'Triani,S.E', 'wiwi', 'Transport mengantar verifikasi berkas BSM ke Kantor Wil IX, Bawang'),
(000000042, '2019-08-05', 'K01', 150000, 'Arifin Prasetya, S.T', 'wiwi', 'Transport dan uang saku pertemuan TWI Pt. Epson di Purwokerto'),
(000000043, '2019-08-06', 'K01', 25000, 'Kusmiyati, S.E', 'wiwi', 'Transport MGMP mapel Bahasa Inggris dan penyusunan soal PAT kelas X dan'),
(000000044, '2019-08-10', 'K01', 100000, 'Ary Romalia, S.Pd', 'wiwi', 'XII tahun pelajaran 2018/2019 di SMK Cokroaminoto Banjarnegara'),
(000000045, '2019-08-13', 'K01', 25000, 'Purwono, S.Pd', 'wiwi', 'Transport MGMP mata pelajaran bahasa Indonesia (pembuatan soal PAT) di SMK Taman Siswa Banjarnegara'),
(000000046, '2019-08-15', 'K01', 30000, 'Yuliana Aristiani, S.E.', 'wiwi', 'Transport MGMP Bahasa Jawa di SMK Cokroaminoto 2 Banjarnegara'),
(000000047, '2019-08-16', 'K01', 25000, 'Sudono, S.Pd.', 'wiwi', 'Transport selesksi Pt. Epson di SMKN 1 Bawang'),
(000000048, '2019-08-17', 'K01', 25000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Transport PPDB'),
(000000049, '2019-08-18', 'K01', 100000, 'Ir. Rofiq Majdil Khadafi', 'wiwi', 'Transport laporan ulang RPS dan RKB tahun 2016 s/d 2018 di Jakarta'),
(000000050, '2019-08-19', 'K01', 2000000, 'Kamalia Fitri, S.Pd', 'wiwi', 'Transport MGMP PAI di SMK Muhyammadiyah Banjarnegara'),
(000000051, '2019-08-20', 'K01', 25000, 'Muh. Setyo Raharjo, S.Pd', 'wiwi', 'Transport rapat koordinasi tes PT. Epson di MSKN 1 Bawang'),
(000000052, '2019-08-21', 'K01', 25000, 'Dadun Raih Sambodo, S.Kom', 'wiwi', 'Transport Tes Pt. Epson di Purbalingga ( 2 Orang dan 2 mobil)'),
(000000053, '2019-08-22', 'K01', 100000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Transport MGMP  PPKN di SMK Panca Bhakti Banjarnegara'),
(000000054, '2019-08-24', 'K01', 25000, 'Kamalia Fitri, S.Pd', 'wiwi', 'Transport MGMP Matematika di SMKN 2 Bawang'),
(000000055, '2019-08-25', 'K01', 25000, 'Muh. Setyo Raharjo, S.Pd', 'wiwi', 'Transport kegiatan penerimaan anggota baru saka bhakti husada pangkalan 1 Puskesmas Purwareja Klampok (3 anak)'),
(000000056, '2019-08-26', 'K03', 17000, 'Tutut Dwi Prihatin', 'wiwi', 'Biaya pengiriman dokumen RPS ke Jakarta'),
(000000057, '2019-08-27', 'K03', 500000, 'Tutut Dwi Prihatin', 'wiwi', 'Iuran pertemuan TWI PT. Epson'),
(000000058, '2019-08-28', 'K03', 150000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Kondangan pernikahan ibu Iis Mukti Wahyuni'),
(000000059, '2019-08-29', 'K03', 163500, 'Tutut Dwi Prihatin', 'wiwi', 'BPJS Kesehatan'),
(000000060, '2019-09-10', 'K01', 300000, 'Ary Romalia, S.Pd', 'wiwi', 'Transport diklat  penguatan program pendidikan menegah kejuruan tahun 2019 di hotel Surya Yudha Banjarnegara'),
(000000061, '2019-09-12', 'K01', 25000, 'Yuliana Aristiani, S.E.', 'wiwi', 'Transport pengambilan hasil UNBK di MSK Panca Bhakti Banjarnegara'),
(000000062, '2019-09-13', 'K01', 100000, 'Sudono, S.Pd.', 'wiwi', 'Transport mengikuti rapat kegiatan ramadhan mulia tahun 2019 di aula Korwil Dindikpora Banjarnegara'),
(000000063, '2019-09-15', 'K01', 130000, 'Ir. Rofiq Majdil Khadafi', 'wiwi', 'Transport menjenguk Ibu Dwi Setyowati di Purwokerto'),
(000000064, '2019-09-06', 'K01', 1100000, 'Widha Oktavia W, S.Pd.', 'wiwi', 'Transport rapat kelulusan kelas XII tahun pelajaran 2018/2019 (22 Guru)'),
(000000065, '2019-09-07', 'K01', 100000, 'Ir. Rofiq Majdil Khadafi', 'wiwi', 'Transport rapat MKKS SMK Kabupaten Banjarengara di SMKN 1 Bawang (4 Guru)'),
(000000066, '2019-09-20', 'K01', 25000, 'Tutut Dwi Prihatin', 'wiwi', 'Transport tanda tangan pengawas SMK untuk PIP di SMK Panca Bhakti Banjarnegara'),
(000000067, '2019-08-05', 'K02', 75000, 'Riana', 'wiwi', 'Vakasi Senam Pagi'),
(000000068, '2019-08-10', 'K03', 1000000, 'Qoriyatun Jamilah', 'wiwi', 'Kompensasi untuk PIP Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpostanggaran`
--

CREATE TABLE `tbpostanggaran` (
  `KODE_BIAYA` varchar(3) NOT NULL,
  `NAMA_POSTING` varchar(15) NOT NULL,
  `KELOMPOK` enum('MASUK','KELUAR') NOT NULL,
  `BESARAN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpostanggaran`
--

INSERT INTO `tbpostanggaran` (`KODE_BIAYA`, `NAMA_POSTING`, `KELOMPOK`, `BESARAN`) VALUES
('K01', 'TRANSPORT', 'KELUAR', 500000),
('K02', 'GAJI', 'KELUAR', 20000000),
('K03', 'LAIN-LAIN', 'KELUAR', 12000000),
('M01', 'SPP', 'MASUK', 2000000),
('M02', 'DAFTAR ULANG', 'MASUK', 5000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `NIS` varchar(5) NOT NULL,
  `NAMA` varchar(35) NOT NULL,
  `TINGKAT` enum('X','XI','XII') NOT NULL,
  `JURUSAN` varchar(50) NOT NULL,
  `KELAS` varchar(10) NOT NULL,
  `ORANG_TUA` varchar(30) NOT NULL,
  `ALAMAT` varchar(30) NOT NULL,
  `WALI_KELAS` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsiswa`
--

INSERT INTO `tbsiswa` (`NIS`, `NAMA`, `TINGKAT`, `JURUSAN`, `KELAS`, `ORANG_TUA`, `ALAMAT`, `WALI_KELAS`) VALUES
('16539', 'Ade Gunawan', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Jasman / Martini', 'Gumelem wtn RT 01/10', 'gr010'),
('16540', 'Ade Tri Nugroho', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Sudiarjo / Mukhana', 'senon RT 04/02', 'gr010'),
('16542', 'Agil Aminnudin', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Sohirun / Suparyanti', 'kalimandi RT 01/05', 'gr010'),
('16544', 'Alfin', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Tunyar / Sukarni', 'kaliwinasuh RT 03/07', 'gr010'),
('16545', 'Arrafi Kukuh Bayu Manggalih', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Supardi/Sumiyati', 'Kedawung RT 03/02', 'gr010'),
('16549', 'Arif Sugeng Septiono', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Bisri / Jumiati', 'mandiraja RT 08/01', 'gr010'),
('16553', 'Eko Setiawan', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Ahmad Sobirin R. / Marini', 'merden RT 01/07', 'gr010'),
('16554', 'Fajar', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Setyo Waluyo / Sumiarti', 'panggisari RT 03/05', 'gr010'),
('16556', 'Fajar Wahyu Diyanto', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Rohman / Kansem', 'mandiraja kln RT 04/04', 'gr010'),
('16557', 'Frian Dwi Prasetyo', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Rustam / Narwen', 'Kertayasa RT 06/04', 'gr010'),
('16558', 'Geovany Tresna Biastoro', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Sutonoal L. / Haryati', 'gumelem wtn RT 02/03', 'gr010'),
('16559', 'Hanny Dimas Fristanta', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Siswanto / Sati Rahayu', 'panggisari RT 04/03', 'gr010'),
('16561', 'Imam Safi`i', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Nasirin / Suminah ', 'somawangi RT 01/06', 'gr010'),
('16562', 'Imam Sulaeman', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Nana Suryana / Turi', 'merden RT 02/08', 'gr010'),
('16563', 'Imron Santoso', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Amad Jaenudin / Nasiyah', 'purwasaba RT 04/02', 'gr010'),
('16564', 'Ivan Nur arifin', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Rohman / Robiyah', 'kaliwinasuh RT 01/01', 'gr010'),
('16565', 'Jamal Prastyo', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Mukhid / Waryanti', 'somawangi RT 03/04', 'gr010'),
('16569', 'APRI ANDRIANI ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'MISWADI / MUJINAH', 'BILUNGAN', 'gr011'),
('16570', 'JIHAN KURNIA A', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'KAMIN ACHMAD M. / JUMIRAH', 'PANGGISARI RT 03/05', 'gr011'),
('16571', 'KHUSNUL ANWAR', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'AL SUWARTO / SAWITRI', 'SIMBANG RT 03/02', 'gr011'),
('16572', 'KUKUH AKBAR FADILAH ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'MUSTAKIM AL PARYANTO / PARWIYA', 'GUMIWANG RT 02/08', 'gr011'),
('16575', 'MUHAMAD ELANG SETYA ILAHI', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SYAFUDIN / ROSIDAH', 'PERIGI LAMA RT 02/02', 'gr011'),
('16577', 'NOVAL DWI CANDRA', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SIDIK PURNOMO / URIP LUTFIAH', 'PANGGISARI RT 05/01', 'gr011'),
('16578', 'NUR ALIF', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'RESMI/ALM. MUHAMAD ABADI', 'PURWASABA RT 02/01', 'gr011'),
('16579', 'NUR ROHMAN ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SAHID / KARNI', 'MERDEN RT 04/05 ', 'gr011'),
('16580', 'NURUL FUAD ZEIN ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SIGIT JUMADI / SUPARNI', 'PANGGISARI RT 03/05', 'gr011'),
('16581', 'NURUL MUSTOFA ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'AHMAD KUMEDI / SUKARTI', 'MANDIRAJA RT 06/01', 'gr011'),
('16583', 'PURWOKO CAHYO GEMILANG', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SADI PURNOMO / SADEMI', 'GUMELEM WTN RT 03/03', 'gr011'),
('16584', 'RAGIL SUGIANTO', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SISWANTO / SUKINAH', 'MANDIRAJA KLN RT 08/01', 'gr011'),
('16585', 'RIDWAN MAULANA', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'HADIMAN / SAIRAH', 'KALIWINASUH RT 01/06', 'gr011'),
('16588', 'RIYAN HIDAYAT', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'RISWANTO / PARTINI', 'KERTAYASA RT 01/02', 'gr011'),
('16591', 'ROBI SETIA HERMAWAN', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'ROJAH / ALM. BIRHAM', 'MERDEN RT 04/05', 'gr011'),
('16594', 'SUCIPTO', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'RASIDI /ARTI', 'SIMBANG RT 04/02', 'gr011'),
('16596', 'VEGA KUNCORO', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SURATNO / RUMIYANI ', 'MANDIRAJA RT 07/01', 'gr011'),
('16597', 'WIDODO', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'SUDIMOHARJO AL P. / SADIYEM', 'GUMELEM KLN RT 07/04', 'gr011'),
('16599', 'YOGI SETYA PRATAMA ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'MISTAM / ASIH SUPRIYANTI', 'MERDEN RT 03/08', 'gr011'),
('16602', 'ADISA INDRI PERTIWI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUMARNO / SATINAH P. ', 'MERDEN RT 06/01', 'gr008'),
('16603', 'AFIN KHOERIAH ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'RASITO / RANIEM', 'PARAKAN RT 03/02', 'gr008'),
('16604', 'ANDIKA ASEP SISWANTI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SISWANTO S. / WASITAH', 'PARAKAN RT 03/03 ', 'gr008'),
('16605', 'ANGGI TRILISTIANA ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'ACHMAD S. / SULTINI', 'KALIMANDI RT 03/07', 'gr008'),
('16606', 'DETTIANSYAH RITA KANIA', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'KHAMIDAH / ALM.SAMINGAN', 'KALIMANDI RT 01/03', 'gr008'),
('16607', 'DINA JULIANTI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'AMAD W. / TURSINAH', 'KALIAJIR RT 04/03', 'gr008'),
('16608', 'DIYAH AYU ISLAMIATI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'WAHYUDIN / ALM. NUR S. ', 'KALIWINASUH RT 02/05', 'gr008'),
('16609', 'EKA PUJI ASTUTI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'FEBRI S. / PUNGKI L. ', 'KALITENGAH RT 07/03', 'gr008'),
('16610', 'EVI TAMALA ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUTARNO / JAMIAH', 'KERTAYASA RT 03/05', 'gr008'),
('16611', 'FIDIA MAYAWATI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'NARKIM / MISWATI', 'PANGGISARI RT 02/01', 'gr008'),
('16612', 'FITRI RAHAYU AGUSTINA ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'BADARUDIN A S. / YATINI', 'SOMAWANGI RT 04/01', 'gr008'),
('16613', 'INGA WIDIYANTI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'RASWIN W. / SUMIARTI', 'PANGGISARI RT 02/01', 'gr008'),
('16614', 'KHASANATUN ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'YASHUDI / RISEM', 'KERTAYASA RT 01/04', 'gr008'),
('16616', 'LAILI RAHAYU ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUKIRMAN / NASIAH', 'KALIAJIR RT 04/03', 'gr008'),
('16617', 'LISTIANI WARIH WULANDARI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'ROHMAT / TRI MAHMUDAH', 'KALIAJIR RT 03/03', 'gr008'),
('16618', 'MULYO HIDAYAT', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'MULYONO / TARMINI', 'KECITRAN RT 02 / 02', 'gr008'),
('16619', 'OKTAVIA INDAH PURBASARI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'M. IMRAN / SUKINI', 'PANGGISARI RT 02/01', 'gr008'),
('16620', 'PUTRI MEINILA ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUPARDI / SUWARTI', 'KERTAYASA RT 02/03', 'gr008'),
('16621', 'QORIFAH MUGI LESTARI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SOBIRIN / WAGINEM', 'KALIWINASUH RT 03/10', 'gr008'),
('16622', 'RATMAWATI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SLAMET / INEM  ', 'KLAMPOK RT 02/02', 'gr008'),
('16623', 'RENI VERAWATI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'MISNAH / ALM HADIMI S. ', 'BANTAR RT 03/02', 'gr008'),
('16624', 'RIANI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'RUHYAT / BARIAH', 'SOMAWANGI RT 03/04', 'gr008'),
('16626', 'SERLI FERDIANA', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUTANTO / MARWIYAH', 'KALIMANDI RT 01/09', 'gr008'),
('16627', 'SINDI SETIYANINGSIH ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'RASIMAN / MAINAH', 'KALIWINASUH RT 02/05', 'gr008'),
('16628', 'SULIS SETIYANINGSIH', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SURATMAN / SARTINAH', 'KALIWINASUH RT 03/08', 'gr008'),
('16630', 'TRIYANISA ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'ADE MASTUR / DARSIYAH', 'KERTAYASA RT 02/03', 'gr008'),
('16631', 'AJI ZAENUL FAWA', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ALI SAEFUL A. / WARTINI ', 'KERTAYASA RT 01/02', 'gr009'),
('16632', 'ANGGUN LESTARI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'HADIMAN / LASMINI ', 'KALIWINASUH RT 01/10', 'gr009'),
('16633', 'ANIDA LIZAKI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SARWONO S. / UMINI', 'MANDIRAJA KLN RT 03/04', 'gr009'),
('16634', 'ANIS HUSNA SOBRINA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'MUBEDI / TURIYAH', 'PANGGISARI RT 05/01', 'gr009'),
('16635', 'APRILIANA SETIANINGSIH ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'AMAD K S. / KHADMINI', 'GUMIWANG RT 01/04', 'gr009'),
('16636', 'ARIFUDIN ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SAMINGUN / RUSMINAH', 'KARANGANYAR RT 05/04', 'gr009'),
('16637', 'DAVIT ADEPERMANA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'DIMIN / MINI', 'KARANG PULE RT 01/01', 'gr009'),
('16638', 'DENI SAPUTRA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ROTO / SANTIYEM ', 'BANJENGAN RT 04/03', 'gr009'),
('16639', 'DESTIANA BAYU ADEA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'HADIRIN / MUSYATI', 'PANGGISARI RT 04/03', 'gr009'),
('16640', 'DWI PURWANTI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SARPAN S. / ALMH. KHALIMAH', 'KALIWINASUH RT 02/01', 'gr009'),
('16641', 'Adi Putra Alfian', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Sofyan / Turinah', 'glempang RT 02/02', 'gr010'),
('16642', 'HENDRIK IRAWAN ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SUGITO / SUMIAH ', 'KALIWINASUH RT 01/06', 'gr009'),
('16643', 'NIKMAH LESTARI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'TARSIN / KARINAH', 'MERTASARI RT 04/05', 'gr009'),
('16644', 'INDRIYANI WAHYU LESTARI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'DARSAN / WATINI', 'KALIWINASUH RT 02/08', 'gr009'),
('16645', 'MARISKA', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SAEFULLOH / KUSMINI', 'KALIWINASUH RT 01/06', 'gr009'),
('16646', 'MELIA RAHMA RISTANTI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ACHMAD S. / TUMINI', 'MANDIRAJA KLN RT 04/04', 'gr009'),
('16647', 'MINFATUN FARIDA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'MARMIN A R. / WARSIATI S. ', 'KALIWUNGU RT 01/04', 'gr009'),
('16648', 'MIYATI NUR WULANDARI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ALI SODIKIN / CHADINEM ', 'MANDIRAJA KLN RT 05/02', 'gr009'),
('16650', 'MUHAMMAD FAJAR RANGGA PERMANA', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'AGUS R. / SURATMI ', 'MERDEN RT 06/08 ', 'gr009'),
('16651', 'NIKO LINTANG P', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'IWAN S R. / ANING I. ', 'PURWANEGARA RT 07/02', 'gr009'),
('16652', 'PRASERTYO ALI NURRAHMAN ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', ' SUKARYO / MUSHARTINAH ', 'KALIWINASUH RT 03/05', 'gr009'),
('16653', 'RENI NUR SAFITRI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SIYAM S. / SARNI ', 'MANDIRAJA RT 05/04', 'gr009'),
('16655', 'RITA AMALLIA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ADIKUN S. / RUMINI ', 'KALIWINASUH RT 01/02', 'gr009'),
('16656', 'SEFI ANASTYA ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SUMARYO / SUMIYATI ', 'KALIWINASUH RT 02/05', 'gr009'),
('16657', 'SETIYANI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SARNO / TUMINI ', 'KALIMANDI RT 01/09', 'gr009'),
('16658', 'SIGIT RETNO PRASETYO', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SARYONO / LISWATI ', 'KALIAJIR RT 05/02', 'gr009'),
('16659', 'SRI RAHAYU ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SAMIDI / MARYATI', 'KALIWINASUH RT 03/08', 'gr009'),
('16660', 'SRI UTAMI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SUPARDI / SITI ROFIQOH ', 'MANDIRAJA WTN RT 05/02 ', 'gr009'),
('16662', 'SULISTIANA NUR FAUZIAH ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'AHMAD S. / KASMIRAH', 'KALIWINASUH RT 01/01', 'gr009'),
('16663', 'INDIANA OKTAVIANI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'MUSWAN / SUTARI', 'MANDIRAJA WTN RT 08/02', 'gr009'),
('16664', 'UMI MUFIDAH ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'SATIN ALI I. / KATIMAH', 'CANDIWULAN RT 06/01', 'gr009'),
('16666', 'UMITASARI', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'BUDI RASTONO / ASIH', 'CANDIWULAN RT 01/01 ', 'gr009'),
('16668', 'VENI ATIVAH ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'DARYONO / MURSIAH', 'KALIMANDI RT 01/09', 'gr009'),
('16670', 'MEI FAJAR SARI', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'WINARYO / SATINAH', 'MERDENRAWAW RT 04/05', 'gr008'),
('16676', 'MUHAMAD GILANG RAKHA SAPUTRA ', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'KRISWANDI / ROOSLINA', 'VILLA PAMULANG RT 04/12', 'gr011'),
('16678', 'Kusdi Harjono', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Suwono / Sukimah', 'Kaliwinasuh RT 003/ 005', 'gr010'),
('16679', 'CANDRA OKTAVIMA', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'RASWANTO / ISLAMIYAH RAHAYU', 'KEBANARAN RT 02/09', 'gr008'),
('17641', 'ELA YULIANI', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'RASIM S. / LASMINAH', 'KALIWINASUH RT 02/10', 'gr009'),
('17670', 'WIWI ASTUTI ', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ALM. RASWANTO/SANIYEM', 'CANDIWULAN RT 07/01', 'gr009'),
('17683', 'MUHAMAD AFRIZAL', 'XII', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'XII TKJ', 'ROJINGUN / SULIYAH', 'KEMBANGAN RT 05/04', 'gr009'),
('17685', 'Irsyad Bagus Pamungkas ', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Saryono / Jurminah', 'Panggisari RT 01/04', 'gr010'),
('17686', 'ANGGI HAMDANAH', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'GAZARI', '', 'gr008'),
('17692', 'Faqih Fauzan Aprilianto', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Sahudin / Maryati', 'Kaliwinasuh RT 01/06', 'gr010'),
('17694', 'YUNANTO', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'KARMAN / TARIYEM', 'PETIR RT 05/03', 'gr011'),
('17695', 'Andika Nur Afandi', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Iis Suprihatin / Edi Untoro', 'Kaliajir RT 02/03', 'gr010'),
('17696', 'ANISA NUR ALFAROH', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'MAHFUZI/SUMINAH', 'KERTAYASA RT 02/02', 'gr005'),
('17698', 'DEFIKA TUSYANTI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'ADI PRAYITNO/TURIMAH', 'KALIWUNGU RT 01/04', 'gr005'),
('17699', 'DEWI ARUM SETIANI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'KHADIMAN/SUNARTI', 'PANGGISARI RT 02/05', 'gr005'),
('17701', 'LILIS SETIANI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'YANTO HADI WIARTO/TUSWENI', 'MAJATENGAH RT 10/04', 'gr005'),
('17702', 'LISA RAHMAWATI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'MUANAM/SUKINI', 'PANGGISARI RT 01/05', 'gr005'),
('17703', 'MAGHFIRA IZANI ', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'NUR AHMAD/SUPRIYANTI', 'MANDIRAJA WETAN RT 05/02', 'gr005'),
('17704', 'MIA DWI OKTAVIYANI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'MULYONO/SITI RUWAIDAH', 'PINGIT RT 03/01', 'gr005'),
('17705', 'MUSRIYAH', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'KASMAN MARSONO/RAWEN', 'PANGGISARI RT 02/05', 'gr005'),
('17706', 'NUR OFIFAH', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'TAFSIRUN/RUSTINI', 'KALIWUNGU RT 01/05', 'gr005'),
('17707', 'OKI NUR KHALIFAH', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'AHMAD KUSWANTO/SULIYAH', 'MANDIRAJA RT 02/04', 'gr005'),
('17708', 'OKTAVIANA PRIHASTAMI ', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'PRIYOSO/UMIATI', 'MANDIRAJA WETAN RT 03/02', 'gr005'),
('17709', 'PUTRI MAYA SARI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'SUTIYONO/SEMI HARTATI ', 'PANGGISARI RT 04/04', 'gr005'),
('17710', 'SEFTI MELINIA', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'SARINO/SUSIATI', 'KALIMANDI RT 02/09', 'gr005'),
('17711', 'TANTRI SUCI RAHAYU', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'DARTIM MAHYONO/HARTATI', 'SOMAWANGI RT 05/04', 'gr005'),
('17712', 'TOHAROH NURUL FATIMAH', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'KHADIRIN/RATIMAH', 'KERTAYASA RT 03/02', 'gr005'),
('17714', 'TRIYA RIYANTI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'WARDI/SUHARTI', 'KERTAYASA RT 07/01', 'gr005'),
('17716', 'YAYU MIANTI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'KUSNANTO/TASMINI', 'PINGIT LOR RT 01/03', 'gr005'),
('17717', 'YULI EKA PRATIWI', 'XI', 'PERBANKAN DAN KEUANGAN MIKRO', 'XI PKM', 'TUPAN/FITRIANI', 'KALIMANDI RT 01/09', 'gr005'),
('17718', 'ABINUR FERIYANSAH', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'MISBAN/SULASTRI', 'MANDIRAJA WETAN RT 04/02', 'gr007'),
('17720', 'AGUNG SETYAWAN', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'MARSINGUN/DARYANTI', 'DERIK RT 06/03 SUSUKAN', 'gr007'),
('17723', 'ARVIAN PUTRA KURNIAWAN', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'KHODIRIN/MISNAH', 'PURWANEGARA RT 02/05', 'gr007'),
('17725', 'DAFID SEFULOH', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'UDIN/SULASTRI', 'MERDEN 05/03', 'gr007'),
('17726', 'ESA NANDA PRATAMA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'ANDRI WIDIYATMOKO/ENDAH NOFITA', 'PANGGISARI RT 03/05', 'gr007'),
('17728', 'FEBI DWI IRWANTO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SARMIN SULISTYANTO/MANISAH', 'MERDEN RT 04/01', 'gr007'),
('17729', 'FERIS FERDIAN ', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SOLEMAN/SAYEM', 'RAWA WUNGU RT 01/07', 'gr007'),
('17730', 'HANDRIYAN FERDIANA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'ROHMAN/TURIAH', 'KALILANDAK RT 04/02', 'gr007'),
('17732', 'HERI SUPRIYANTO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'PARSONO/SUNARTI', 'KALIWINASUH RT 01/01', 'gr007'),
('17733', 'KUSWANTO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'AKHMAD KASIMIN/SAMINAH', 'KALIWINASUH RT 01/01', 'gr007'),
('17736', 'NOVENDA ARINZA DWI RAMADANI', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'MUHAMAD TOHIRIN/HENI ENDARWATI', 'MANDIRAJA KULON RT 06/03', 'gr007'),
('17737', 'PRATAMA NOOR ADI SAPUTRA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SUHARTONO/RATRI WINARNI', 'KERTAYASA RT 05/03', 'gr007'),
('17738', 'RISWAN FIRMANSYAH', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'KUAT PRIBADI/URIP IKAMATUNAZIZ', 'KARANGANYAR RT 01/05', 'gr007'),
('17739', 'SAEFUL HIDAYATULOH', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'MUNARSO/SUPI', 'PURWASABA RT 03/01', 'gr007'),
('17740', 'SAMSUL KARIM', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SURATNO/EKO SUPARTI', 'KALIMANDI RT 02/10', 'gr007'),
('17741', 'TEGUH WIDIANTO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SUYATNO/SINI', 'SOMAWANGI RT 03/07 ', 'gr007'),
('17742', 'VIQIH AKHTORI', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'MISWAN/RASINI', 'KALIWINASUH RT 01/09', 'gr007'),
('17743', 'WAHYU JULIAN SAPUTRA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SUPARMAN/SRI WATINI ', 'MERTASARI RT 03/03', 'gr007'),
('17744', 'YUDHAN FERDIANSYAHMARTINDO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'DEBI MAYFANI/NIRING GENDROWATI', 'KALIPELUS RT 02/04', 'gr007'),
('17745', 'YUSUF HERI KURNIAWAN', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SOLEMAN/SAYEM', 'MERDEN RT 01/07', 'gr007'),
('17746', 'AMALIA PUJI LESTARI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'RASMUD/RUSMIATI', 'KALIWINASUH RT 01/06', 'gr006'),
('17747', 'ANISSA PUTRI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SUPRIYANTO/NASIYAH', 'GUMELEM WTN RT 03/05', 'gr006'),
('17748', 'ANITRI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'BUDI RASTONO/ASIH', 'CANDIWULAN RT 01/01', 'gr006'),
('17749', 'ANJAS NUR TRIANTO', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SUWARTO / TURSINI', 'KALIMANDI RT 03/07', 'gr006'),
('17751', 'APRILIANA ELWIA SAPUTRI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SIRAN/ROCHIMAH', 'KALIWINASUH RT 03/05', 'gr006'),
('17752', 'ARIF HIDAYAT', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SUTRISNO/TUKINAH ', 'KARANGANYAR RT 05/04', 'gr006'),
('17753', 'AYU ANJANI ', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'HARYANTO EDI P/SANTIYAH', 'KALIWINASUH RT 02/07 ', 'gr006'),
('17754', 'BANI RHAMADANA', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'AHMAD YUSRO/SUNARTI', 'KEDAWUNG RT 03/02', 'gr006'),
('17755', 'BERY ISA ALBANA', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'PARSUN/TURSINI', 'PANERUSAN RT 03/03', 'gr006'),
('17756', 'DHEA AMANDA PUTRI ', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SUNARYO/SURYANTO', 'KALIWINASUH RT 03/05', 'gr006'),
('17757', 'DWI LINAWATI YULIANA', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SANKARJO/RATISEM ', 'GUMELEM KLN RT 07/04', 'gr006'),
('17758', 'ELISA LAILA FIRMANDANI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SARYONO/MISTIYAH', 'KALIAJIR RT 02/01', 'gr006'),
('17759', 'ERNA SEPTIANI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'YUNIANTO/KASMINI', 'KALIWINASUH RT 02/07 ', 'gr006'),
('17760', 'FIKRI SAFARUDIN BASTURIFAN', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'MUBASIR/SAINAH', 'KALIWINASUH RT 03/10', 'gr006'),
('17761', 'FINA SEPTIA SARI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SAPON/HARYATI', 'KALIWINASUH RT 03/05', 'gr006'),
('17762', 'IMELDA PUJA NUR HANIVAH', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'ARDIRIYANTO/TRIHARTINI', 'KALIMANDI RT 02/06', 'gr006'),
('17763', 'INDAH SRI PRIYATUN', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SLAMET SUTARYO/KHOMSIYAH', 'KEDAWUNG RT 02/02', 'gr006'),
('17764', 'INTAN NELASARI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SOLIHUN/KONINGAH', 'PUCUNG BEDUG RT 05/02', 'gr006'),
('17765', 'JUWANDA WIDI SAPUTRA ', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'WANDI SUPRIYANTO/ENTI SUSILA', 'PURWANEGARA RT 02/05', 'gr006'),
('17766', 'LESTARI SETIANINGRUM', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'MISKUN/YULIATI', 'GUMELEM WTN RT 04/02', 'gr006'),
('17767', 'LILIS NUR HAYATI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'RASTIM RASITO/RASEM', 'MERDEN RT 06/01', 'gr006'),
('17768', 'M. TOHARI FARHAN MAULANA', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'SUWARSO/RUPINGAH ', 'KERTAYASA RT 06/01', 'gr006'),
('17769', 'MAHMUD SOLIKHIN', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'RADI/MISEM', 'KERTAYASA RT 02/04', 'gr006'),
('17771', 'NOPRIYANTO ', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'RIZAL/MARSIYAH', 'KALIWINASUH RT 02/10', 'gr006'),
('17772', 'SAFRUDIN HIDAYAT', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'ACH SUMIARTO/DARIYAH ', 'CANDIWULAN RT 08/01', 'gr006'),
('17773', 'SINTA ASIHANI', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'TARMONO/RAHAYUNINGSIH', 'PAGAK RT 01/02', 'gr006'),
('17775', 'TRI FAUZI SAFANGATI', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'HADI PRAYITNO/SUPRIYATI', 'KALIPELUS RT 03/04', 'gr007'),
('17776', 'NUGROHO PANDU FEBRIYANSAH', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'AGUS RUSMANTO / RUSMINI', 'PANERUSAN RT 01/03', 'gr006'),
('17778', 'CATUR FEBRIANTO', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'GANDI WIJAYA/WARSINAH', 'PANGGISARI RT 02/05', 'gr007'),
('17779', 'PUPUT MIGUANI ', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'SUGENG WASITO / UMU NAJIYAH', 'RAKIT RT 05/02', 'gr008'),
('17780', 'ALFIN RAFIANSYAH', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'DARMAN / SURATMI ', 'CANDIWULAN RT 03/02', 'gr007'),
('17781', 'TOFIK HIDAYATULOH', 'XII', 'TEKNIK SEPEDA MOTOR 2', 'XII TSM 2', 'TURIMAN / SUMARNI ', 'KALITENGAH RT 01/03', 'gr011'),
('18783', 'DEDEN IRAWAN', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'HADI SUNARSO / SORTINI', 'BOKOL RT 09/03 KEC. KEMANGKON ', 'gr007'),
('18784', 'NORMAN ADI PRASETYA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SLAMET RIYADI / HARTATI', 'KALIWUNGU RT 02/02', 'gr007'),
('18785', 'SANDRA AJI PAMUNGKAS ', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'TIKNO SASTRO PRAYITNO/SUDARSIH', 'KERTAYASA RT 02/04', 'gr007'),
('18786', 'MOHAMMAD RIDWAN ', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SENO SARTONO/KARTINEM', 'SOMAWANGI RT 02/08', 'gr007'),
('18787', 'ANGGI LIA MANURUNG', 'XII', 'AKUNTANSI PERBANKAN', 'XII AKP', 'ALM BINSAR MANURUNG / ALMH. RO', 'KEDUNG JATI RT 05/10', 'gr008'),
('18788', 'DEWI RAMDANI ', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'REBIN / SOLIYAH', 'KALIAJIR RT. 03/ RW. 010', 'gr001'),
('18789', 'DWI NOVITA SARI', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'MISWAN / SUWIAH ', 'PURWASABA RT. 04/ RW. 04', 'gr001'),
('18790', 'DWI NUR NGAFIYAH', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'MIFTAHUDIN / MARSINI ', 'SOMAWANGI RT. 02/ RW. 06', 'gr001'),
('18791', 'FADILLA ARUM LUSIANTI', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'SUPRIYANTO / TUTIYAH', 'KALITENGAH RT. 03/ RW. 03', 'gr001'),
('18792', 'IDA NUR QOMARIAH', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'AMTINAH', 'PARAKAN RT.02/ RW.02', 'gr001'),
('18793', 'INDAH MEYLANI', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'BUDI SUWITO / MISWATI', 'KEMANGKON RT. 01/ RW. 06', 'gr001'),
('18794', 'NIKEN AYU ANGGRAENI', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'AKHMAD SOBIRIN / RINAH', 'MERDEN RT. 04/ RW. 05', 'gr001'),
('18795', 'NOVITA ROKHMAH', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'TUMIN / MANISAH ', 'SOMAWANGI RT. 03/ RW. 02', 'gr001'),
('18796', 'NUR ALFINA AGUSTIN', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'MACHMUDIN / TURIYEM ( ALM )', 'SOMAWANGI RT. 05/ RW.01', 'gr001'),
('18797', 'SILFI NUR SASMITO ', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'WASRUDIN / SANI ', 'MERTASARI RW. 01 / RW. 05', 'gr001'),
('18798', 'SYIFA AZHARIA NABILA', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'AHMAD KADARSYAH / SADIYAH', 'KERTAYASA RT. 01/ RW. 03', 'gr001'),
('18799', 'UNIK HIDAYATURROHMAH', 'X', 'PERBANKAN DAN KEUANGAN MIKRO', 'X PKM', 'M.TARSO ( ALM ) / SUPRIHATI', 'SUSUKAN RT.03/ RW. 06', 'gr001'),
('18800', 'ADE WAHYU HIDAYAT', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUYANTO NUR HIDAYAT / SUTIRAH', 'PANGGISARI RT. 02/ RW. 03', 'gr004'),
('18801', 'ALEA FIRDAUZ PRIYONO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'EDI PRIYONO / SRI UTAMI', 'SUSUKAN RT. / RW. ', 'gr004'),
('18802', 'ANDRE ISA MAHENDRA', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SAYAT ATMO SUMARTO / SRI SUYAT', 'KALIWINASUH RT. 01/ RW. 08', 'gr004'),
('18803', 'AZIZ NUR SAFEI ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SARNO / PARSIH', 'SIRKANDI RT.06/ RW.02', 'gr004'),
('18804', 'BAGUS SATRIO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SAIDIN / SUTIRAH', 'PANGGSARI RT. 06/ RW. 01', 'gr004'),
('18805', 'BAYU DWI SETIAWAN ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'TRIYANTO / SUPARMI', 'MANDIRAJA WETAN RT.01/ RW. 03', 'gr004'),
('18806', 'DHIMAS NURWAHID', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'JULI FADILAH ACHMAD / UMI ADMI', 'PANGGISARI RT. 01/ RW. 05', 'gr004'),
('18807', 'ESA NUR OKTAVIANTO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'ACHMAD SARJONO / NUR LAELI', 'KALIWINASUH RT. 02/RW. 04', 'gr004'),
('18808', 'FEGI FEBRIANSYAH ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'BISAR / SUTIRAHAYU', 'KALIWINASUH RT. 02/ RW. 08', 'gr004'),
('18809', 'HENDAR HIDAYAT', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'KARSO ZAKARIA / YUNIARTI', 'PAKIKIRAN RT.01/ RW.03', 'gr004'),
('18810', 'HILMANA SOFYAN', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'CHAMDI / SUMIWI RAGILANINGSIH', 'PAKIKIRAN RT. 02/ RW.01', 'gr004'),
('18811', 'IRFAN ADI SETIYANTO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'KHOLIN HADI SISWANTO / MUNIRAH', 'KALIWINASUH RT. 01/ RW. 08', 'gr004'),
('18812', 'JERI NUR KHOLIN', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'RISWADI RASWAN / PARNI ( ALM )', 'GUMELEM WETAN RT. 03/ RW. 03', 'gr004'),
('18813', 'JULI ANDRIANTO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'TARSUJI / WARSEM', 'GUMELEM WETAN RT. 03/ RW. 01', 'gr004'),
('18814', 'MUHAMMAD NUR ROZAQI', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUMARNO IMAM W / SURYATI', 'KERTAYASA RT. 06/ RW. 01', 'gr004'),
('18815', 'OKI SURIPNO ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'KASTAM KISWANTO / MISRIATI', 'MERTASARI RT. 02/ RW. 05', 'gr004'),
('18816', 'RAFI FIRMANSYAH', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUDIMAN / WARTINI ', 'GUMELEM WETAN RT. 02/ RW. 03', 'gr004'),
('18817', 'REZA ZULFIKAR', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'KHADIMAN / SUNARTI ', 'PANGGISARI RT. 02/ RW. 05', 'gr004'),
('18818', 'SAHIMRAN ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'TARMIN / SARIYAH', 'BAYUR RT. 02/ RW. 08', 'gr004'),
('18819', 'SENDI SYAHRULLOH', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'HABIB / SUSIYAH', 'BANJENGAN RT. 02/ RW. 03', 'gr004'),
('18820', 'TOMY  AJI SYAFI`I', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'IMAN SANTOSA / LAMINI', 'KALWINASUH RT. 02/ RW. 07', 'gr004'),
('18821', 'TRI DIONO ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'TAMSUR / AMINEM ', 'SIRKANDI RT.06/ RW.02', 'gr004'),
('18822', 'TRISTA PUTRA DEWANGGA', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'HARRYS KANDO / PUJI RAHAYU', 'GUMELEM KULON RT. 03/ RW. 01', 'gr004'),
('18823', 'VARKHOLID SENDI PRAYOGI', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'ASWANTO / FATIMAH ', 'KALIWINASUH RT. 01/RW. 07', 'gr004'),
('18824', 'VIGO NUGROHO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUWORO / JUMIRAH', 'KALIWINASUH RT. 01/ RW. 08', 'gr004'),
('18825', 'WAHYU YOGO ARIYANTO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'CARSO ADIYANTO / KARSINI ', 'PETIR, RT. 01/ RW. 02 ', 'gr004'),
('18826', 'WINDI GIFANI FEBRIANSYAH', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'KHARISUN / DEWI PAMUJI', 'MERDEN RT. 03/ RW. 08', 'gr004'),
('18827', 'ABEL SEPTIANI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'AEP / YATI', 'MANDIRAJA WETAN RT. 08/ RW. 02', 'gr001'),
('18828', 'AGUS BUDIAWAN', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'MULYANTO / SUNARTI', 'SALAMERTA RT. 08/ RW. 01', 'gr002'),
('18829', 'AKHMAD FAIZUN', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUKIMAN / PARNIAH ', 'MANDIRAJA WETAN RT. 03/ RW.01', 'gr004'),
('18830', 'ALDHI NUR SALAM', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'WARSID / SUKINI', 'GUMELEM WETAN RT. 02/ RW. 01', 'gr002'),
('18831', 'ANIDA SEPTIANA', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'WARJONO / TARYATI ', 'GUMELEM KULON RT. 01/ RW. 07', 'gr002'),
('18832', 'ANISA SOLEHAH ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'NURKHOLIS / MISNI AMINAH ', 'GUNUNG WULED RT. 02/ RW. 05', 'gr002'),
('18833', 'ARINA PRAMUDITA', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'AKHMAD SUKADI / TOIFAH ( ALM )', 'MANDIRAJA WETAN RT. 04/ RW. 01', 'gr002'),
('18834', 'ERLINDA PRASASTI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'SINO / TURAH ', 'KALIMANDI RT. 01/ RW. 07', 'gr002'),
('18835', 'FAMUJI RAMADHANI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'SARKUM / MURYANI ', 'KECITRAN RT 02/ RW.03', 'gr002'),
('18836', 'FARIAN ANGGUN PRATAMA', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'SUKARWAN / INDRIYANTI ', 'MERTASARI RT. 04/ RW. 05', 'gr002'),
('18837', 'FENDI SETIAWAN', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'PARMAN / PAINI ', 'PAGENDOTAN RT. 01/ RW. 06', 'gr002'),
('18838', 'FUJI NURFERDIANAWATI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'PARMONO / DARWATI ', 'MANDIRAJA WETAN RT. 03/ RW. 02', 'gr002'),
('18839', 'HARI SABAR', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'ACHMAD SANTOSO / SUNARTI ', 'CANDIWULAN RT. 01/ RW. 01', 'gr002'),
('18840', 'IFDHI FAUZAN CHENTAURI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'NARSIM ACHMAD SUWITO / SARMINI', 'GUMELEM WETAN RT. 03/ RW. 03', 'gr002'),
('18841', 'INTAN DWI ARIFAH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'TARMIN / SAMIRAH ', 'GUMELEM WETAN RT. / RW. ', 'gr002'),
('18842', 'LULU UL ZANAH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'MULAN WIJAYA / CHUSNUL CHOTIMA', 'PURWONEGORO RT. 05/ RW. 04', 'gr002'),
('18843', 'LUSI NUR FEBRIANTI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 1', 'X TKJ 1', 'SUPRIYADI / SUTARMI', 'KALIWINASUH RT. 02/ RW. 08', 'gr002'),
('18844', 'MAKSUM', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 1', 'RADIN NURAHMAT / MUSRIFAH', 'MERDEN RT. 01/ RW. 07', 'gr002'),
('18845', 'MARLINA', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 3', 'X TKJ 1', 'SARLAM / YATINI ', 'SIMBANG RT. 03/ RW. 01', 'gr002'),
('18846', 'MOHAMAD SAHRULLOH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 4', 'X TKJ 1', 'AHMAD MUSDARYANTO / TURIYAH ( ', 'PEYUYON RT. 02/ RW. 05', 'gr002'),
('18847', 'MUHAMMAD ALI MA`RUF', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'KARSIN / WATIRAH ', 'DERIK RT. 06/ RW. 030', 'gr003'),
('18848', 'MULYATI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'PUJIANTO / RAMINEM ', 'SOMAWANGI RT. 02/ RW. 07', 'gr003'),
('18849', 'NITA HASNA LATIFAH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SAMIKHUN / SULASIH ', 'GUMELEM WETAN RT. 02/ RW. 03', 'gr003'),
('18850', 'NUR FIDIAN NINGSIH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'ROPINGI / SATINEM ', 'SOMAWANGI RT. 02/ RW. 04', 'gr003'),
('18851', 'RAHMA WAHYUNI ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SUPONO / TUSRIYAH', 'DERMASARI RT. 03/ RW. 01', 'gr003'),
('18852', 'RAIHAN AMJAD TRI MUZAKI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SUKONO WAHYU PRANOTO / SUPRIYA', 'MERTASARI RW. 04/ RW. 05', 'gr003'),
('18853', 'RENI HARYATI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'KARSITO AL KATAM / MISKEM', 'GUMELEM KULON RT. 06/ RW. 04', 'gr003'),
('18854', 'RETNO SETIYANI ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SUCHADI / KUSWATI ', 'GUMIWANG RT. 02/ RW. 04', 'gr003'),
('18855', 'RETNO WULANDARI ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'RATIMAH ( NENKEK )', 'PURWASABA, RT. 06/ RW, 01', 'gr003'),
('18856', 'RETNOWATI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SARIKUN / WARTINAH', 'KECITRAN RT.02/ RW. 03', 'gr003'),
('18857', 'RINDA RAHAYU PURWANTI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'RUDDY PURWANTO / KISEM', 'SOMAWANGI RT. 04/ RW. 08', 'gr003'),
('18858', 'RIYADI', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SLAMET MADSUKARDI / SUMARNI', 'MANDIRAJA WETAN RT. 05/ RW. 01', 'gr003'),
('18859', 'RIZKI RAMADHAN ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SUPONO / HARTATI', 'KEMBANGAN RT. 04/ RW. 07 ', 'gr003'),
('18860', 'SABAR WAHIDIN', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'KADIR / MISWATI ', 'BANJENGAN RT. 02/ RW. 03', 'gr003'),
('18861', 'SETIANINGSIH ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'SLAMET / SURYATI', 'GUMELEM KULON RT. 04/ RW. 02', 'gr003'),
('18862', 'SIGIT PURNOMO', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'DARMIN / SAYEM ', 'SOMAWANGI RT. 05/ RW. 08', 'gr003'),
('18863', 'SOVIYAH', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'HADI SUSILO / SUPRAPTI', 'PURWONEGORO RT. 02/ RW. 03', 'gr003'),
('18864', 'SUMARNO', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'RADI / SUMINEM ( ALM )', 'BANJENGAN RT. 02/ RW. 03', 'gr003'),
('18865', 'TRIYA PUJA AGUSTINA ', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'AHMAD SUTAROM / SUPINAH ', 'PURWANEGARA RT. 02/ RW. 02', 'gr003'),
('18866', 'WIDYANINGRUM', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 2', 'X TKJ 2', 'RUGIMAN / KARTINI ', 'KALIWUNGU RT. 01/ RW. 06', 'gr003'),
('18868', 'EBELHARD FRANSISCUS LEWIS ', 'XI', 'TEKNIK KOMPUTER DAN JARINGAN', 'XI TKJ', 'EDWART ROBERT LEWIS / NANIK SU', 'TAMAN CIPTASARI , SAGULUNG, BA', 'gr006'),
('18869', 'Hafiza Dhafin Fahreza', 'XII', 'TEKNIK SEPEDA MOTOR 1', 'XII TSM 1', 'Ivan Arif Santoso / Imama Bina', 'Jl. Padi VI Blok B. 136 Semara', 'gr010'),
('18870', 'RIZZAM ADI PURNOMO', 'X', 'TEKNIK KOMPUTER DAN JARINGAN 5', 'X TKJ 1', 'MUSLIMIN / ROHYATI', 'MANDIRAJA WETAN RT. 06/RW. 01', 'gr002'),
('18871', 'TIO MAULANA', 'XI', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'XI TBSM', 'SUTARWIN / MIRARTI', 'KLAMPOK RT. 04/14', 'gr007'),
('18872', 'SYAIFUL HIDAYAT', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUMODI AROJO RISTAM / SUNARTI', 'KARANG SALAM RT. 04/03', 'gr004'),
('18873', 'ANDREZZA OKTA NUGROHO', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'ALM. HARYANTO / RASMINI ', 'KALIWINASUH RT. 01/ RW. 09', 'gr004'),
('18874', 'GALIH FALLIANZAH RAGASTA', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUKIRMAN / SUMIATI', 'KALIWINASUH RT. 01/ RW. 09', 'gr004'),
('18875', 'TOFIK HIKMAWAN', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'HARYANTO / RUWIYATUN', 'ADIRESA RT. 02/07, SUSUKAN ', 'gr004'),
('18876', 'BINTANG REZA SANJAYA', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'ADIN / SRI MULYANI / TUMBILAH ', 'PAKIKIRAN RT.03/ 02, SUSUKAN ', 'gr004'),
('18877', 'ISNAN TEGAR AL AFGANI ', 'X', 'TEKNIK DAN BISNIS SEPEDA MOTOR ', 'X TBSM', 'SUMBONO / SITI ROKHIMAH ', 'KARANGJATI RT. 01/02, SUSUKAN ', 'gr004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `NIG` varchar(10) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `JABATAN` varchar(20) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`NIG`, `NAMA`, `JABATAN`, `USERNAME`, `PASSWORD`) VALUES
('BS001', 'Tutut Dwi Prihatin', 'bnd', 'wiwi', '251218'),
('KS001', 'Dwi Setyowati, S.Pd', 'ks', 'dwity', '1234567890'),
('KSW01', 'Sudiyo, A.Md', 'wks', 'Sudiyo', '123456');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_du`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_du` (
`TANGGAL` date
,`JUMLAH` int(9)
,`NIS` varchar(5)
,`KELAS` varchar(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_keluar`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_keluar` (
`BULAN` varchar(7)
,`TANGGAL` date
,`KODE_BIAYA` varchar(4)
,`JUMLAH` int(9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_spp`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_spp` (
`TANGGAL` date
,`JUMLAH` int(9)
,`NIS` varchar(5)
,`KELAS` varchar(10)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `TAHUN_AJARAN` tinytext NOT NULL,
  `KODE_KELAS` varchar(3) NOT NULL,
  `NIG` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`TAHUN_AJARAN`, `KODE_KELAS`, `NIG`) VALUES
('2018-2019', 'S1', 'gr001'),
('2018-2019', 'S2', 'gr002'),
('2018-2019', 'S3', 'gr003'),
('2018-2019', 'S4', 'gr004'),
('2018-2019', 'D1', 'gr005'),
('2018-2019', 'D2', 'gr006'),
('2018-2019', 'D3', 'gr007'),
('2018-2019', 'T1', 'gr008'),
('2018-2019', 'T2', 'gr009'),
('2018-2019', 'T3', 'gr010'),
('2018-2019', 'T4', 'gr011');

-- --------------------------------------------------------

--
-- Struktur untuk view `v_du`
--
DROP TABLE IF EXISTS `v_du`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_du`  AS  select `tbpemasukan`.`TANGGAL` AS `TANGGAL`,`tbpemasukan`.`JUMLAH` AS `JUMLAH`,`tbpemasukan`.`NIS` AS `NIS`,`tbsiswa`.`KELAS` AS `KELAS` from (`tbpemasukan` join `tbsiswa`) where ((`tbpemasukan`.`KODE_POST` = 'M02') and (`tbsiswa`.`NIS` = `tbpemasukan`.`NIS`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_keluar`
--
DROP TABLE IF EXISTS `v_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_keluar`  AS  select left(`tbpengeluaran`.`TANGGAL`,7) AS `BULAN`,`tbpengeluaran`.`TANGGAL` AS `TANGGAL`,`tbpengeluaran`.`KODE_BIAYA` AS `KODE_BIAYA`,`tbpengeluaran`.`JUMLAH` AS `JUMLAH` from (`tbpengeluaran` join `tbpostanggaran`) where (`tbpostanggaran`.`KODE_BIAYA` = `tbpengeluaran`.`KODE_BIAYA`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_spp`
--
DROP TABLE IF EXISTS `v_spp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_spp`  AS  select `tbpemasukan`.`TANGGAL` AS `TANGGAL`,`tbpemasukan`.`JUMLAH` AS `JUMLAH`,`tbpemasukan`.`NIS` AS `NIS`,`tbsiswa`.`KELAS` AS `KELAS` from (`tbpemasukan` join `tbsiswa`) where ((`tbpemasukan`.`KODE_POST` = 'M01') and (`tbsiswa`.`NIS` = `tbpemasukan`.`NIS`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kodebyr`
--
ALTER TABLE `kodebyr`
  ADD PRIMARY KEY (`KODE_POST`);

--
-- Indexes for table `tbpemasukan`
--
ALTER TABLE `tbpemasukan`
  ADD PRIMARY KEY (`KODE_TERIMA`);

--
-- Indexes for table `tbpengeluaran`
--
ALTER TABLE `tbpengeluaran`
  ADD PRIMARY KEY (`KODE_BAYAR`);

--
-- Indexes for table `tbpostanggaran`
--
ALTER TABLE `tbpostanggaran`
  ADD PRIMARY KEY (`KODE_BIAYA`);

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`NIS`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`NIG`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbpemasukan`
--
ALTER TABLE `tbpemasukan`
  MODIFY `KODE_TERIMA` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `tbpengeluaran`
--
ALTER TABLE `tbpengeluaran`
  MODIFY `KODE_BAYAR` int(9) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
