-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 01:29 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bill_reciept`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `proudct_id` varchar(55) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `proudct_id`, `product_name`, `product_price`, `product_qty`) VALUES
(1, 'ml01', 'Ankle - AP', 300, 2),
(2, 'pn01', 'Ankle - AP&LAT', 400, 3),
(3, 'pn02', 'Ankle - AXIAL', 120, 4),
(4, 'rm1', 'Ankle - LAT', 25, 2),
(5, 'rm1', 'Abdomen - ADULT - ERECT', 35, 2),
(6, 'jr01', 'Abdomen - ADULT -  SUPINE', 110, 2),
(7, 'kf1', 'Abdomen- Child - Erect', 230, 2),
(8, 'mt01', 'Abdomen - Child - SUPINE', 425, 1),
(9, 'ck01', 'BARIUM ENEMA- ADULT[DOUB CONTRAST]', 210, 1),
(10, 'ck02', 'BARIUM ENEMA- ADULT[SINGLE CONTRAST]', 110, 1),
(11, 'ck03', 'BARIUM ENEMA- PAED[SINGLE CONTRAST]', 150, 1),
(12, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(13, 'rt01', 'BARIUM FOLLOW THROUGH- PAED', 45, 1),
(14, 'rt01', 'BARIUM MEAL', 45, 1),
(15, 'rt01', 'BARIUM SWALLOW.', 45, 1),
(16, 'rt01', 'Cervical Spine - AP', 45, 1),
(17, 'rt01', 'Cervical Spine - AP & LAT', 45, 1),
(18, 'rt01', 'Cervical Spine - LAT', 45, 1),
(19, 'rt01', 'Cervical Spine (Swimmer view)', 45, 1),
(20, 'rt01', 'Coccyx-AP', 45, 1),
(21, 'rt01', 'Coccyx-AP & LAT', 45, 1),
(22, 'rt01', 'Coccyx-LAT', 45, 1),
(23, 'rt01', 'CXR - ADULT - AP', 45, 1),
(24, 'rt01', 'CXR - ADULT - LAT', 45, 1),
(25, 'rt01', 'CXR - ADULT - PA', 45, 1),
(26, 'rt01', 'CXR - ADULT - PA & AP', 45, 1),
(27, 'rt01', 'CXR - ADULT - PA & LAT', 45, 1),
(28, 'rt01', 'CXR - Child - AP', 45, 1),
(29, 'rt01', 'CXR - Child - AP & PA', 45, 1),
(30, 'rt01', 'CXR - Child - AP &LAT', 45, 1),
(31, 'rt01', 'CXR - Child - LAT', 45, 1),
(32, 'rt01', 'CXR - Child - PA', 45, 1),
(33, 'rt01', 'CXR - Child - PA &LAT', 45, 1),
(34, 'rt01', 'Elbow AP ', 45, 1),
(35, 'rt01', 'Elbow AP&LAT', 45, 1),
(36, 'rt01', 'BOTH HIP LET ( FROG LEG)', 45, 1),
(37, 'rt01', 'FEMUR - ADULT - AP', 45, 1),
(38, 'rt01', 'FEMUR - ADULT - AP & LAT', 45, 1),
(39, 'rt01', 'FEMUR - ADULT - LAT', 45, 1),
(40, 'rt01', 'Femur - Child - AP', 45, 1),
(41, 'rt01', 'Femur - Child - AP & LAT', 45, 1),
(42, 'rt01', 'Femur - Child - LAT', 45, 1),
(43, 'rt01', 'FILM X-RAY', 45, 1),
(44, 'rt01', 'Finger - AP', 45, 1),
(45, 'rt01', 'Finger - AP & LAT', 45, 1),
(46, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(47, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(48, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(49, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(50, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(51, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(52, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(53, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(54, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(55, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(56, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(57, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(58, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(59, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(60, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(61, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(62, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(63, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(64, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(65, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(66, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(67, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(68, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(69, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(70, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(71, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(72, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(73, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(74, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(75, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(76, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(77, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(78, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(79, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(80, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(81, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(82, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(83, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(84, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(85, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(86, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(87, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(88, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(89, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(90, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(91, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(92, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(93, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(94, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(95, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(96, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(97, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(98, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(99, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(100, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(101, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(102, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(103, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(104, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(105, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(106, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(107, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(108, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(109, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(110, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(111, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(112, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(113, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(114, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(115, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(116, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(117, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(118, 'rt01', 'BARIUM FOLLOW THROUGH- ADULT', 45, 1),
(119, 'rt02', 'BARIUM FOLLOW THROUGH- PAED', 90, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
