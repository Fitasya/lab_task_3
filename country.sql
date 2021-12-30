-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 05:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country`
--

-- --------------------------------------------------------

--
-- Table structure for table `countrylist`
--

CREATE TABLE `countrylist` (
  `idcountry` int(11) NOT NULL,
  `countryname` varchar(100) NOT NULL,
  `ruler` varchar(200) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `population` varchar(50) NOT NULL,
  `worldshare` varchar(10) NOT NULL,
  `landarea` varchar(50) NOT NULL,
  `divide` varchar(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `isocode` varchar(10) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countrylist`
--

INSERT INTO `countrylist` (`idcountry`, `countryname`, `ruler`, `capital`, `population`, `worldshare`, `landarea`, `divide`, `currency`, `isocode`, `region`) VALUES
(1, 'Argentina', 'President – Alberto Fernández', 'Buenos Aires', '45195774', '0.58%', '2736690', 'Global South', 'Argentine peso', ' ARS', 'South/Latin America	'),
(2, 'Bangladesh', 'President – Abdul Hamid	& Prime Minister – Sheikh Hasina', 'Dhaka', '164689383', '2.11%', '130170', 'Global South', 'Bangladeshi taka', 'BDT', 'Asia & Pacific'),
(3, 'Canada', 'Queen – Elizabeth II & Governor General – Mary Simon & Prime Minister – Justin Trudeau', 'Ottawa', '37742154', '0.48%', '9093510', 'Global North', 'Canadian dollar', 'CAD', 'North America'),
(4, 'Denmark', 'Queen – Margrethe II & Prime Minister – Mette Frederiksen', 'Copenhagen', '5792202', '0.07%', '42430', 'Global North', 'Danish krone', 'DKK', 'Europe'),
(5, 'Egypt', 'President – Abdel Fattah el-Sisi & Prime Minister – Mostafa Madbouly', 'Cairo', '102334404', '1.31%', '995450', 'Global South', 'Egyptian pound', 'EGP', 'Middle east'),
(6, 'Finland', 'President – Sauli Niinistö & Prime Minister – Sanna Marin', 'Helsinki', '5540720', '0.07%', '303890', 'Global North', 'Euro', 'EUR', 'Europe'),
(7, 'Germany', 'President – Frank-Walter Steinmeier & Chancellor – Olaf Scholz', 'Berlin', '83783942', '1.07%', '348560', 'Global North', 'Euro', 'EUR', 'Europe'),
(8, 'Hungary', 'President – János Áder & Prime Minister – Viktor Orbán', 'Budapest', '9660351', '0.12%', '90530', 'Global North', 'Hungarian forint', 'HUF', 'Europe'),
(9, 'Iceland', 'President – Guðni Th. Jóhannesson & Prime Minister – Katrín Jakobsdóttir', 'Reykjavik', '341243', '0.00%', '100250', 'Global North', 'Icelandic króna', 'ISK', 'Europe'),
(10, 'Japan', 'Emperor – Naruhito & Prime Minister – Fumio Kishida', 'Tokyo', '126476461', '1.62%', '364555', 'Global North', 'Japanese yen', 'JPY', 'Asia & Pacific');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countrylist`
--
ALTER TABLE `countrylist`
  ADD PRIMARY KEY (`idcountry`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countrylist`
--
ALTER TABLE `countrylist`
  MODIFY `idcountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
