-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2014 at 05:25 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admin`;

-- --------------------------------------------------------

--
-- Table structure for table `final`
--

CREATE TABLE IF NOT EXISTS `final` (
  `Name` text NOT NULL,
  `User` int(10) unsigned DEFAULT NULL,
  `Marks` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `final`
--

INSERT INTO `final` (`Name`, `User`, `Marks`) VALUES
('Jaipuneet Singh', 1, 4),
('Jaipuneet Singh', 1, 7),
('Jaipuneet Singh', 1, 9),
('Jaipuneet Singh', 1, 11),
('Jaipuneet Singh', 1, 15),
('Jaipuneet Singh', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Fathers_Name` text NOT NULL,
  `Mothers_Name` text NOT NULL,
  `MobileNumber` double NOT NULL,
  `Address` text NOT NULL,
  `City` text,
  `Qualification` text NOT NULL,
  `User` int(11) NOT NULL,
  PRIMARY KEY (`User`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`First_Name`, `Last_Name`, `Fathers_Name`, `Mothers_Name`, `MobileNumber`, `Address`, `City`, `Qualification`, `User`) VALUES
('Jaipuneet', 'Singh', 'Inder Mohan Singh', 'Satinder Kaur', 9915406636, 'B-17,MCH-813,Near ICICI Bank, Sutheri RoadHoshiarpur', 'Hoshiarpur ', 'B.Tech(computer science)', 1),
('Satinder', 'Kaur', 'Satnam Singh', 'Harjinder Kaur', 9878875111, 'H.No.190,Sec 19A Chandigarh', 'Chandigarh', 'B.Tech', 2);

-- --------------------------------------------------------

--
-- Table structure for table `project1`
--

CREATE TABLE IF NOT EXISTS `project1` (
  `S.No.` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `User` varchar(45) NOT NULL,
  `Pass` varchar(45) NOT NULL,
  PRIMARY KEY (`S.No.`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `project1`
--

INSERT INTO `project1` (`S.No.`, `User`, `Pass`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_ans` int(10) unsigned NOT NULL,
  `marks` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`user`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_ans`, `marks`) VALUES
(1, 'Capital of India?', 'Delhi', 'Mumbai', 'Banglore', 'Kolkatta', 1, 2),
(2, 'What is the Capital of Russia?', 'Moscow', 'Tbilisi', 'St.Petersburg', 'Oslo', 1, 2),
(3, 'What is the Capital of Mongolia?', 'Delhi', 'Moscow', 'Ulaan Batar', 'Tel Aviv', 3, 2),
(4, 'What is the capital of Bangladesh?', 'Dhaka', 'Darjelling', 'Chittakong', 'Mysore', 1, 3),
(5, 'What is the Capital of Chile?', 'Rio de Janero', 'Santiago', 'Chicago', 'Port Louis', 2, 3),
(6, 'What is the Capital of Canada?', 'Ottawa', 'Toronto', 'Montreal', 'Vancover', 1, 2),
(7, 'What is the Capital of New Zealand?', 'Pennsylavia', 'moscow', 'canberra', 'auckland', 4, 2),
(8, 'What is the Capital of Afghanistan?', 'Kandhar', 'Kabul', 'Baghdad', 'Islamabad', 2, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
