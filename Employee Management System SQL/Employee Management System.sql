-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 20, 2018 at 01:10 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeemanagement`
--
CREATE DATABASE IF NOT EXISTS `employeemanagement` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employeemanagement`;

-- --------------------------------------------------------

--
-- Table structure for table `empleave`
--

DROP TABLE IF EXISTS `empleave`;
CREATE TABLE IF NOT EXISTS `empleave` (
  `leaveID` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(45) DEFAULT NULL,
  `dName` varchar(45) DEFAULT NULL,
  `sName` varchar(45) DEFAULT NULL,
  `addeddate` varchar(45) DEFAULT NULL,
  `ReasonLeave` varchar(45) DEFAULT NULL,
  `leaveDu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`leaveID`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empleave`
--

INSERT INTO `empleave` (`leaveID`, `eName`, `dName`, `sName`, `addeddate`, `ReasonLeave`, `leaveDu`) VALUES
(1, 'ushadi', 'IT', 'Navod', '', 'headache\r\n	', 'wednesday'),
(2, 'ushadi', 'IT', 'Navod', '', 'headache\r\n	', 'wednesday'),
(3, 'Dulmini', 'SE', 'Udara', '2018-05-08', 'Civil leave\r\n	', 'From wednesday to saturday'),
(4, 'rdfgn', 'rrdfhgv', 'gvbn ', '2018-05-04', '\r\n	ghbn jmn', 'ggggggggfhg'),
(5, 'Haritha', 'CSN', 'Mr.Samantha', '2018-05-22', '\r\n	sick', 'fridat to saturday'),
(6, 'Devshan', 'CS', 'malani', '2018-06-07', 'sneeze\r\n	', 'monday'),
(7, 'Isith', 'CSN', 'Mr.Isuru', '2018-05-09', '\r\n	Study leave', 'Monday,tuesday 8,9'),
(44, 'ush', '', '', '', '\r\n	', ''),
(45, 'ush/', 'IT/', 'navod/', '1997-03-04', '\r\n	nothing\r\n	', 'one'),
(46, 'Navindu', 'IT', 'Udara', '1994-12-02', '\r\n	SICK', 'two day'),
(47, 'navod', 'IT', 'kavindu', '1997-12-04', '\r\n	sick leave', 'three day'),
(48, 'davon', 'IT', 'Dilann', '1997-01-03', '\r\n	sick,vomit', 'one week'),
(49, 'ushaaaaaadi', 'CSN', 'kasun', '2018-07-04', '\r\n	kale wadeema', 'onw week'),
(50, 'gfh', 'CSN/', 'shali/', '2018-05-07', '\r\n	death\r\n	', 'forever');

-- --------------------------------------------------------

--
-- Table structure for table `emploan`
--

DROP TABLE IF EXISTS `emploan`;
CREATE TABLE IF NOT EXISTS `emploan` (
  `loanId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(50) DEFAULT NULL,
  `empDept` varchar(50) DEFAULT NULL,
  `loanAmount` double DEFAULT NULL,
  `interestAmt` double DEFAULT NULL,
  PRIMARY KEY (`loanId`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emploan`
--

INSERT INTO `emploan` (`loanId`, `empName`, `empDept`, `loanAmount`, `interestAmt`) VALUES
(67, 'navod', 'IT', 100000, NULL),
(66, 'navod', 'IT', 100000, NULL),
(65, 'navod', 'IT', 1000000, NULL),
(64, 'navaaaa', 'Eng', 100000, NULL),
(63, 'diaan', 'archi', 400, NULL),
(62, 'diaan', 'Eng', 400, NULL),
(61, 'navod', 'Eng', 20, NULL),
(60, 'navod', 'CSN', 20, NULL),
(59, 'navod', 'IT', 30, NULL),
(58, 'navod', 'IT', 20, NULL),
(57, 'Navod', 'IT', 100000, NULL),
(56, 'navod', 'IT', 100000, NULL),
(55, 'navod', 'CSN', 100000, NULL),
(54, 'navod', 'IT', 100000, NULL),
(53, 'Helani', 'CSN', 5000, NULL),
(43, 'Haritha', 'IT', 10000, NULL),
(44, 'Haritha', 'CSN', 100000, NULL),
(45, 'Ushadi', 'CSN', 20000, NULL),
(46, 'Ushadi', 'IT', 30000, NULL),
(47, 'navod', 'IT', 100000, NULL),
(48, 'gsah', 'sa', 10000, NULL),
(49, 'sas', 'qs', 12, NULL),
(50, 'we', 'we', 3435, NULL),
(51, 'EDES', 'WD', 34, NULL),
(52, 'Helan', 'CS', 200000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empID` varchar(10) NOT NULL,
  `empName` varchar(45) NOT NULL,
  `empDept` varchar(20) NOT NULL,
  `empAddress` varchar(45) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empID`, `empName`, `empDept`, `empAddress`) VALUES
('navodIT1', 'navod', 'IT', 'kosswatte'),
('harithaIT2', 'haritha', 'IT', 'polonnaruwa'),
('ushadiIT3', 'ushadi', 'IT', 'kurunegala'),
('devshanIT4', 'devshan', 'IT', 'kotte'),
('dilaanIT5', 'dilaan', 'IT', 'athurugiriya');

-- --------------------------------------------------------

--
-- Table structure for table `empproject`
--

DROP TABLE IF EXISTS `empproject`;
CREATE TABLE IF NOT EXISTS `empproject` (
  `projectID` int(11) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(45) DEFAULT NULL,
  `Dept` varchar(30) DEFAULT NULL,
  `empID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`projectID`),
  KEY `project_fk` (`empID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empproject`
--

INSERT INTO `empproject` (`projectID`, `Pname`, `Dept`, `empID`) VALUES
(1, 'debshan', 'IT', 'debshanIT'),
(2, 'devshan', 'Construction', 'devshan123'),
(3, 'devshan', 'Construction', 'devshan123'),
(4, 'devshan', 'Construction', 'devshan123');

-- --------------------------------------------------------

--
-- Table structure for table `empsal`
--

DROP TABLE IF EXISTS `empsal`;
CREATE TABLE IF NOT EXISTS `empsal` (
  `salaryID` int(11) NOT NULL AUTO_INCREMENT,
  `empID` varchar(45) DEFAULT NULL,
  `otHrs` int(11) DEFAULT NULL,
  `otRate` double DEFAULT NULL,
  `Bonus` double DEFAULT NULL,
  `ded` double DEFAULT NULL,
  `basicSal` double DEFAULT NULL,
  `netSal` double DEFAULT NULL,
  PRIMARY KEY (`salaryID`),
  KEY `empSal_fk` (`empID`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empsal`
--

INSERT INTO `empsal` (`salaryID`, `empID`, `otHrs`, `otRate`, `Bonus`, `ded`, `basicSal`, `netSal`) VALUES
(27, 'IT17106702', 0, 150, 1000, 200, NULL, NULL),
(26, 'IT17106702', 0, 150, 1000, 200, NULL, NULL),
(25, '234', 0, 34, 45, 34, NULL, NULL),
(24, '1233', 0, 23, 34, 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('haritha', 'haritha123'),
('navod', 'navod123'),
('dilaan', 'dilaan123'),
('ushadi', 'ushadi123'),
('devshan', 'devshan123'),
('eshan', 'eshan123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
