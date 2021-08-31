-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 03:30 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bill`
--

-- --------------------------------------------------------

--
-- Table structure for table `patdb`
--

CREATE TABLE `patdb` (
  `Sl.no` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `billno` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(14) NOT NULL,
  `service` varchar(30) NOT NULL,
  `price` int(5) NOT NULL,
  `discount` int(10) NOT NULL,
  `totalpaid` int(5) NOT NULL,
  `dueamount` int(5) NOT NULL,
  `refby` varchar(30) NOT NULL,
  `billedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patdb`
--
ALTER TABLE `patdb`
  ADD PRIMARY KEY (`Sl.no`),
  ADD UNIQUE KEY `Sl.no` (`Sl.no`),
  ADD KEY `Sl.no_2` (`Sl.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patdb`
--
ALTER TABLE `patdb`
  MODIFY `Sl.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
