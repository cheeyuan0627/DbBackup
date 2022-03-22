-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2022 at 01:42 PM
-- Server version: 10.3.34-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trioldco_tgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `CART`
--

CREATE TABLE `CART` (
  `EMAIL` varchar(50) NOT NULL,
  `ITEMID` varchar(30) NOT NULL,
  `ITEMQUANTITY` varchar(30) NOT NULL,
  `SELLERID` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CART`
--

INSERT INTO `CART` (`EMAIL`, `ITEMID`, `ITEMQUANTITY`, `SELLERID`) VALUES
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ITEM`
--

CREATE TABLE `ITEM` (
  `PICTURE` varchar(30) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PRICE` varchar(30) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `LOCATION` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(1000) NOT NULL,
  `QUANTITY` varchar(10) NOT NULL,
  `DATEREG` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `ITEMID` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `SELLERID` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ITEM`
--

INSERT INTO `ITEM` (`PICTURE`, `NAME`, `PRICE`, `TYPE`, `STATUS`, `LOCATION`, `DESCRIPTION`, `QUANTITY`, `DATEREG`, `ITEMID`, `SELLERID`) VALUES
('00001', 'Asus Gaming Laptop', '3999', 'Computer/Laptop', 'New', 'Johor', 'A powerful Windows 10 laptop that combines immersive gaming with an extended lifespan.', '3', '2021-01-18 18:57:43.116900', '001', 'try1'),
('00002', 'Acer Laptop', '1199', 'Computer/Laptop', 'New', 'Penang', 'Demo description', '2', '2021-01-18 18:57:43.116900', '002', 'try1'),
('00003', 'Fantech Mouse', '57', 'Mouse', 'SH', 'Kedah', 'Demo description', '78', '2021-01-18 18:57:43.116900', '003', 'try1'),
('00004', 'Razer Keyboard ', '99', 'Keyboard', 'New', 'Sarawak', 'Demo description', '12', '2021-01-18 18:57:43.116900', '004', 'try1'),
('00005', 'Msi Laptop', '3999', 'Computer/Laptop', 'SH', 'Johor', 'Demo description', '1', '2021-01-18 18:57:43.116900', '005', 'try1'),
('00006', 'Samsung Monitor', '399', 'Monitor', 'SH', 'Sabah', 'Demo description', '45', '2021-01-18 18:57:43.116900', '006', 'try1'),
('12-1612449411142158', 'cable', '12', 'Assesories', 'New', 'Malacca', 'cable', '12', '2021-02-04 14:36:52.148488', '-161244941114215812', 'teo0627');

-- --------------------------------------------------------

--
-- Table structure for table `PAID`
--

CREATE TABLE `PAID` (
  `RECEIPTID` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `DATE` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `AMOUNT` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PAID`
--

INSERT INTO `PAID` (`RECEIPTID`, `EMAIL`, `DATE`, `AMOUNT`) VALUES
('6dkysrll', 'teocheeyuan1998@gmail.com', '2021-02-04 21:43:37.730352', '231.00'),
('grdyb7hh', 'teocheeyuan1998@gmail.com', '2021-02-04 21:45:22.152024', '408.00'),
('vcudspax', 'teocheeyuan1998@gmail.com', '2021-02-04 22:40:08.610922', '2407.00');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `NAME` varchar(100) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `DATEREG` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `OTP` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`NAME`, `EMAIL`, `PHONE`, `PASSWORD`, `DATEREG`, `OTP`) VALUES
('teo0627', 'teocheeyuan1998@gmail.com', '01121641099', '71b6b81828842bfc7502d85f9a694a339ce4c648', '2021-02-04 13:35:24.852179', '0'),
('fghfg', 'secoye4193@shzsedu.com', 'tryrt', '807a994652e0bbda63aae7798f47b755685f5a57', '2021-04-09 10:38:55.201988', '7842'),
('sdas', 'qf3xeqef5j@buy-blog.com', 'aqweqweqwe', '62cea4b46701de5ffdca2d2094298b33bd421b43', '2021-07-01 06:39:48.672531', '4640');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD UNIQUE KEY `PICTURE` (`PICTURE`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`EMAIL`),
  ADD UNIQUE KEY `PHONE` (`PHONE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
