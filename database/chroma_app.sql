-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 08, 2019 at 01:45 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chroma_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

DROP TABLE IF EXISTS `colours`;
CREATE TABLE IF NOT EXISTS `colours` (
  `colourID` int(11) NOT NULL AUTO_INCREMENT,
  `colourPigment` varchar(100) DEFAULT NULL,
  `colourName` varchar(100) NOT NULL,
  `series` int(11) DEFAULT NULL,
  `productID` int(11) NOT NULL,
  PRIMARY KEY (`colourID`),
  KEY `productID` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consistencies`
--

DROP TABLE IF EXISTS `consistencies`;
CREATE TABLE IF NOT EXISTS `consistencies` (
  `consistencyID` int(11) NOT NULL AUTO_INCREMENT,
  `consistencyName` varchar(100) NOT NULL,
  `consistencyDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`consistencyID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consistencies`
--

INSERT INTO `consistencies` (`consistencyID`, `consistencyName`, `consistencyDescription`) VALUES
(1, 'Heavy body', 'Thick paint consistency that leave heavy brush marks'),
(2, 'Flow body', 'Loose paint consistency for painterly effects'),
(3, 'Craft body', 'Specially design for craft art');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `gradeID` int(11) NOT NULL AUTO_INCREMENT,
  `gradeName` varchar(100) NOT NULL,
  `gradeDescription` varchar(255) NOT NULL,
  PRIMARY KEY (`gradeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`gradeID`, `gradeName`, `gradeDescription`) VALUES
(1, 'Student', 'Non lightfast pigments selected for art students'),
(2, 'One-price Professional', 'Lightfast pigments at a one price for bulk painting'),
(3, 'Professional', 'Lightfast certified pigments organised in series ');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `sessionID` int(10) NOT NULL AUTO_INCREMENT,
  `sessionNumber` varchar(100) NOT NULL,
  `referrer` varchar(100) NOT NULL,
  `ipAddress` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(100) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`sessionID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=646 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`sessionID`, `sessionNumber`, `referrer`, `ipAddress`, `date`, `url`, `userID`) VALUES
(23, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:11:47', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(24, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:11:47', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(25, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:12:23', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(26, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:18:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(27, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:18:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(28, 'ovdrd3defpbnj5jbk0mn435ksg', 'http://localhost/chroma_app/index.html', '::1', '2019-09-05 13:18:31', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(29, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:30:45', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(30, '4rfksnbsj6edeiiqv3rrpjrgfi', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:30:45', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(31, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:32:13', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(32, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:32:13', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(33, 'cgrg2oudpka0ula6ej1c5s7qt8', '', '::1', '2019-09-06 06:36:35', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(34, 'cgrg2oudpka0ula6ej1c5s7qt8', '', '::1', '2019-09-06 06:36:35', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(35, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:47:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(36, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 06:47:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(37, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:14:02', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(38, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:14:02', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(39, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:14:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(40, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:14:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(41, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(42, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(43, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(44, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:11', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(45, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(46, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(47, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:13', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(48, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:13', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(49, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:18', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(50, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:16:18', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(51, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(52, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(53, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:19', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(54, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:19', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(55, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(56, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(57, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(58, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(59, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:26', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(60, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:26', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(61, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:27', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(62, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:27', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(63, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:28', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(64, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:17:28', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(65, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:21:13', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(66, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:21:13', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(67, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:22:48', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(68, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:23:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(69, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:23:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(70, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:23:27', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(71, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:23:27', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(72, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:26:46', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(73, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:26:46', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(74, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:27:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(75, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:27:30', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(76, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:29:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(77, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:29:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(78, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:31:23', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(79, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:31:23', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(80, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:42:05', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(81, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:42:05', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(82, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:43:56', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(83, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:43:56', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(84, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(85, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(86, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:18', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(87, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:18', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(88, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(89, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:44:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(90, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:21', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(91, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:21', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(92, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:25', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(93, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:25', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(94, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(95, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:45:30', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(96, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:59:07', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(97, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 07:59:07', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(98, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:01:53', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(99, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:01:53', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(100, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:02:47', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(101, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:02:47', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(102, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:02:56', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(103, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:02:56', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(104, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:03:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(105, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:03:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(106, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:03:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(107, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:03:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(108, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:27:01', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(109, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:27:01', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(110, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:28:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(111, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:28:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(112, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:29:43', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(113, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:29:43', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(114, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:30:39', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(115, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:30:39', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(116, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:25', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(117, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:25', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(118, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:47', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(119, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:47', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(120, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:52', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(121, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:52', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(122, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:58', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(123, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:33:58', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(124, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(125, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(126, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(127, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(128, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(129, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:34:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(130, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:35:52', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(131, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:35:52', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(132, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:02', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(133, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:02', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(134, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:07', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(135, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:07', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(136, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(137, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:36:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(138, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(139, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(140, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(141, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(142, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(143, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(144, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:27', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(145, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:27', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(146, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(147, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:40:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(148, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(149, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(150, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:13', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(151, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:13', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(152, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(153, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(154, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:20', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(155, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:41:20', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(156, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:01', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(157, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:01', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(158, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(159, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(160, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:11', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(161, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:11', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(162, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(163, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(164, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:18', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(165, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:18', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(166, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:19', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(167, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:19', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(168, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:25', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(169, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:25', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(170, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:26', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(171, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:26', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(172, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:35', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(173, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:35', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(174, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:54', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(175, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:42:54', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(176, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:00', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(177, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:00', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(178, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(179, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(180, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:14', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(181, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:14', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(182, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:19', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(183, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:19', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(184, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(185, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(186, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:23', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(187, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:23', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(188, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(189, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(190, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:28', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(191, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:28', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(192, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:29', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(193, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:29', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(194, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:29', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(195, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:29', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(196, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(197, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:43:30', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(198, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:44:51', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(199, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:44:51', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(200, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:45:21', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(201, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:45:21', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(202, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:46:23', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(203, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:46:23', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(204, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:47:01', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(205, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:47:01', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(206, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:32', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(207, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:32', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(208, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:41', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(209, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:41', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(210, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:46', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(211, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 08:57:46', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(212, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:00:56', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(213, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:00:56', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(214, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:01:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(215, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:01:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(216, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:01:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(217, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:01:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(218, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:44', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(219, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:44', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(220, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:53', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(221, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:53', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(222, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:54', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(223, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:03:54', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(224, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(225, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(226, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(227, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(228, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(229, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:04:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(230, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(231, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(232, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:16', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(233, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:16', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(234, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(235, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(236, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:27', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(237, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:19:27', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(238, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:20:44', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(239, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:20:44', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(240, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:20:53', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(241, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:20:53', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(242, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(243, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(244, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(245, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(246, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:16', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(247, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:16', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(248, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:20', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(249, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:20', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(250, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:25', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(251, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:25', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(252, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:29', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(253, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(254, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:36', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(255, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:21:36', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(256, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(257, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(258, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(259, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(260, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(261, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(262, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:29', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(263, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:29', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(264, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(265, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(266, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:40', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(267, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:40', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(268, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:44', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(269, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:44', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(270, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:47', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(271, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:25:47', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(272, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(273, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:34', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(274, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:42', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(275, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:42', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(276, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:48', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(277, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:48', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(278, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:57', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(279, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:26:57', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(280, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:02', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(281, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:02', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(282, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(283, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(284, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(285, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:27:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(286, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:38:33', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(287, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:38:33', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(288, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:39:50', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(289, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:39:50', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(290, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:39:53', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(291, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:39:53', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(292, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:40:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(293, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:40:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(294, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:42:37', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(295, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:42:37', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(296, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:45:49', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(297, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:45:49', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(298, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:46:23', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(299, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:46:23', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(300, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:46:31', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(301, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:46:31', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(302, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:47:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(303, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:47:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(304, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:47:22', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(305, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:47:22', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(306, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(307, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(308, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(309, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(310, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(311, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(312, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(313, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(314, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:31', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(315, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:48:31', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(316, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(317, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(318, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(319, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(320, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:18', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(321, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:18', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(322, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL);
INSERT INTO `logs` (`sessionID`, `sessionNumber`, `referrer`, `ipAddress`, `date`, `url`, `userID`) VALUES
(323, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:49:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(324, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(325, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(326, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(327, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(328, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:16', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(329, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:16', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(330, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:31', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(331, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:31', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(332, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:37', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(333, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:37', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(334, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:42', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(335, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:42', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(336, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:48', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(337, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:48', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(338, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:50', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(339, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:50', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(340, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:51', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(341, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:51', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(342, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:58', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(343, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:58', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(344, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:59', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(345, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:50:59', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(346, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(347, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(348, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:31', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(349, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:31', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(350, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:37', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(351, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:37', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(352, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:41', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(353, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:41', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(354, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:46', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(355, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:46', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(356, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:52', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(357, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:51:52', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(358, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(359, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(360, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:29', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(361, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:29', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(362, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:33', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(363, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:33', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(364, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:41', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(365, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:41', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(366, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:46', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(367, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:52:46', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(368, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(369, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(370, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:11', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(371, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:11', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(372, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(373, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(374, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:19', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(375, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:19', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(376, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(377, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:24', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(378, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:30', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(379, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(380, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:37', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(381, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:37', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(382, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:44', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(383, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:44', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(384, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:48', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(385, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:48', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(386, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:53', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(387, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:54:53', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(388, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(389, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(390, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(391, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(392, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:16', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(393, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:16', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(394, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:20', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(395, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:20', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(396, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:23', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(397, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:23', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(398, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:26', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(399, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:26', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(400, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:30', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(401, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:55:30', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(402, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:58:50', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(403, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:58:50', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(404, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:58:56', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(405, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:58:56', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(406, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:58:59', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(407, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:00', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(408, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(409, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(410, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(411, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(412, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(413, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 09:59:24', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(414, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 10:29:14', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(415, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 10:29:14', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(416, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 10:31:33', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(417, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 10:31:48', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(418, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 10:31:49', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(419, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 11:49:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(420, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 11:49:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(421, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:02:47', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(422, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:02:47', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(423, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:05:11', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(424, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:05:11', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(425, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:12:58', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(426, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:12:58', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(427, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:20:04', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(428, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:20:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(429, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:20:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(430, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:20:20', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(431, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:29:18', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(432, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:29:18', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(433, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:31:01', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(434, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:31:01', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(435, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:31:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(436, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:31:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(437, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:47:26', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(438, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:47:26', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(439, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:47:46', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(440, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:50:38', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(441, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:50:40', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(442, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:50:40', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(443, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:52:32', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(444, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:52:32', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(445, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:52:41', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(446, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:56:33', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(447, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:56:33', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(448, 'cgrg2oudpka0ula6ej1c5s7qt8', 'http://localhost/chroma_app/index.html', '::1', '2019-09-06 13:56:43', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(449, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:38:03', '/chroma_app/php/model/read.php?req_func=addUser', 31),
(450, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:39:03', '/chroma_app/php/model/read.php?req_func=addUser', 31),
(451, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:39:57', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(452, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:39:57', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(453, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:40:35', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(454, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:40:35', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(455, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:40:52', '/chroma_app/php/model/read.php?req_func=addUser', 31),
(456, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:50:19', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(457, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:50:19', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(458, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:50:38', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(459, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:50:38', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(460, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:38', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(461, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:38', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(462, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:52', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(463, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:52', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(464, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:59', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(465, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:52:59', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(466, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:59:36', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(467, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:59:36', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(468, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:59:52', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(469, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 03:59:52', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(470, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:00:15', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(471, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:00:15', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(472, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:01:08', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(473, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:01:08', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(474, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:01:50', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(475, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:01:50', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(476, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:06:43', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(477, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:06:43', '/chroma_app/php/model/read.php?req_func=readRoles', 31),
(478, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:07:39', '/chroma_app/php/model/read.php?req_func=readGrades', 31),
(479, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:15:33', '/chroma_app/php/model/read.php?req_func=readRoles', 34),
(480, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:15:33', '/chroma_app/php/model/read.php?req_func=readGrades', 34),
(481, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:16:06', '/chroma_app/php/model/read.php?req_func=readRoles', 34),
(482, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:16:06', '/chroma_app/php/model/read.php?req_func=readGrades', 34),
(483, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:26:09', '/chroma_app/php/model/read.php?req_func=readRoles', 34),
(484, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:26:09', '/chroma_app/php/model/read.php?req_func=readGrades', 34),
(485, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:29:49', '/chroma_app/php/model/read.php?req_func=readRoles', 34),
(486, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:29:49', '/chroma_app/php/model/read.php?req_func=readGrades', 34),
(487, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:31:05', '/chroma_app/php/model/read.php?req_func=readRoles', 34),
(488, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:31:05', '/chroma_app/php/model/read.php?req_func=readGrades', 34),
(489, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:34:57', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(490, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:34:57', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(491, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:35:10', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(492, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:35:10', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(493, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:36:08', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(494, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:36:08', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(495, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:38:08', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(496, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:38:08', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(497, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:38:17', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(498, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 04:38:17', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(499, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 08:04:33', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(500, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 08:04:33', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(501, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 08:05:49', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(502, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 08:05:49', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(503, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:12:49', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(504, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:15:58', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(505, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:21:47', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(506, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:22:29', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(507, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:22:57', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(508, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:23:47', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(509, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:24:37', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(510, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:36:59', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(511, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:37:44', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(512, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:40:35', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(513, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:40:35', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(514, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:29', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(515, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:29', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(516, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:52', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(517, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:52', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(518, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:56', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(519, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:41:56', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(520, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:48:28', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(521, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:48:28', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(522, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:49:09', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(523, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:49:09', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(524, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 09:49:24', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(525, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:02:21', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(526, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:02:21', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(527, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:03:47', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(528, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:03:47', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(529, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:03:47', '/chroma_app/php/model/read.php?req_func=test', 35),
(530, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:05:12', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(531, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:07:18', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(532, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:08:13', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(533, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:08:13', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(534, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:08:33', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(535, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:09:13', '/chroma_app/php/model/read.php?req_func=readGrades', 35),
(536, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:09:13', '/chroma_app/php/model/read.php?req_func=readRoles', 35),
(537, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:09:27', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(538, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:10:49', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(539, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:11:00', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(540, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:12:16', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(541, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 10:12:27', '/chroma_app/php/model/read.php?req_func=addUser', 35),
(542, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:14:03', '/chroma_app/php/model/read.php?req_func=addUser', 114),
(543, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:14:22', '/chroma_app/php/model/read.php?req_func=readRoles', 115),
(544, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:14:22', '/chroma_app/php/model/read.php?req_func=readGrades', 115),
(545, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:14:59', '/chroma_app/php/model/read.php?req_func=readGrades', 115),
(546, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:14:59', '/chroma_app/php/model/read.php?req_func=readRoles', 115),
(547, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(548, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(549, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:14', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(550, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:14', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(551, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(552, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:26:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(553, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:31:58', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(554, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:31:58', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(555, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:32:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(556, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:32:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(557, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:33:54', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(558, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:33:54', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(559, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:34:31', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(560, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:34:31', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(561, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:35:08', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(562, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 11:35:42', '/chroma_app/php/model/read.php?req_func=addUser', 117),
(563, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:37:58', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(564, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:37:58', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(565, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:37:58', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(566, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:38:57', '/chroma_app/php/model/read.php?req_func=addUser', NULL),
(567, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:39:07', '/chroma_app/php/model/read.php?req_func=readGrades', 118),
(568, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:39:07', '/chroma_app/php/model/read.php?req_func=readRoles', 118),
(569, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:41:08', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(570, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:41:08', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(571, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:42:06', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(572, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:42:06', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(573, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:45:16', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(574, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:45:16', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(575, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:45:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(576, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:03', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(577, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:03', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(578, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:03', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(579, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:36', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(580, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:36', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(581, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:47:36', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(582, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:54:15', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(583, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:54:15', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(584, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:54:55', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(585, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:54:55', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(586, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:54:55', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(587, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:56:34', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(588, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:56:35', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(589, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:56:35', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(590, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:14', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(591, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:14', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(592, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:14', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(593, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:45', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(594, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:45', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(595, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:57:45', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(596, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(597, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(598, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:17', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(599, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:36', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(600, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:36', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(601, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:36', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(602, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:57', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(603, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:57', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(604, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:58:57', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(605, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(606, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(607, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:04', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(608, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:09', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(609, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:09', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(610, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:09', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(611, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:27', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(612, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:27', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(613, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:27', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(614, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:32', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(615, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:32', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(616, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:32', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(617, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:40', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(618, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:40', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(619, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 12:59:40', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(620, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:00:17', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(621, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:00:17', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(622, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:00:17', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL),
(623, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:04:10', '/chroma_app/php/model/read.php?req_func=readRoles', NULL);
INSERT INTO `logs` (`sessionID`, `sessionNumber`, `referrer`, `ipAddress`, `date`, `url`, `userID`) VALUES
(624, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:04:10', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(625, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:08:26', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(626, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:08:26', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(627, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:09:41', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(628, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:09:41', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(629, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:11:04', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(630, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:11:04', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(631, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:17:12', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(632, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:17:12', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(633, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:19:36', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(634, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:19:36', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(635, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:19', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(636, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:19', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(637, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:35', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(638, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:35', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(639, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:37', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(640, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:21:37', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(641, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:22:21', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(642, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:22:21', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(643, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:24:50', '/chroma_app/php/model/read.php?req_func=readGrades', NULL),
(644, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:24:50', '/chroma_app/php/model/read.php?req_func=readRoles', NULL),
(645, 'gep5nmsook4h5qpodgpre7bnl3', 'http://localhost/chroma_app/index.html', '::1', '2019-09-08 13:24:50', '/chroma_app/php/model/read.php?req_func=getUserInfo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturerID` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturerName` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`manufacturerID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturerID`, `manufacturerName`, `country`, `state`, `address`, `phoneNumber`, `email`) VALUES
(1, 'Chroma Australia', 'Australia', 'NSW', '17 Mundowi Road', '61 2 9457 9922', 'marketing@chromaonline.com');

-- --------------------------------------------------------

--
-- Table structure for table `mediums`
--

DROP TABLE IF EXISTS `mediums`;
CREATE TABLE IF NOT EXISTS `mediums` (
  `mediumID` int(11) NOT NULL AUTO_INCREMENT,
  `mediumName` varchar(100) NOT NULL,
  `mediumDescription` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`mediumID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mediums`
--

INSERT INTO `mediums` (`mediumID`, `mediumName`, `mediumDescription`) VALUES
(1, 'Acrylic paint', 'All acrylic paint products not including acrylic ink or gouache '),
(2, 'Oil Paint', 'Oil paint products'),
(3, 'Inks paint', 'Regardless of the origin '),
(4, 'Gouache paint', 'Regardless of the origin '),
(5, 'Watercolour paint', 'Regardless of the origin');

-- --------------------------------------------------------

--
-- Table structure for table `productprices`
--

DROP TABLE IF EXISTS `productprices`;
CREATE TABLE IF NOT EXISTS `productprices` (
  `productPriceID` int(11) NOT NULL AUTO_INCREMENT,
  `productID` int(11) NOT NULL,
  `storeID` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`productPriceID`),
  KEY `productID` (`productID`),
  KEY `storeID` (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) NOT NULL,
  `colourRange` int(11) NOT NULL,
  `gradeID` int(11) NOT NULL,
  `consistencyID` int(11) NOT NULL,
  `productDescription` varchar(255) DEFAULT NULL,
  `manufacturerID` int(11) NOT NULL,
  `mediumID` int(11) NOT NULL,
  PRIMARY KEY (`productID`),
  KEY `gradeID` (`gradeID`),
  KEY `consistencyID` (`consistencyID`),
  KEY `manufacturerID` (`manufacturerID`),
  KEY `mediumID` (`mediumID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `colourRange`, `gradeID`, `consistencyID`, `productDescription`, `manufacturerID`, `mediumID`) VALUES
(1, 'Atelier A2', 20, 2, 1, 'The same body and consistency as Atelier Interactive Acrylic, with excellent brush-mark retention for oil paint-like techniques.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) NOT NULL,
  `roleDescription` varchar(100) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleID`, `roleName`, `roleDescription`) VALUES
(1, 'Admin', 'Full credentials'),
(2, 'Marketing', 'Can access restricted tools');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `storeID` int(11) NOT NULL AUTO_INCREMENT,
  `storeName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(100) DEFAULT NULL,
  `websiteURL` varchar(100) NOT NULL,
  PRIMARY KEY (`storeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`storeID`, `storeName`, `email`, `phoneNumber`, `websiteURL`) VALUES
(1, 'Eckersley\'s', NULL, '1800 701 602', 'https://www.eckersleys.com.au/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `userSurname` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `userSurname`, `role`, `email`, `password`, `dateCreated`, `mobile`) VALUES
(4, 'Hector', 'Moya', 1, 'nokure@gmail.com', '1384', '2019-09-05 13:12:23', '431194237'),
(5, 'Hector', 'Moya', 2, 'nokure@gmail.com', '1384', '2019-09-05 13:18:31', '431194237'),
(6, 'alicia', 'gazmuri', 2, 'alicia@gmail.com', '1384', '2019-09-06 10:31:33', '1233344'),
(7, 'alicia', 'gazmuri', 2, 'alicia@gmail.com', '1384', '2019-09-06 10:31:48', '1233344'),
(8, 'alicia', 'gazmuri', 2, 'alicia@gmail.com', '1384', '2019-09-06 10:31:49', '1233344'),
(9, 'Hector', 'moya', 2, '123', '123', '2019-09-06 11:49:56', 'asdas'),
(10, '', '', 1, '', '', '2019-09-06 13:03:16', ''),
(11, 'algo', 'algo', 1, 'algo', '122', '2019-09-06 13:03:58', '431194237'),
(12, 'alicia', 'asl', 1, 'qwasd', '123', '2019-09-06 13:05:27', '123'),
(13, 'algo', 'algo', 2, 'ann', 'ann', '2019-09-06 13:13:37', 'ann'),
(14, 'algo', 'algo', 2, 'ann', 'ann', '2019-09-06 13:20:04', 'ann'),
(15, 'as', 'asd', 2, 'asd', '123', '2019-09-06 13:20:20', 'sda'),
(16, 'hector', 'Moya', 2, 'nokure@gmail.com', '1384', '2019-09-06 13:47:46', '431194237'),
(17, 'hector', 'Moya', 2, 'nokure@gmail.com', '1384', '2019-09-06 13:50:38', '431194237'),
(18, 'hector', 'Moya', 2, 'nokure@gmail.com', '1384', '2019-09-06 13:50:40', '431194237'),
(19, 'hector', 'Moya', 2, 'nokure@gmail.com', '1384', '2019-09-06 13:50:40', '431194237'),
(20, 'al', 'al', 1, 'al', 'al', '2019-09-06 13:52:41', 'al'),
(21, 'al', 'al', 1, 'al', 'al', '2019-09-06 13:56:43', 'al'),
(22, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:02:16', 'hola'),
(23, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:06:45', 'hola'),
(24, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:09:34', 'hola'),
(25, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:09:34', 'hola'),
(26, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:09:35', 'hola'),
(27, 'hola', 'hola', 1, 'hola', 'hola', '2019-09-06 14:12:40', 'hola'),
(28, 'hola', 'hola', 1, 'HOLA', '123', '2019-09-08 03:25:08', 'hola'),
(29, 'hola', 'hola', 1, 'HOLA', '123', '2019-09-08 03:29:43', 'hola'),
(30, 'hola', 'hola', 1, 'HOLA', '123', '2019-09-08 03:30:11', 'hola'),
(31, 'hola', 'hola', 1, 'HOLA', '123', '2019-09-08 03:38:03', 'hola'),
(32, 'yo', 'yo', 1, 'HOLA', '123', '2019-09-08 03:39:03', 'hola'),
(33, 'hector', 'moya', 2, '123', '123', '2019-09-08 03:40:52', '123'),
(34, 'ali', 'ali', 1, 'ali', 'ali', '2019-09-08 04:14:59', 'ali'),
(35, 'ali', 'ali', 1, 'ali', 'ali', '2019-09-08 04:26:52', 'ali'),
(102, 'kjsaalasar', 'ji', 2, 'cabro', '123', '2019-09-08 11:05:52', 'cabro'),
(103, 'kjsaalasa', 'ji', 2, 'cabro', '123', '2019-09-08 11:05:55', 'cabro'),
(104, 'kjsaalas', 'ji', 2, 'cabro', '123', '2019-09-08 11:06:00', 'cabro'),
(105, 'kjsaala', 'ji', 2, 'cabro', '123', '2019-09-08 11:06:03', 'cabro'),
(106, 'kjsaal', 'ji', 2, 'cabro', '123', '2019-09-08 11:09:04', 'cabro'),
(107, 'kjsaa', 'ji', 2, 'cabro', '123', '2019-09-08 11:09:07', 'cabro'),
(108, 'kjsa', 'ji', 2, 'cabro', '123', '2019-09-08 11:09:18', 'cabro'),
(109, 'kjs', 'ji', 2, 'cabro', '123', '2019-09-08 11:09:22', 'cabro'),
(110, 'kjs', 'ji', 2, 'cabro', '123', '2019-09-08 11:09:52', 'cabro'),
(111, 'kjs', 'ji', 2, 'cabro', '111', '2019-09-08 11:10:12', 'cabro'),
(112, 'kjs', 'ji', 2, 'cabro', 'sss', '2019-09-08 11:10:52', 'cabro'),
(113, 'kjs', 'ji', 2, 'cabro', 'sss', '2019-09-08 11:11:44', 'cabro'),
(114, 'kja', 'ji', 2, 'cabro', 'sss', '2019-09-08 11:13:56', 'cabro'),
(115, 'kjp', 'ji', 2, 'cabro', 'sss', '2019-09-08 11:14:03', 'cabro'),
(116, 'yu', 'yu', 1, 'yu', 'yu', '2019-09-08 11:35:08', 'yu'),
(117, 'yu', 'yu', 1, 'yu', 'yu', '2019-09-08 11:35:42', 'yu'),
(118, 'alicia456', 'delta', 2, 'asd', '123', '2019-09-08 12:38:57', 'asd');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `colours`
--
ALTER TABLE `colours`
  ADD CONSTRAINT `colours_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `productprices`
--
ALTER TABLE `productprices`
  ADD CONSTRAINT `productprices_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `productprices_ibfk_2` FOREIGN KEY (`storeID`) REFERENCES `store` (`storeID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`gradeID`) REFERENCES `grades` (`gradeID`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturerID`) REFERENCES `manufacturers` (`manufacturerID`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`consistencyID`) REFERENCES `consistencies` (`consistencyID`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`mediumID`) REFERENCES `mediums` (`mediumID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role`) REFERENCES `roles` (`roleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
