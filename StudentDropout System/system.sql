-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2022 at 08:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--
CREATE DATABASE IF NOT EXISTS `system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `system`;

-- --------------------------------------------------------

--
-- Table structure for table `atten`
--

CREATE TABLE `atten` (
  `studentJL` varchar(20) NOT NULL,
  `daysnotattendance` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atten`
--

INSERT INTO `atten` (`studentJL`, `daysnotattendance`) VALUES
('1', 1),
('3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coursedays`
--

CREATE TABLE `coursedays` (
  `Totaldays` int(3) NOT NULL,
  `CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursedays`
--

INSERT INTO `coursedays` (`Totaldays`, `CourseID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `studentJL` varchar(20) NOT NULL,
  `Name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`studentJL`, `Name`) VALUES
('1', 'supun'),
('3', 'janidi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atten`
--
ALTER TABLE `atten`
  ADD KEY `studentJL` (`studentJL`);

--
-- Indexes for table `coursedays`
--
ALTER TABLE `coursedays`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`studentJL`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atten`
--
ALTER TABLE `atten`
  ADD CONSTRAINT `atten_ibfk_1` FOREIGN KEY (`studentJL`) REFERENCES `detail` (`studentJL`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
