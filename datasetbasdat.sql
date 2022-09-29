-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 03:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: datasetbasdat
--

-- --------------------------------------------------------

--
-- Table structure for table dosen
--
create database BASDAT

CREATE TABLE dosen (
  nip int NOT NULL,
  namaDosen varchar(255) NOT NULL,
  departemen varchar(255) NOT NULL
)

--
-- Dumping data for table dosen
--

INSERT INTO dosen (nip, namaDosen, departemen) VALUES
(50001, 'Bapak Agus', 'Ilmu Komputer'),
(50002, 'Ibu Rina', 'Matematika');

-- --------------------------------------------------------

--
-- Table structure for table kelas
--

CREATE TABLE kelas (
  idKelas int NOT NULL,
  idDosen int NOT NULL,
  idMk int NOT NULL,
  semester int NOT NULL,
  tahun int NOT NULL,
  klas varchar(255) NOT NULL
) 

--
-- Dumping data for table kelas
--

INSERT INTO kelas (idKelas, idDosen, idMk, semester, tahun, klas) VALUES
(21, 50001, 3, 3, 2022, 'B'),
(22, 50002, 1, 3, 2022, 'A'),
(23, 50002, 2, 3, 2022, 'B');

-- --------------------------------------------------------

--
-- Table structure for table mahasiswa
--

CREATE TABLE mahasiswa (
  nim int NOT NULL,
  namaMhs varchar(255) NOT NULL,
  alamat varchar(255) NOT NULL,
  departemen varchar(255) NOT NULL
) 

--
-- Dumping data for table mahasiswa
--

INSERT INTO mahasiswa (nim, namaMhs, alamat, departemen) VALUES
(42001, 'Mimi', 'jalan merdeka', 'Ilmu Komputer'),
(42002, 'Lani', 'jalan bunga', 'Matematika'),
(42003, 'Budi', 'jalan wkwk', 'Statistika'),
(42004, 'Juno', 'jalan bahagia', 'Ilmu Komputer');

-- --------------------------------------------------------

--
-- Table structure for table matakuliah
--

CREATE TABLE matakuliah (
  idMk int NOT NULL,
  namaMk varchar(255) NOT NULL,
  sks int NOT NULL,
  sifat varchar(255) NOT NULL
) 

--
-- Dumping data for table matakuliah
--

INSERT INTO matakuliah (idMk, namaMk, sks, sifat) VALUES
(1, 'Kalkulus', 3, 'Wajib'),
(2, 'Fisika', 2, 'Pilihan'),
(3, 'Basis Data', 3, 'Wajib');

-- --------------------------------------------------------

--
-- Table structure for table nilai
--

CREATE TABLE nilai (
  nilaiHuruf varchar(10) NOT NULL,
  bobot float NOT NULL
) 

--
-- Dumping data for table nilai
--

INSERT INTO nilai (nilaiHuruf, bobot) VALUES
('A', 4),
('B', 3),
('C', 2),
('D', 1);

-- --------------------------------------------------------

--
-- Table structure for table peserta
--

CREATE TABLE peserta (
  idKelas int NOT NULL,
  nim int NOT NULL,
  nilaiHuruf varchar(255) NOT NULL
)

--
-- Dumping data for table peserta
--

INSERT INTO peserta (idKelas, nim, nilaiHuruf) VALUES
(21, 42001, 'A'),
(21, 42004, 'A'),
(21, 42003, 'B'),
(22, 42002, 'A'),
(22, 42003, 'C'),
(23, 42002, 'A'),
(23, 42001, 'A'),
(23, 42002, 'B');

-- --------------------------------------------------------

--
-- Table structure for table ruang
--

CREATE TABLE ruang (
  idRuang int NOT NULL,
  namaRuang varchar(255) NOT NULL,
  kapasitas int NOT NULL
) 

--
-- Dumping data for table ruang
--

INSERT INTO ruang (idRuang, namaRuang, kapasitas) VALUES
(401, 'Ruang FMIPA 1', 50),
(402, 'Ruang FMIPA 2', 70),
(403, 'Ruang FMIPA 3', 30);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
