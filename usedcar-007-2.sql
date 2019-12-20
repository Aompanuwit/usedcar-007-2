-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2019 at 12:08 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usedcar-007-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `carType` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(80) NOT NULL,
  `color` varchar(20) NOT NULL,
  `license` varchar(20) NOT NULL,
  `province` varchar(30) NOT NULL,
  `modelYear` varchar(4) NOT NULL,
  `price` int(11) NOT NULL,
  `carpic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `carType`, `brand`, `model`, `color`, `license`, `province`, `modelYear`, `price`, `carpic`) VALUES
(9, 1, 'honda', 'brio', 'ขาว', '2594', 'นครปฐม', '2014', 250000, 'honda1.jpg'),
(12, 2, 'toyota', 'revo', 'ขาว', '4668', 'นครปฐม', '2017', 450000, 'd2.jpg'),
(13, 3, 'toyota', 'commuter', 'ขาว', '7895', 'นครปฐม', '2018', 1200000, 't1.jpg'),
(14, 2, 'nissan', ' navara', 'ส้ม', '4668', 'กรุงเทพ', '2017', 420000, 'b4.jpg'),
(15, 3, 'lexus', 'lexus', 'ดำ', '4568', 'นครปฐม', '2017', 420000, 't4.jpg'),
(16, 3, 'hyundai', 'h1', 'น้ำตาล', '2568', 'นครปฐม', '2018', 1200000, 't3.jpg'),
(17, 2, 'mitsubishi', 'triton', 'ขาว', '8454', 'กรุงเทพ', '2017', 450000, 'b3.jpg'),
(18, 1, 'honda', 'civic', 'ขาว', '7895', 'ราชบุรี', '2015', 1200000, 'honda2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `active`) VALUES
(3, 'Aom', '25d55ad283aa400af464c76d713c07ad', 'panuwit', 'ssdd', 'aom@gmail', 0),
(4, 'tom', '25f9e794323b453885f5181f1b624d0b', 'tomza', 'ssee', 'tom@gmail', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
