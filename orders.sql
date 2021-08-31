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
  `product_price` int(11) NOT NULL
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_name`,`proudct_id`, `product_price`) VALUES
(1,'	Ankle - AP'	 , 'X-RAY' ,	300	),
(2,'	Ankle - AP&LAT	', 'X-RAY' ,400	),
(3,'	Ankle - AXIAL'	 , 'X-RAY' ,	300	),
(4,'	Ankle - LAT	' , 'X-RAY' ,	300	),
(5,'	Abdomen - ADULT - ERECT'	 , 'X-RAY' ,	300	),
(6,'	Abdomen - ADULT -  SUPINE', 'X-RAY' ,	300	),
(7,'	Abdomen- Child - Erect	 ', 'X-RAY' ,	300	),
(8,'	Abdomen - Child - SUPINE	 ', 'X-RAY' ,	300	),
(9,'	BARIUM ENEMA- ADULT[DOUB CONTRAST]	 ', 'X-RAY' ,	3760	),
(10,'	BARIUM ENEMA- ADULT[SINGLE CONTRAST]	' , 'X-RAY' ,	3500	),
(11,'	BARIUM ENEMA- PAED[SINGLE CONTRAST]	 ', 'X-RAY' ,	3000	),
(12,'	BARIUM FOLLOW THROUGH- ADULT	' , 'X-RAY' ,	3500	),
(13,'	BARIUM FOLLOW THROUGH- PAED	' , 'X-RAY' ,	3000	),
(14,'	BARIUM MEAL	' , 'X-RAY' ,	2500	)
,(15,'	BARIUM SWALLOW.'	 , 'X-RAY' ,	1500	)
,(16,'	Cervical Spine - AP	' , 'X-RAY' ,	300	)
,(17,'	Cervical Spine - AP & LAT'	 , 'X-RAY' ,	400	)
,(18,'	Cervical Spine - LAT	 ', 'X-RAY' ,	300	)
,(19,'	Cervical Spine (Swimmer view)	' , 'X-RAY' ,	300	)
,(20,'	Coccyx-AP	 ', 'X-RAY' ,	300	)
,(21,'	Coccyx-AP & LAT	 ', 'X-RAY' ,	450	)
,(22,'	Coccyx-LAT	 ', 'X-RAY' ,	300	)
,(23,'	CXR - ADULT - AP	 ', 'X-RAY' ,	300	)
,(24,'	CXR - ADULT - LAT	 ', 'X-RAY' ,	300	)
,(25,'	CXR - ADULT - PA	 ', 'X-RAY' ,	250	)
,(26,'	CXR - ADULT - PA & AP	 ', 'X-RAY' ,	400	)
,(27,'	CXR - ADULT - PA & LAT	' , 'X-RAY' ,	400	)
,(28,'	CXR - Child - AP	 ', 'X-RAY' ,	300	)
,(29,'	CXR - Child - AP & PA	' , 'X-RAY' ,	400	)
,(30,'	CXR - Child - AP &LAT	 ', 'X-RAY' ,	400	)
,(31,'	CXR - Child - LAT	 ', 'X-RAY' ,	300	)
,(32,'	CXR - Child - PA	 ', 'X-RAY' ,	250	)
,(33,'	CXR - Child - PA &LAT	 ', 'X-RAY' ,	400	)
,(34,'	Elbow AP 	' , 'X-RAY' ,	300	)
,(35,'	Elbow AP&LAT	 ', 'X-RAY' ,	400	)
,(36,'	BOTH HIP LET ( FROG LEG)	 ', 'X-RAY' ,	450	)
,(37,'	FEMUR - ADULT - AP	 ', 'X-RAY' ,	300	)
,(38,'	FEMUR - ADULT - AP & LAT	 ', 'X-RAY' ,	400	)
,(39,'	FEMUR - ADULT - LAT	 ', 'X-RAY' ,	300	)
,(40,'	Femur - Child - AP	 ', 'X-RAY' ,	300	)
,(41,'	Femur - Child - AP & LAT	' , 'X-RAY' ,	400	)
,(42,'	Femur - Child - LAT	 ', 'X-RAY' ,	300	)
,(43,'	FILM X-RAY	','Others',	80	)
,(44,'	Finger - AP	 ', 'X-RAY' ,	250	)
,(45,'	Finger - AP & LAT	 ', 'X-RAY' ,	350	)
,(46,'	Finger - LAT	 ', 'X-RAY' ,	250	)
,(47,'	Finger - OBL	 ', 'X-RAY' ,	250	)
,(48,'	Finger - OBL & AP	 ', 'X-RAY' ,	350	)
,(49,'	Finger - OBL & LAT	 ', 'X-RAY' ,	350	)
,(50,'	Finger - AP& LAT & OBL	' , 'X-RAY' ,	450	)
,(51,'	Foot -  AP &LAT	 ', 'X-RAY' ,	400	)
,(52,'	Foot - AP	 ', 'X-RAY' ,	300	)
,(53,'	Foot - LAT	 ', 'X-RAY' ,	300	)
,(54,'	Foot - OBL	 ', 'X-RAY' ,	300	)
,(55,'	Foot - OBL & AP	 ', 'X-RAY' ,	400	)
,(56,'	Foot - OBL &LAT	 ', 'X-RAY' ,	400	)
,(57,'	Foot - AP- LAT & OBL	 ', 'X-RAY' ,	500	)
,(58,'	FOREARM - AP	 ', 'X-RAY' ,	300	)
,(59,'	FOREARM - AP & LAT	 ', 'X-RAY' ,	400	)
,(60,'	FOREARM - LAT	 ', 'X-RAY' ,	300	)
,(61,'	Hand - AP	 ', 'X-RAY' ,	300	)
,(62,'	Hand - AP & LAT	 ', 'X-RAY' ,	400	)
,(63,'	Hand - LAT	 ', 'X-RAY' ,	300	)
,(64,'	Hand - OBL	 ', 'X-RAY' ,	300	)
,(65,'	Hand - AP- LAT &OBL	 ', 'X-RAY' ,	500	)
,(66,'	HAND AP&OBL	 ', 'X-RAY' ,	400	)
,(67,'	BOTH HAND AP	 ', 'X-RAY' ,	350	)
,(68,'	HIP - ADULT - AP	 ', 'X-RAY' ,	300	)
,(69,'	HIP - ADULT - AP & LAT	 ', 'X-RAY' ,	400	)
,(70,'	HIP - ADULT - LAT	 ', 'X-RAY' ,	300	)
,(71,'	Hip - Child - AP	 ', 'X-RAY' ,	300	)
,(72,'	Hip - Child - AP & LAT	 ', 'X-RAY' ,	400	)
,(73,'	Hip - Child - LAT	 ', 'X-RAY' ,	300	)
,(74,'	HUMERUS - ADULT   AP & LAT	 ', 'X-RAY' ,	400	)
,(75,'	HUMERUS - ADULT - AP	 ', 'X-RAY' ,	300	)
,(76,'	HUMERUS - ADULT - LAT	 ', 'X-RAY' ,	300	)
,(77,'	Humerus - Child - AP	 ', 'X-RAY' ,	300	)
,(78,'	Humerus - Child - LAT	 ', 'X-RAY' ,	300	)
,(79,'	Humerus - Small - LAT	 ', 'X-RAY' ,	300	)
,(80,'	I V U- PROCEDURE CHG	 ', 'X-RAY' ,	500	)
,(81,'	KNEE -  AP ADULT	 ', 'X-RAY' ,	300	)
,(82,'	KNEE - ADULT - SKYLINE	 ', 'X-RAY' ,	300	)
,(83,'	BOTH KNEE LAT	 ', 'X-RAY' ,	400	)
,(84,'	KNEE LAT	 ', 'X-RAY' ,	300	)
,(85,'	Knee - AP Child	 ', 'X-RAY' ,	300	)
,(86,'	Knee - Child - SKYLINE	 ', 'X-RAY' ,	300	)
,(87,'	BOTH KNEE AP	 ', 'X-RAY' ,	400	)
,(88,'	BOTH KNEE AP & LAT 	' , 'X-RAY' ,	800	)
,(89,'	KNEE AP & LAT	 ', 'X-RAY' ,	400	)
,(90,'	KUB - ADULT	 ', 'X-RAY' ,	300	)
,(91,'	KUB - Child	 ', 'X-RAY' ,	300	)
,(92,'	LEG - ADULT - AP	 ', 'X-RAY' ,	300	)
,(93,'	LEG - ADULT - AP & LAT	 ', 'X-RAY' ,	400	)
,(94,'	LEG - ADULT - LAT	 ', 'X-RAY' ,	300	)
,(95,'	Leg - Child - AP	 ', 'X-RAY' ,	300	)
,(96,'	Leg - Child - AP & LAT	 ', 'X-RAY' ,	400	)
,(97,'	Leg - Child - LAT	 ', 'X-RAY' ,	300	)
,(98,'	Lumbar Spine - AP	 ', 'X-RAY' ,	300	)
,(99,'	Lumbar Spine - AP & LAT	 ', 'X-RAY' ,	400	)
,(100,'	Lumbar Spine - LAT	 ', 'X-RAY' ,	300	)
,(101,'	Mandible - AP	 ', 'X-RAY' ,	300	)
,(102,'	Mandible - AP & PA	 ', 'X-RAY' ,	450	)
,(103,'	Mandible - OBL	 ', 'X-RAY' ,	300	)
,(104,'	Mandible - OBL & AP	 ', 'X-RAY' ,	450	)
,(105,'	Mandible - OBL & PA	 ', 'X-RAY' ,	450	)
,(106,'	Mandible - PA	 ', 'X-RAY' ,	300	)
,(107,'	MCU	 ', 'X-RAY' ,	1500	)
,(108,'	PELVIS -  AP ADULT	 ', 'X-RAY' ,	300	)
,(109,'	Pelvis - Child	 ', 'X-RAY' ,	300	)
,(110,'	Pelvis AP & LAT	 ', 'X-RAY' ,	450	)
,(111,'	PNS	 ', 'X-RAY' ,	300	)
,(112,'	Shoulder AP & LAT	 ', 'X-RAY' ,	400	)
,(113,'	Shoulder	 ', 'X-RAY' ,	300	)
,(114,'	SIALOGRAM[PROCEDURE CHG]	 ', 'X-RAY' ,	1500	)
,(115,'	URETHROGRAM[PROCEDURE CHG]	 ', 'X-RAY' ,	1500	)
,(116,'	Skull - AP	 ', 'X-RAY' ,	300	)
,(117,'	Skull - AP & LAT	 ', 'X-RAY' ,	400	)
,(118,'	Skull - LAT	 ', 'X-RAY' ,	300	)
,(119,'	Soft tissue neck	 ', 'X-RAY' ,	300	)
,(120,'	T L SPINE - ADULT	 ', 'X-RAY' ,	350	)
,(121,'	T L SPINE - CHILD	 ', 'X-RAY' ,	300	)
,(122,'	Thoracic Spine - AP	', 'X-RAY' ,	300	)
,(123,'	Thoracic Spine - AP & LAT	 ', 'X-RAY' ,	400	)
,(124,'	Thoracic Spine - LAT'	 , 'X-RAY' ,	300	)
,(125,'	Toes	 ', 'X-RAY' ,	300	)
,(126,'	Toes AP & LAT'	 , 'X-RAY' ,	400	)
,(127,'	Wrist	 ', 'X-RAY' ,	300	)
,(128,'	Wrist AP & LAT'	 , 'X-RAY' ,	400	);

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
