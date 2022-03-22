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
-- Database: `trioldco_calerhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `FURNITURE`
--

CREATE TABLE `FURNITURE` (
  `PRODUCTID` varchar(30) NOT NULL,
  `PRODUCTNAME` varchar(30) NOT NULL,
  `PRODUCTTYPE` varchar(30) NOT NULL,
  `DESCRIPTION` varchar(30) NOT NULL,
  `PRODUCTPRICE` varchar(30) NOT NULL,
  `PRODUCTQUANTITY` varchar(30) NOT NULL,
  `DATEADD` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FURNITURE`
--

INSERT INTO `FURNITURE` (`PRODUCTID`, `PRODUCTNAME`, `PRODUCTTYPE`, `DESCRIPTION`, `PRODUCTPRICE`, `PRODUCTQUANTITY`, `DATEADD`) VALUES
('CH60dd74c2bd013', 'Sofa', 'Sofa', 'A Sofa', '356', '3', '2021-07-01 07:54:42.774207'),
('CH60dd74f66d604', 'Chair', 'Chair', 'A chair', '199', '12', '2021-07-01 07:55:34.448051'),
('CH60dd7512d3815', 'Table', 'Table', 'A table', '576', '3', '2021-07-01 07:56:02.866395'),
('CH60dd753fa3726', 'Bed', 'Bed', 'A bed', '465', '9', '2021-07-01 07:56:47.669535'),
('CH60dd757179422', 'Cabinet', 'Cabinet', 'A Cabinet', '234', '45', '2021-07-01 07:57:37.496726'),
('CH60dd959af3a43', 'Kitchen Kabinet', 'Kitchen Cabinet', 'A kitchen cabinet', '345', '34', '2021-07-01 10:14:50.998011');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `EMAIL` varchar(30) NOT NULL,
  `PAID` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `ORDERID` varchar(30) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `ADDRESS` varchar(300) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `DATE` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`EMAIL`, `PAID`, `STATUS`, `ORDERID`, `PHONE`, `ADDRESS`, `FNAME`, `LNAME`, `DATE`) VALUES
('teocheeyuan1998@gmail.com', '1314', 'paid', 'g6vmjjaq', '01121641099', 'No 1, Jalan 1, Taman A, 86000 Kluang,Johor', 'Teo ', 'Chee Yuan', '2021-07-01 09:31:46.405627'),
('teocheeyuan1998@gmail.com', '1506', 'paid', 'hgtskzpa', '01234567890', 'No 0, Jalan A, Taman b, 86000 kluang, Johor', 'Tam', 'Jin An', '2021-07-01 11:51:31.293820'),
('teocheeyuan1998@gmail.com', '930', 'paid', 'vd95un0g', '0123456789', '123 abc', 'a', 'b', '2021-07-02 14:58:21.737915'),
('teocheeyuan1998@gmail.com', '930', 'paid', 'vd95un0g', '0123456789', '123 abc', 'a', 'b', '2021-07-04 07:54:26.066126');

-- --------------------------------------------------------

--
-- Table structure for table `USER`
--

CREATE TABLE `USER` (
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `DATEREG` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `OTP` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USER`
--

INSERT INTO `USER` (`NAME`, `EMAIL`, `PHONE`, `PASSWORD`, `DATEREG`, `OTP`) VALUES
('admin01', 'admin01@gmail.com', '0123456789', 'cb0ef4c7be04ff1bf4cfcd104ef8df03251266ab', '2021-06-05 12:57:06.823569', '0'),
('teo0627', 'teocheeyuan1998@gmail.com', '01121641099', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '2021-04-27 06:23:40.056621', '0');

-- --------------------------------------------------------

--
-- Table structure for table `USERCART`
--

CREATE TABLE `USERCART` (
  `EMAIL` varchar(30) NOT NULL,
  `PRODUCTID` varchar(30) NOT NULL,
  `PRODUCTQTY` varchar(30) NOT NULL,
  `TIMEADD` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USERCART`
--

INSERT INTO `USERCART` (`EMAIL`, `PRODUCTID`, `PRODUCTQTY`, `TIMEADD`) VALUES
('teocheeyuan1998@gmail.com', 'CH60dd757179422', '1', '2021-07-04 10:04:52.237701');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `FURNITURE`
--
ALTER TABLE `FURNITURE`
  ADD UNIQUE KEY `PRODUCTID` (`PRODUCTID`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
