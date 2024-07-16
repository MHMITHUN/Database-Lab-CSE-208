-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2024 at 08:36 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahamudul_137`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Title` varchar(25) DEFAULT NULL,
  `Offered_Semester` varchar(15) DEFAULT NULL,
  `Course_Code` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_Title`, `Offered_Semester`, `Course_Code`) VALUES
('Database Systems', NULL, 'CSE 207'),
('Computer Networks', NULL, 'CSE 319'),
('Data Communication', NULL, 'CSE 209'),
('System Analysis Design', NULL, 'CSE 317');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` varchar(25) DEFAULT NULL,
  `Short_Code` varchar(5) DEFAULT NULL,
  `Course_Code` varchar(8) DEFAULT NULL,
  `Conduct_Semester` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Short_Code`, `Course_Code`, `Conduct_Semester`) VALUES
('Farha Akhter Munmun', 'FAM', 'CSE 319', 'Summer 2019'),
('Sweety Lima', 'SWL', 'CSE 209', 'Fall 2019-20'),
('Shumi Khatun', 'SKN', 'NULL', 'Summer 2019'),
('Nadia Afrin Ritu', 'NAF', 'CSE 351', 'Spring 2020');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(15) DEFAULT NULL,
  `St_id` int(2) DEFAULT NULL,
  `NID` int(3) DEFAULT NULL,
  `Intake` int(2) DEFAULT NULL,
  `Section` int(2) DEFAULT NULL,
  `CGPA` float DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `St_id`, `NID`, `Intake`, `Section`, `CGPA`, `Age`) VALUES
('Ashraful', 1, 102, 44, 1, 3.3, 21),
('Tonny', 2, 101, 44, 1, 3.5, 22),
('Zakir', 33, 103, 35, 2, 3.98, 23),
('Urmi', 6, 104, 35, 1, 3.96, 24),
('Tonny', 23, 105, 44, 1, 3.5, 25);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
