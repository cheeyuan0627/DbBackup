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
-- Database: `trioldco_dietdiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `BMIINFO`
--

CREATE TABLE `BMIINFO` (
  `WEIGHT` varchar(30) NOT NULL,
  `HEIGHT` varchar(30) NOT NULL,
  `BMI` varchar(30) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `EMAIL` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BMIINFO`
--

INSERT INTO `BMIINFO` (`WEIGHT`, `HEIGHT`, `BMI`, `TYPE`, `EMAIL`) VALUES
('61.99999999999999', '121.0', '42.34683423263438', 'You are Class 3 Obese', 'tej9812@gmail.com'),
('61.99999999999999', '75.0', '110.22222222222221', 'You are Class 3 Obese', 'jinan9898@gmail.com'),
('48.0', '120.0', '33.333333333333336', 'You are Obesed', 'teocheeyuan1998@gmail.com'),
('44.0', '157.0', '17.85062274331616', 'You are Underweighted', 'chongjingern@gmail.com'),
('75.0', '170.0', '25.95155709342561', 'You are Overweighted', 'chengyihken1998@gmail.com'),
('51.0', '157.0', '20.690494543389182', 'You are Totaly Fit', 'siokqian98@gmail.com'),
('58.99999999999999', '170.0', '20.41522491349481', 'You are Totaly Fit', 'tenglijian980806@gmail.com'),
('54.0', '164.0', '20.077334919690664', 'You are Totaly Fit', 'myrulmyrul98@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `FOOD`
--

CREATE TABLE `FOOD` (
  `NAME` varchar(30) NOT NULL,
  `CALORIE` varchar(30) NOT NULL,
  `QUANTITY` varchar(30) NOT NULL,
  `TYPE` varchar(30) NOT NULL,
  `CYCLE` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FOOD`
--

INSERT INTO `FOOD` (`NAME`, `CALORIE`, `QUANTITY`, `TYPE`, `CYCLE`) VALUES
('Breadsticks', '220', '1', 'You are Overweighted', 'Lunch'),
('Zucchini Bread', '220', '1', 'You are Overweighted', 'Breakfast'),
('Glory Muffins', '134', '1', 'You are Overweighted', 'Breakfast'),
('Barbecue', '178', '1', 'You are Overweighted', 'Lunch'),
('Oatmeal', '68', '1', 'You are Overweighted', 'Breakfast'),
('Bacon & Eggs', '210', '1', 'You are Totaly Fit', 'Breakfast'),
('Bagel', '250', '1', 'You are Totaly Fit', 'Breakfast'),
('Boiled Egg', '155', '1', 'You are Totaly Fit', 'Breakfast'),
('Grilled Chicken', '226', '1', 'You are Totaly Fit', 'Lunch'),
('Garden Salad', '117', '1', 'You are Totaly Fit', 'Lunch'),
('Pan Beef', '200', '1', 'You are Totaly Fit', 'Lunch'),
('Meat Loaves', '149', '1', 'You are Totaly Fit', 'Dinner'),
('Mozzarella Sticks', '190', '1', 'You are Totaly Fit', 'Dinner'),
('Tacoritos', '310', '1', 'You are Totaly Fit', 'Dinner'),
('Fruit Salad', '50', '1', 'You are Underweighted', 'Breakfast'),
('Tomato Toast', '172', '1', 'You are Underweighted', 'Breakfast'),
('Yogurt Smoothie', '230', '1', 'You are Underweighted', 'Breakfast'),
('Broccoli Salad', '110', '1', 'You are Underweighted', 'Lunch'),
('Beef Sandwich', '269', '1', 'You are Underweighted', 'Lunch'),
('Tuna Salad', '187', '1', 'You are Underweighted', 'Lunch'),
('Chicken Noodle', '136', '1', 'You are Underweighted', 'Dinner'),
('Lemon Chicken', '226', '1', 'You are Underweighted', 'Dinner'),
('Pork Chops', '231', '1', 'You are Underweighted', 'Dinner'),
('Pizza Dough', '130', '1', 'You are Overweighted', 'Lunch'),
('Carne Asada', '124', '1', 'You are Overweighted', 'Dinner'),
('Flank Steak', '192', '1', 'You are Overweighted', 'Dinner'),
('Tortilla Soup', '235', '1', 'You are Overweighted', 'Dinner'),
('Berries', '57', '1', 'You are Obesed', 'Breakfast'),
('Eggs', '155', '1', 'You are Obesed', 'Breakfast'),
('Greek Yogurt', '59', '1', 'You are Obesed', 'Breakfast'),
('Tomato Penne', '234', '1', 'You are Obesed', 'Lunch'),
('Vegan Soup', '147', '1', 'You are Obesed', 'Lunch'),
('Vegetable Roll', '145', '1', 'You are Obesed', 'Lunch'),
('Cabbage Skillet', '65', '1', 'You are Obesed', 'Dinner'),
('Chili Chicken', '180', '1', 'You are Obesed', 'Dinner'),
('Pasta Scampi', '176', '1', 'You are Obesed', 'Dinner'),
('Cottage Cheese', '98', '1', 'You are Class 3 Obese', 'Breakfast'),
('Nuts', '273', '1', 'You are Class 3 Obese', 'Breakfast'),
('Protein Shake', '100', '1', 'You are Class 3 Obese', 'Breakfast'),
('Vegan Curry', '170', '1', 'You are Class 3 Obese', 'Lunch'),
('Veggie Hummus', '166', '1', 'You are Class 3 Obese', 'Lunch'),
('Zucchini Soup', '78', '1', 'You are Class 3 Obese', 'Lunch'),
('Beef Stir Fry', '190', '1', 'You are Class 3 Obese', 'Dinner'),
('Grain Bowl', '385', '1', 'You are Class 3 Obese', 'Dinner'),
('Pork Tenderloin', '242', '1', 'You are Class 3 Obese', 'Dinner');

-- --------------------------------------------------------

--
-- Table structure for table `FOODLIST`
--

CREATE TABLE `FOODLIST` (
  `FOODNAME` varchar(30) NOT NULL,
  `CALORIE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FOODLIST`
--

INSERT INTO `FOODLIST` (`FOODNAME`, `CALORIE`) VALUES
('Cereals', '150'),
('Fruits', '50'),
('Meat, Fish, Eggs', '180'),
('Milk & Substitutes', '42'),
('Vegetables', '65');

-- --------------------------------------------------------

--
-- Table structure for table `MEALSPLAN`
--

CREATE TABLE `MEALSPLAN` (
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `CYCLE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `MEALSPLAN`
--

INSERT INTO `MEALSPLAN` (`EMAIL`, `NAME`, `CYCLE`) VALUES
('tej9812@gmail.com', 'Barbecue', 'Lunch'),
('jinan9898@gmail.com', 'Beef Stir Fry', 'Dinner'),
('tej9812@gmail.com', 'Breadsticks', 'Lunch'),
('tej9812@gmail.com', 'Carne Asada', 'Dinner'),
('jinan9898@gmail.com', 'Cottage Cheese', 'Breakfast'),
('tej9812@gmail.com', 'Flank Steak', 'Dinner'),
('jinan9898@gmail.com', 'Grain Bowl', 'Dinner'),
('tej9812@gmail.com', 'Oatmeal', 'Breakfast'),
('tej9812@gmail.com', 'Pizza Dough', 'Lunch'),
('jinan9898@gmail.com', 'Vegan Curry', 'Lunch'),
('tej9812@gmail.com', 'Zucchini Bread', 'Breakfast'),
('jinan9898@gmail.com', 'Zucchini Soup', 'Lunch'),
('jinan9898@gmail.com', 'Zucchini Bread', 'Breakfast'),
('jinan9898@gmail.com', 'Glory Muffins', 'Breakfast'),
('jinan9898@gmail.com', 'Breadsticks', 'Lunch'),
('jinan9898@gmail.com', 'Barbecue', 'Lunch'),
('jinan9898@gmail.com', 'Pizza Dough', 'Lunch'),
('jinan9898@gmail.com', 'Carne Asada', 'Dinner'),
('jinan9898@gmail.com', 'Flank Steak', 'Dinner'),
('jinan9898@gmail.com', 'Tortilla Soup', 'Dinner'),
('tej9812@gmail.com', 'Glory Muffins', 'Breakfast'),
('jinan9898@gmail.com', 'Bacon & Eggs', 'Breakfast'),
('siokqian98@gmail.com', 'Bagel', 'Breakfast'),
('siokqian98@gmail.com', 'Grilled Chicken', 'Lunch'),
('teocheeyuan1998@gmail.com', 'Tomato Penne', 'Lunch'),
('teocheeyuan1998@gmail.com', 'Cabbage Skillet', 'Dinner'),
('teocheeyuan1998@gmail.com', 'Berries', 'Breakfast');

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
('teo0627', 'teocheeyuan1998@gmail.com', '01121641099', '71b6b81828842bfc7502d85f9a694a339ce4c648', '2021-04-20 14:32:15.358244', '0'),
('Eu Jin', 'tej9812@gmail.com', '0169500480', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-05-13 10:14:56.778587', '0'),
('hfhfuf', 'gycyf@gmail.com', '8682838382', '8f0ccb9c1e4660a66f1eaf84491da0b05031e06d', '2021-05-14 12:04:11.393076', '2736'),
('Tam Jin An', 'jinan9898@gmail.com', '01156405644', '7ce0359f12857f2a90c7de465f40a95f01cb5da9', '2021-05-13 15:56:16.712080', '0'),
('uufufuf', 'ydydyfyf@gmail.com', '35383', '28022d9e98a434644e06098db44ce2060aef88d8', '2021-05-14 12:04:30.443506', '2781'),
('Chong Jing Ern', 'chongjingern@gmail.com', '0164422048', 'c6b3ef3e862f119b901251dbe08e2ef385d2b4e3', '2021-05-14 12:48:03.774066', '0'),
('Abdul', 'abdalhafiz98@gmail.com', '0149525411', 'b80a9aed8af17118e51d4d0c2d7872ae26e2109e', '2021-05-14 12:56:21.998470', '0'),
('Test', 'abdhafiz1322@gmail.com', '60149525411', 'ab7a614854d2ef5ee9d9cc30e6f2bdcd19fe49ea', '2021-05-14 12:58:10.819133', '0'),
('test', 'mobir57062@firmjam.com', '12312312312', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-05-14 14:08:11.046313', '4177'),
('ken', 'chengyihken1998@gmail.com', '0123456789', 'e7e9a28bdcd567fd84a27d3935ecd0d8a11802ec', '2021-05-14 14:46:26.713195', '0'),
('Tee Siok Qian', 'siokqian98@gmail.com', '0169084850', '12f3a95e508f6f5eee2feadb04250c169a29e83a', '2021-05-15 03:47:54.492954', '0'),
('Teng Li Jian', 'tenglijian980806@gmail.com', '0193180638', 'd0c123662e5865833f6c7b854427496365340a78', '2021-05-15 08:21:55.043183', '0'),
('yilany ', 'yilanybong98@gmail.com', '168958163', '15e4c3dbcda66b98979af773756ddd83f5d4ddc5', '2021-05-17 14:04:35.102106', '0'),
('Muhd Amirul', 'myrulmyrul98@gmail.com', '0128649516', '59dab9e5e11f150a1dc9f87e80e41011592b27e2', '2021-05-18 18:54:18.198390', '0');

-- --------------------------------------------------------

--
-- Table structure for table `USERDAILYDATA`
--

CREATE TABLE `USERDAILYDATA` (
  `EMAIL` varchar(30) NOT NULL,
  `FOODNAME` varchar(30) NOT NULL,
  `QUANTITY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `USERDAILYDATA`
--

INSERT INTO `USERDAILYDATA` (`EMAIL`, `FOODNAME`, `QUANTITY`) VALUES
('jinan9898@gmail.com', 'Cereals', '1'),
('teocheeyuan1998@gmail.com', 'Fruits', '1'),
('teocheeyuan1998@gmail.com', 'Meat, Fish, Eggs', '1'),
('teocheeyuan1998@gmail.com', 'Milk & Substitutes', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BMIINFO`
--
ALTER TABLE `BMIINFO`
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `FOOD`
--
ALTER TABLE `FOOD`
  ADD UNIQUE KEY `NAME` (`NAME`);

--
-- Indexes for table `FOODLIST`
--
ALTER TABLE `FOODLIST`
  ADD UNIQUE KEY `FOODNAME` (`FOODNAME`);

--
-- Indexes for table `USER`
--
ALTER TABLE `USER`
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD UNIQUE KEY `PHONE` (`PHONE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
