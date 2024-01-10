-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 06:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meraki_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_supplier_tbl`
--

CREATE TABLE `client_supplier_tbl` (
  `Id_client_sup` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_no` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tin_no` int(100) NOT NULL,
  `role` enum('1','2') NOT NULL COMMENT '1 = supplier, 2 = client'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_supplier_tbl`
--

INSERT INTO `client_supplier_tbl` (`Id_client_sup`, `name`, `address`, `contact_person`, `contact_no`, `email`, `tin_no`, `role`) VALUES
(14, 'Tarlac Agricultural University', 'Malacampa Camiling Tarlac', 'Rom', 950178101, 'tau@gmail.com', 222222, '2'),
(15, 'Tarlac Agricultural University', 'Malacampa Camiling Tarlac', 'Rom', 950178101, 'tau@gmail.com', 1111111, '1'),
(16, 'Tarlac Agricultural University', 'Malacampa Camiling Tarlac', 'Rom', 950178101, 'tau@gmail.com', 3333333, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('1','2') NOT NULL COMMENT '1 = admin, 2 = tba'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `f_name`, `m_name`, `l_name`, `email`, `contact`, `username`, `password`, `role`) VALUES
(1, 'Mark ', 'Ferdinand', 'Abayan', 'admin@gmail.com', 0, 'admin', 'admin_1234', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_supplier_tbl`
--
ALTER TABLE `client_supplier_tbl`
  ADD PRIMARY KEY (`Id_client_sup`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_supplier_tbl`
--
ALTER TABLE `client_supplier_tbl`
  MODIFY `Id_client_sup` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
