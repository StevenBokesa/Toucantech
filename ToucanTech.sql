-- phpMyAdmin SQL Dump
-- version 4.6.5.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2017 at 11:23 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ToucanTech`
--

-- --------------------------------------------------------

--
-- Table structure for table `MEMBERS`
--

CREATE TABLE `MEMBERS` (
  `MEM_ID` int(10) NOT NULL,
  `MEM_NAME` varchar(100) NOT NULL,
  `MEM_EMAIL_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MEMBERS`
--

INSERT INTO `MEMBERS` (`MEM_ID`, `MEM_NAME`, `MEM_EMAIL_ADDRESS`) VALUES
(1, 'Stephen', 'stevennwan@yahoo.com'),
(2, 'Tenacia', 'teciathompson@gmail.com'),
(3, 'Joe', 'joe.bokesa@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `SCHOOL`
--

CREATE TABLE `SCHOOL` (
  `SCH_ID` int(10) NOT NULL,
  `SCH_NAME` varchar(100) NOT NULL,
  `MEM_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHOOL`
--

INSERT INTO `SCHOOL` (`SCH_ID`, `SCH_NAME`, `MEM_ID`) VALUES
(1, 'School A', 1),
(4, 'School B', 3),
(5, 'School C', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MEMBERS`
--
ALTER TABLE `MEMBERS`
  ADD PRIMARY KEY (`MEM_ID`);

--
-- Indexes for table `SCHOOL`
--
ALTER TABLE `SCHOOL`
  ADD PRIMARY KEY (`SCH_ID`),
  ADD KEY `INDEX` (`MEM_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MEMBERS`
--
ALTER TABLE `MEMBERS`
  MODIFY `MEM_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `SCHOOL`
--
ALTER TABLE `SCHOOL`
  MODIFY `SCH_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `SCHOOL`
--
ALTER TABLE `SCHOOL`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`MEM_ID`) REFERENCES `MEMBERS` (`MEM_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
