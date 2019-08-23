-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2019 at 07:09 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `MSN` int(11) NOT NULL,
  `Harness_Length` float NOT NULL,
  `Gross_Weight` float NOT NULL,
  `Atmospheric_Pressure` float NOT NULL,
  `Room_Temperature` float NOT NULL,
  `Source_Arrival_Time` time NOT NULL,
  `Source_Airport` varchar(15) NOT NULL,
  ` Source_Departure_Time` time NOT NULL,
  `Destination_Airport` varchar(15) NOT NULL,
  `Destination_Arrival_Time` time NOT NULL,
  `Fuel_Capacity_Left` float NOT NULL,
  `Fuel_Capacity_Right` float NOT NULL,
  `Fuel_Quantity_Left` float NOT NULL,
  `Fuel_Quantity_Right` float NOT NULL,
  `Max_Altitude_reached` mediumint(9) NOT NULL,
  `Flight_no` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`MSN`, `Harness_Length`, `Gross_Weight`, `Atmospheric_Pressure`, `Room_Temperature`, `Source_Arrival_Time`, `Source_Airport`, ` Source_Departure_Time`, `Destination_Airport`, `Destination_Arrival_Time`, `Fuel_Capacity_Left`, `Fuel_Capacity_Right`, `Fuel_Quantity_Left`, `Fuel_Quantity_Right`, `Max_Altitude_reached`, `Flight_no`) VALUES
(12344, 36, 103000, 10900, 25, '08:00:00', 'Mumbai', '09:20:00', 'Delhi', '10:53:00', 120000, 120000, 120000, 120000, 36000, 'A310'),
(12345, 35, 83000, 10200, 30, '01:00:00', 'Bangalore', '02:00:00', 'Delhi', '03:30:00', 160000, 160000, 140000, 140000, 36000, 'A320'),
(12346, 37, 103000, 10900, 25, '19:00:00', 'Jaipur', '20:00:00', 'Bangalore', '01:30:00', 190000, 190000, 120000, 120000, 38000, 'A330'),
(12347, 38, 105000, 10900, 25, '20:00:00', 'Mumbai', '23:10:00', 'Kochi', '01:03:30', 170000, 170000, 140000, 140000, 37000, 'A340'),
(12348, 38, 103000, 10900, 30, '18:00:00', 'Jaipur', '20:00:00', 'Bangalore', '03:30:00', 180000, 180000, 140000, 140000, 37000, 'A350');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`MSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
