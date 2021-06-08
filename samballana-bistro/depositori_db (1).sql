-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 08:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depositori_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`) VALUES
(28, 'Acoustic Guitar', 'electronic', 312.9, 10, '2021-05-19 20:58:10', '60a51972dd733.png'),
(29, 'Mechanical Keyboard', 'electronic', 412.2, 5, '2021-05-19 20:59:52', '60a519d81f552.png'),
(30, 'Gaming Chair', 'furniture', 523.3, 3, '2021-05-19 21:04:50', '60a51b0215725.png'),
(31, 'Farm Dining Table', 'furniture', 172, 21, '2021-05-19 21:05:29', '60a51b29713e8.png'),
(32, 'Rounded Table', 'furniture', 242.3, 3, '2021-05-19 21:06:11', '60a51b53a3992.png'),
(33, 'Mrvls Table', 'furniture', 321, 3, '2021-05-19 21:06:52', '60a51b7c2e87b.png'),
(34, 'Crystal Dining Table', 'furniture', 1234.3, 2, '2021-05-19 21:08:42', '60a51bea3f7b5.png'),
(35, 'Television', 'electronic', 32.3, 1, '2021-05-19 21:32:00', '60a52160bd41a.png'),
(36, 'Comfy Couch', 'furniture', 200, 1, '2021-05-19 21:33:11', '60a521a70d7be.png'),
(37, 'TV', 'electronic', 500, 10, '2021-05-21 22:32:58', '60a7c49a9a001.png'),
(39, 'SailBoat RC', 'electronic', 559, 10, '2021-05-24 13:31:53', '60ab3a49e524e.png'),
(40, 'Cessna RC', 'electronic', 700, 5, '2021-05-24 13:36:48', '60ab3b70e8cd7.png'),
(41, 'Del Monte Leaf Sninach', 'canned', 3.5, 50, '2021-05-24 14:03:27', '60ab41afb3653.png'),
(42, 'Shirley', 'beverage', 15, 10, '2021-05-25 11:07:01', '60ac69d595874.png'),
(43, 'Pink Drink', 'beverage', 8, 10, '2021-05-25 11:15:26', '60ac6bce0cfae.png'),
(44, 'Tuna Premium', 'canned', 12, 50, '2021-05-25 11:17:50', '60ac6c5ee2d54.png'),
(45, 'Soup', 'canned', 7, 10, '2021-05-25 11:21:12', '60ac6d28a774f.png'),
(46, 'Sardines Tomatoes', 'canned', 4.5, 50, '2021-05-25 11:53:30', '60ac74baeef29.png'),
(47, 'Ayam Sardines', 'canned', 4, 55, '2021-05-25 11:55:32', '60ac753411d37.png'),
(48, 'Alishan Sardines', 'canned', 4, 3, '2021-05-25 12:06:03', '60ac77ab1d431.png'),
(49, 'Canned Bread', 'canned', 5, 44, '2021-05-25 12:11:07', '60ac78db810a5.png'),
(50, 'Sunfield  Potatoes', 'canned', 6, 55, '2021-05-25 12:22:27', '60ac7b836aac6.png'),
(51, 'Maskara Jan', 'beverage', 49.99, 299, '2021-06-08 22:12:22', '60bf7ac68d14a.png'),
(52, 'Lipstick Jan', 'beverage', 99.99, 129, '2021-06-09 00:54:56', '60bfa0e093921.png'),
(53, 'Blusher Jan', 'beverage', 123, 224, '2021-06-09 01:38:00', '60bfaaf8429ce.png'),
(54, 'Blusher Jan', 'beverage', 123, 224, '2021-06-09 01:38:31', '60bfab179cde7.png'),
(55, 'Sardin Ayam Brand', 'canned', 7.5, 276, '2021-06-09 02:14:53', '60bfb39d2944d.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `date_reg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `phone`, `name`, `password`, `otp`, `date_reg`) VALUES
('ayuazizi8084@gmail.com', '0172992558', 'Rahayu Ramelan', '4953e124abfddab89f5636f30bbf0e34b74e0575', '3664', '2021-06-08 19:49:03.345773'),
('halim.mozac99@gmail.com', '01169279769', 'Abdul Halim Abdullah', 'bcb5128d7130af5f737b1570572aac41e3e2b1fd', '3258', '2021-06-06 22:25:34.002362'),
('halim.mozac@gmail.com', '01169279769', 'Abdul Halim Abdullah', 'bcb5128d7130af5f737b1570572aac41e3e2b1fd', '1328', '2021-06-07 23:25:46.091543'),
('reservations@lexis.com', '+6066532000', 'Lexis Port Dickson', 'bcb5128d7130af5f737b1570572aac41e3e2b1fd', '7419', '2021-06-08 18:52:07.522276'),
('slumberjer@gmail.com', '0194702493', 'Ahmad Hanis Mohd Shabli', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '1', '2021-04-15 13:46:01.016075');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
