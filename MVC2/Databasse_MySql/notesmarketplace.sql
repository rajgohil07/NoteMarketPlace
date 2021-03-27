-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 06:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notesmarketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `countrycode` varchar(10) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryid`, `name`, `countrycode`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'india', '91', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(2, 'Afghanistan', '93', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(3, 'Bangladesh', '880', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(4, 'China', '86', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(5, 'Japan', '81', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(6, 'United States', '1', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `downloadid` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `seller` int(10) UNSIGNED NOT NULL,
  `downloader` int(10) UNSIGNED NOT NULL,
  `sellerhasalloweddownload` bit(1) NOT NULL,
  `attactmentpath` varchar(255) DEFAULT NULL,
  `isattachmentdownloaded` bit(1) NOT NULL,
  `attactmentdownloadeddate` datetime DEFAULT NULL,
  `ispaid` int(11) UNSIGNED NOT NULL,
  `purchasedprice` decimal(10,2) DEFAULT NULL,
  `notetitle` varchar(100) NOT NULL,
  `notecategory` varchar(100) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`downloadid`, `noteid`, `seller`, `downloader`, `sellerhasalloweddownload`, `attactmentpath`, `isattachmentdownloaded`, `attactmentdownloadeddate`, `ispaid`, `purchasedprice`, `notetitle`, `notecategory`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 15, 2, 7, b'1', '../Members/2/15/Attachements/29_1616861049.pdf', b'1', '2021-03-27 21:58:53', 2, '0.00', 'swift', 'Maths', '2021-03-27 21:58:53', 7, '2021-03-27 21:58:53', 7),
(2, 29, 4, 7, b'0', '../Members/4/29/Attachements/47_1616861405.pdf', b'0', '2021-03-27 21:58:59', 1, '83.32', 'secret of space', 'Chemistry', '2021-03-27 21:58:59', 7, '2021-03-27 21:58:59', 7),
(3, 25, 4, 7, b'1', '../Members/4/25/Attachements/40_1616861331.pdf', b'1', '2021-03-27 21:59:16', 2, '0.00', 'secret of secret', 'IT', '2021-03-27 21:59:16', 7, '2021-03-27 21:59:16', 7),
(4, 25, 4, 7, b'1', '../Members/4/25/Attachements/41_1616861331.pdf', b'1', '2021-03-27 21:59:16', 2, '0.00', 'secret of secret', 'IT', '2021-03-27 21:59:16', 7, '2021-03-27 21:59:16', 7),
(5, 26, 4, 7, b'1', '../Members/4/26/Attachements/42_1616861332.pdf', b'1', '2021-03-27 21:59:24', 2, '0.00', 'secret of science', 'IT', '2021-03-27 21:59:24', 7, '2021-03-27 21:59:24', 7),
(6, 26, 4, 7, b'1', '../Members/4/26/Attachements/43_1616861332.pdf', b'1', '2021-03-27 21:59:24', 2, '0.00', 'secret of science', 'IT', '2021-03-27 21:59:24', 7, '2021-03-27 21:59:24', 7),
(7, 40, 6, 7, b'0', '../Members/6/40/Attachements/70_1616861692.pdf', b'0', '2021-03-27 21:59:35', 1, '21.82', 'fullter fullc course', 'MBA', '2021-03-27 21:59:35', 7, '2021-03-27 21:59:35', 7),
(8, 11, 1, 7, b'0', '../Members/1/11/Attachements/19_1616860808.pdf', b'0', '2021-03-27 21:59:58', 1, '389.38', 'JAva Limited Edition', 'Chemistry', '2021-03-27 21:59:58', 7, '2021-03-27 21:59:58', 7),
(9, 11, 1, 7, b'0', '../Members/1/11/Attachements/20_1616860808.pdf', b'0', '2021-03-27 21:59:58', 1, '389.38', 'JAva Limited Edition', 'Chemistry', '2021-03-27 21:59:58', 7, '2021-03-27 21:59:58', 7),
(10, 11, 1, 7, b'0', '../Members/1/11/Attachements/21_1616860808.pdf', b'0', '2021-03-27 21:59:58', 1, '389.38', 'JAva Limited Edition', 'Chemistry', '2021-03-27 21:59:58', 7, '2021-03-27 21:59:58', 7),
(11, 13, 1, 7, b'1', '../Members/1/13/Attachements/25_1616860810.pdf', b'0', '2021-03-27 22:00:17', 1, '389.38', 'machine Limited Edition', 'Chemistry', '2021-03-27 22:00:17', 7, '2021-03-27 22:00:17', 7),
(12, 13, 1, 7, b'1', '../Members/1/13/Attachements/26_1616860810.pdf', b'0', '2021-03-27 22:00:17', 1, '389.38', 'machine Limited Edition', 'Chemistry', '2021-03-27 22:00:17', 7, '2021-03-27 22:00:17', 7),
(13, 13, 1, 7, b'1', '../Members/1/13/Attachements/27_1616860810.pdf', b'0', '2021-03-27 22:00:17', 1, '389.38', 'machine Limited Edition', 'Chemistry', '2021-03-27 22:00:17', 7, '2021-03-27 22:00:17', 7),
(14, 1, 1, 5, b'0', '../Members/1/1/Attachements/1_1616860591.pdf', b'0', '2021-03-27 22:00:53', 1, '217.32', 'AI', 'IT', '2021-03-27 22:00:53', 5, '2021-03-27 22:00:53', 5),
(15, 1, 1, 5, b'0', '../Members/1/1/Attachements/2_1616860591.pdf', b'0', '2021-03-27 22:00:53', 1, '217.32', 'AI', 'IT', '2021-03-27 22:00:53', 5, '2021-03-27 22:00:53', 5),
(16, 2, 1, 5, b'0', '../Members/1/2/Attachements/3_1616860593.pdf', b'0', '2021-03-27 22:01:11', 1, '217.32', 'the king', 'IT', '2021-03-27 22:01:11', 5, '2021-03-27 22:01:11', 5),
(17, 2, 1, 5, b'0', '../Members/1/2/Attachements/4_1616860593.pdf', b'0', '2021-03-27 22:01:11', 1, '217.32', 'the king', 'IT', '2021-03-27 22:01:11', 5, '2021-03-27 22:01:11', 5),
(18, 14, 2, 5, b'1', '../Members/2/14/Attachements/28_1616861046.pdf', b'1', '2021-03-27 22:01:44', 2, '0.00', 'social', 'Maths', '2021-03-27 22:01:44', 5, '2021-03-27 22:01:44', 5),
(19, 48, 8, 5, b'0', '../Members/8/48/Attachements/78_1616861944.pdf', b'0', '2021-03-27 22:02:01', 1, '28.43', 'rocket science free', 'Maths', '2021-03-27 22:02:01', 5, '2021-03-27 22:02:01', 5),
(20, 3, 1, 5, b'1', '../Members/1/3/Attachements/5_1616860594.pdf', b'0', '2021-03-27 22:02:19', 1, '217.32', 'the girl on the train', 'IT', '2021-03-27 22:02:19', 5, '2021-03-27 22:02:19', 5),
(21, 3, 1, 5, b'1', '../Members/1/3/Attachements/6_1616860594.pdf', b'0', '2021-03-27 22:02:19', 1, '217.32', 'the girl on the train', 'IT', '2021-03-27 22:02:19', 5, '2021-03-27 22:02:19', 5),
(22, 15, 2, 5, b'1', '../Members/2/15/Attachements/29_1616861049.pdf', b'1', '2021-03-27 22:03:00', 2, '0.00', 'swift', 'Maths', '2021-03-27 22:03:00', 5, '2021-03-27 22:03:00', 5),
(23, 15, 2, 3, b'1', '../Members/2/15/Attachements/29_1616861049.pdf', b'1', '2021-03-27 22:03:33', 2, '0.00', 'swift', 'Maths', '2021-03-27 22:03:33', 3, '2021-03-27 22:03:33', 3),
(24, 30, 4, 3, b'0', '../Members/4/30/Attachements/48_1616861406.pdf', b'0', '2021-03-27 22:03:42', 1, '83.32', 'secret of sea', 'Chemistry', '2021-03-27 22:03:42', 3, '2021-03-27 22:03:42', 3),
(25, 38, 6, 3, b'1', '../Members/6/38/Attachements/66_1616861595.pdf', b'1', '2021-03-27 22:03:56', 2, '0.00', 'secret of my coding', 'Maths', '2021-03-27 22:03:56', 3, '2021-03-27 22:03:56', 3),
(26, 38, 6, 3, b'1', '../Members/6/38/Attachements/67_1616861595.pdf', b'1', '2021-03-27 22:03:56', 2, '0.00', 'secret of my coding', 'Maths', '2021-03-27 22:03:56', 3, '2021-03-27 22:03:56', 3),
(27, 38, 6, 3, b'1', '../Members/6/38/Attachements/68_1616861595.pdf', b'1', '2021-03-27 22:03:56', 2, '0.00', 'secret of my coding', 'Maths', '2021-03-27 22:03:56', 3, '2021-03-27 22:03:56', 3),
(28, 9, 1, 3, b'0', '../Members/1/9/Attachements/13_1616860806.pdf', b'0', '2021-03-27 22:04:06', 1, '389.38', 'Craft Limited Edition', 'Chemistry', '2021-03-27 22:04:06', 3, '2021-03-27 22:04:06', 3),
(29, 9, 1, 3, b'0', '../Members/1/9/Attachements/14_1616860806.pdf', b'0', '2021-03-27 22:04:06', 1, '389.38', 'Craft Limited Edition', 'Chemistry', '2021-03-27 22:04:06', 3, '2021-03-27 22:04:06', 3),
(30, 9, 1, 3, b'0', '../Members/1/9/Attachements/15_1616860806.pdf', b'0', '2021-03-27 22:04:06', 1, '389.38', 'Craft Limited Edition', 'Chemistry', '2021-03-27 22:04:06', 3, '2021-03-27 22:04:06', 3),
(31, 2, 1, 3, b'0', '../Members/1/2/Attachements/3_1616860593.pdf', b'0', '2021-03-27 22:04:21', 1, '217.32', 'the king', 'IT', '2021-03-27 22:04:21', 3, '2021-03-27 22:04:21', 3),
(32, 2, 1, 3, b'0', '../Members/1/2/Attachements/4_1616860593.pdf', b'0', '2021-03-27 22:04:21', 1, '217.32', 'the king', 'IT', '2021-03-27 22:04:21', 3, '2021-03-27 22:04:21', 3),
(33, 7, 1, 3, b'1', '../Members/1/7/Attachements/11_1616860696.pdf', b'1', '2021-03-27 22:04:39', 2, '0.00', 'memory', 'Hitroy', '2021-03-27 22:04:39', 3, '2021-03-27 22:04:39', 3),
(34, 8, 1, 3, b'1', '../Members/1/8/Attachements/12_1616860697.pdf', b'1', '2021-03-27 22:04:46', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:04:46', 3, '2021-03-27 22:04:46', 3),
(35, 25, 4, 3, b'1', '../Members/4/25/Attachements/40_1616861331.pdf', b'1', '2021-03-27 22:04:53', 2, '0.00', 'secret of secret', 'IT', '2021-03-27 22:04:53', 3, '2021-03-27 22:04:53', 3),
(36, 25, 4, 3, b'1', '../Members/4/25/Attachements/41_1616861331.pdf', b'1', '2021-03-27 22:04:53', 2, '0.00', 'secret of secret', 'IT', '2021-03-27 22:04:53', 3, '2021-03-27 22:04:53', 3),
(37, 37, 6, 7, b'1', '../Members/6/37/Attachements/63_1616861595.pdf', b'1', '2021-03-27 22:06:19', 2, '0.00', 'secret of my life', 'Maths', '2021-03-27 22:06:19', 7, '2021-03-27 22:06:19', 7),
(38, 37, 6, 7, b'1', '../Members/6/37/Attachements/64_1616861595.pdf', b'1', '2021-03-27 22:06:19', 2, '0.00', 'secret of my life', 'Maths', '2021-03-27 22:06:19', 7, '2021-03-27 22:06:19', 7),
(39, 37, 6, 7, b'1', '../Members/6/37/Attachements/65_1616861595.pdf', b'1', '2021-03-27 22:06:19', 2, '0.00', 'secret of my life', 'Maths', '2021-03-27 22:06:19', 7, '2021-03-27 22:06:19', 7),
(40, 39, 6, 7, b'0', '../Members/6/39/Attachements/69_1616861690.pdf', b'0', '2021-03-27 22:10:09', 1, '21.82', 'fullter', 'MBA', '2021-03-27 22:10:09', 7, '2021-03-27 22:10:09', 7),
(41, 5, 1, 4, b'1', '../Members/1/5/Attachements/9_1616860683.pdf', b'1', '2021-03-27 22:23:19', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:23:19', 4, '2021-03-27 22:23:19', 4),
(42, 7, 1, 4, b'1', '../Members/1/7/Attachements/11_1616860696.pdf', b'1', '2021-03-27 22:23:25', 2, '0.00', 'memory', 'Hitroy', '2021-03-27 22:23:25', 4, '2021-03-27 22:23:25', 4),
(43, 8, 1, 4, b'1', '../Members/1/8/Attachements/12_1616860697.pdf', b'1', '2021-03-27 22:23:35', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:23:35', 4, '2021-03-27 22:23:35', 4),
(44, 5, 1, 7, b'1', '../Members/1/5/Attachements/9_1616860683.pdf', b'1', '2021-03-27 22:24:22', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:24:22', 7, '2021-03-27 22:24:22', 7),
(45, 6, 1, 7, b'1', '../Members/1/6/Attachements/10_1616860695.pdf', b'1', '2021-03-27 22:24:27', 2, '0.00', 'success', 'Hitroy', '2021-03-27 22:24:27', 7, '2021-03-27 22:24:27', 7),
(46, 8, 1, 7, b'1', '../Members/1/8/Attachements/12_1616860697.pdf', b'1', '2021-03-27 22:24:33', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:24:33', 7, '2021-03-27 22:24:33', 7),
(47, 15, 2, 4, b'1', '../Members/2/15/Attachements/29_1616861049.pdf', b'1', '2021-03-27 22:25:17', 2, '0.00', 'swift', 'Maths', '2021-03-27 22:25:17', 4, '2021-03-27 22:25:17', 4),
(48, 17, 2, 1, b'1', '../Members/2/17/Attachements/31_1616861051.pdf', b'1', '2021-03-27 22:26:15', 2, '0.00', 'spring', 'Maths', '2021-03-27 22:26:15', 1, '2021-03-27 22:26:15', 1),
(49, 16, 2, 1, b'1', '../Members/2/16/Attachements/30_1616861050.pdf', b'1', '2021-03-27 22:26:23', 2, '0.00', 'social', 'Maths', '2021-03-27 22:26:23', 1, '2021-03-27 22:26:23', 1),
(50, 8, 1, 5, b'1', '../Members/1/8/Attachements/12_1616860697.pdf', b'1', '2021-03-27 22:30:01', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:30:01', 5, '2021-03-27 22:30:01', 5),
(51, 40, 6, 5, b'0', '../Members/6/40/Attachements/70_1616861692.pdf', b'0', '2021-03-27 22:30:08', 1, '21.82', 'fullter fullc course', 'MBA', '2021-03-27 22:30:08', 5, '2021-03-27 22:30:08', 5),
(52, 49, 4, 5, b'1', '../Members/4/49/Attachements/79_1616863809.pdf', b'0', '2021-03-27 22:30:21', 1, '21.90', 'rocket science', 'CA', '2021-03-27 22:30:21', 5, '2021-03-27 22:30:21', 5),
(53, 49, 4, 7, b'1', '../Members/4/49/Attachements/79_1616863809.pdf', b'0', '2021-03-27 22:33:18', 1, '21.90', 'rocket science', 'CA', '2021-03-27 22:33:18', 7, '2021-03-27 22:33:18', 7),
(54, 49, 4, 8, b'1', '../Members/4/49/Attachements/79_1616863809.pdf', b'0', '2021-03-27 22:34:37', 1, '21.90', 'rocket science', 'CA', '2021-03-27 22:34:37', 8, '2021-03-27 22:34:37', 8),
(55, 40, 6, 8, b'0', '../Members/6/40/Attachements/70_1616861692.pdf', b'0', '2021-03-27 22:34:48', 1, '21.82', 'fullter fullc course', 'MBA', '2021-03-27 22:34:48', 8, '2021-03-27 22:34:48', 8),
(56, 8, 1, 8, b'1', '../Members/1/8/Attachements/12_1616860697.pdf', b'1', '2021-03-27 22:34:59', 2, '0.00', 'python', 'Hitroy', '2021-03-27 22:34:59', 8, '2021-03-27 22:34:59', 8),
(57, 49, 4, 3, b'1', '../Members/4/49/Attachements/79_1616863809.pdf', b'0', '2021-03-27 22:37:39', 1, '21.90', 'rocket science', 'CA', '2021-03-27 22:37:39', 3, '2021-03-27 22:37:39', 3),
(58, 40, 6, 3, b'0', '../Members/6/40/Attachements/70_1616861692.pdf', b'0', '2021-03-27 22:37:50', 1, '21.82', 'fullter fullc course', 'MBA', '2021-03-27 22:37:50', 3, '2021-03-27 22:37:50', 3);

-- --------------------------------------------------------

--
-- Table structure for table `notecategories`
--

CREATE TABLE `notecategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notecategories`
--

INSERT INTO `notecategories` (`categoryid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'MBA', 'Commerce Stream subject', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1'),
(2, 'IT', 'Engineering stream subject', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1'),
(3, 'CA', 'Commerce Stream subject', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1'),
(4, 'Maths', 'Maths subject of topics of trigonometry', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1'),
(5, 'Chemistry', 'Science Stream subject', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1'),
(6, 'Hitroy', 'Brief  history of india', '2021-02-27 13:43:57', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `notetypes`
--

CREATE TABLE `notetypes` (
  `typeid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notetypes`
--

INSERT INTO `notetypes` (`typeid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'Handwritten notes', 'Notes which are hand written', '2021-02-27 13:51:17', NULL, NULL, NULL, b'1'),
(2, 'University notes', 'Notes which are provided by the different universities', '2021-02-27 13:51:17', NULL, NULL, NULL, b'1'),
(3, 'Notebook', 'A reference book for specific knowledge', '2021-02-27 13:51:17', NULL, NULL, NULL, b'1'),
(4, 'Novel', 'a book that tells a story about people and events that are not real', '2021-02-27 13:51:17', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `referencedata`
--

CREATE TABLE `referencedata` (
  `refdataid` int(10) UNSIGNED NOT NULL,
  `value` varchar(100) NOT NULL,
  `datavalue` varchar(100) NOT NULL,
  `refcategory` varchar(100) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referencedata`
--

INSERT INTO `referencedata` (`refdataid`, `value`, `datavalue`, `refcategory`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'Paid', 'P', 'Selling Mode', '2021-02-27 14:03:53', 3, NULL, NULL, b'1'),
(2, 'Free', 'F', 'Selling Mode', '2021-02-27 14:03:53', 3, NULL, NULL, b'1'),
(3, 'Draft', 'Draft', 'Notes Status', '2021-02-28 01:48:49', 3, NULL, NULL, b'1'),
(4, 'Submitted For Review', 'Submitted For Review', 'Notes Status', '2021-02-28 01:52:39', 3, NULL, NULL, b'1'),
(5, 'In Review ', 'In Review ', 'Notes Status', '2021-02-28 01:52:39', 3, NULL, NULL, b'1'),
(6, 'Published ', 'Approved', 'Notes Status', '2021-02-28 01:52:39', 3, NULL, NULL, b'1'),
(7, 'Rejected', 'Rejected', 'Notes Status', '2021-02-28 01:52:39', 3, NULL, NULL, b'1'),
(8, 'Removed', 'Removed', 'Notes Status', '2021-02-28 01:52:39', 3, NULL, NULL, b'1'),
(9, 'Male', 'M', 'Gender', '2021-02-28 01:54:36', 3, NULL, NULL, b'1'),
(10, 'Female', 'F', 'Gender', '2021-02-28 01:54:36', 3, NULL, NULL, b'1'),
(11, 'other', 'o', 'Gender', '2021-02-28 01:54:36', 3, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sellernotes`
--

CREATE TABLE `sellernotes` (
  `noteid` int(10) UNSIGNED NOT NULL,
  `sellerid` int(10) UNSIGNED NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `actionedby` int(11) UNSIGNED DEFAULT NULL,
  `admin_remarks` varchar(255) DEFAULT NULL,
  `publisheddate` datetime DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `category` int(100) UNSIGNED NOT NULL,
  `displaypic` varchar(255) DEFAULT NULL,
  `notetype` int(11) UNSIGNED DEFAULT NULL,
  `page_no` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `university_name` varchar(200) DEFAULT NULL,
  `country` int(11) UNSIGNED DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `proffesor` varchar(100) DEFAULT NULL,
  `ispaid` int(11) UNSIGNED NOT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `notespreview` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellernotes`
--

INSERT INTO `sellernotes` (`noteid`, `sellerid`, `status`, `actionedby`, `admin_remarks`, `publisheddate`, `title`, `category`, `displaypic`, `notetype`, `page_no`, `description`, `university_name`, `country`, `course`, `course_code`, `proffesor`, `ispaid`, `selling_price`, `notespreview`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'AI', 2, '../Members/1/1/DP_1616860591.jpg', 1, 1782, 'Computer', 'tatvasoft Institution ', 3, 'ce', '382y487', 'Vijay Vaishnav', 1, '217.32', '../Members/1/1/Preview_1616860591.pdf', '2021-03-27 21:26:31', 1, '2021-03-27 21:26:31', NULL, b'1'),
(2, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'the king', 2, '../Members/1/2/DP_1616860593.jpg', 1, 1782, 'Computer', 'tatvasoft Institution ', 3, 'ce', '382y487', 'Vijay Vaishnav', 1, '217.32', '../Members/1/2/Preview_1616860593.pdf', '2021-03-27 21:26:33', 1, '2021-03-27 21:26:33', NULL, b'1'),
(3, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'the girl on the train', 2, '../Members/1/3/DP_1616860594.jpg', 1, 1782, 'Computer', 'tatvasoft Institution ', 3, 'ce', '382y487', 'Vijay Vaishnav', 1, '217.32', '../Members/1/3/Preview_1616860594.pdf', '2021-03-27 21:26:34', 1, '2021-03-27 21:26:34', NULL, b'1'),
(4, 1, 7, NULL, NULL, '2021-03-27 22:16:10', 'AI ML', 2, '../Members/1/4/DP_1616860595.jpg', 1, 1782, 'Computer', 'tatvasoft Institution ', 3, 'ce', '382y487', 'Vijay Vaishnav', 1, '217.32', '../Members/1/4/Preview_1616860595.pdf', '2021-03-27 21:26:35', 1, '2021-03-27 21:26:35', NULL, b'1'),
(5, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'python', 6, '../Members/1/5/DP_1616860683.jpg', 3, 1782, 'Computer data', 'sparsh', 3, 'Science', 'FNEOW12897', 'ashish mehta', 2, '0.00', NULL, '2021-03-27 21:28:03', 1, '2021-03-27 21:28:03', NULL, b'1'),
(6, 1, 4, NULL, NULL, '2021-03-27 22:16:10', 'success', 6, '../Members/1/6/DP_1616860695.jpg', 3, 1782, 'Computer data', 'sparsh', 3, 'Science', 'FNEOW12897', 'ashish mehta', 2, '0.00', NULL, '2021-03-27 21:28:15', 1, '2021-03-27 21:28:15', NULL, b'1'),
(7, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'memory', 6, '../Members/1/7/DP_1616860696.jpg', 3, 1782, 'Computer data', 'sparsh', 3, 'Science', 'FNEOW12897', 'ashish mehta', 2, '0.00', NULL, '2021-03-27 21:28:16', 1, '2021-03-27 21:28:16', NULL, b'1'),
(8, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'python', 6, '../Members/1/8/DP_1616860697.jpg', 3, 1782, 'Computer data', 'sparsh', 3, 'Science', 'FNEOW12897', 'ashish mehta', 2, '0.00', NULL, '2021-03-27 21:28:17', 1, '2021-03-27 21:28:17', NULL, b'1'),
(9, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'Craft Limited Edition', 5, '../Members/1/9/DP_1616860806.jpg', 3, 981, 'craft data', 'TATA company', 6, 'ARTS', '9381NDJN', 'nimisha mistry', 1, '389.38', '../Members/1/9/Preview_1616860806.pdf', '2021-03-27 21:30:06', 1, '2021-03-27 21:30:06', NULL, b'1'),
(10, 1, 5, NULL, NULL, '2021-03-27 22:16:10', 'RUBY Limited Edition', 5, '../Members/1/10/DP_1616860808.jpg', 3, 981, 'craft data', 'TATA company', 6, 'ARTS', '9381NDJN', 'nimisha mistry', 1, '389.38', '../Members/1/10/Preview_1616860808.pdf', '2021-03-27 21:30:08', 1, '2021-03-27 21:30:08', NULL, b'1'),
(11, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'JAva Limited Edition', 5, '../Members/1/11/DP_1616860808.jpg', 3, 981, 'craft data', 'TATA company', 6, 'ARTS', '9381NDJN', 'nimisha mistry', 1, '389.38', '../Members/1/11/Preview_1616860808.pdf', '2021-03-27 21:30:08', 1, '2021-03-27 21:30:08', NULL, b'1'),
(12, 1, 7, NULL, NULL, '2021-03-27 22:16:10', 'Craft Limited Edition', 5, '../Members/1/12/DP_1616860809.jpg', 3, 981, 'craft data', 'TATA company', 6, 'ARTS', '9381NDJN', 'nimisha mistry', 1, '389.38', '../Members/1/12/Preview_1616860809.pdf', '2021-03-27 21:30:09', 1, '2021-03-27 21:30:09', NULL, b'1'),
(13, 1, 6, NULL, NULL, '2021-03-27 22:16:10', 'machine Limited Edition', 5, '../Members/1/13/DP_1616860810.jpg', 3, 981, 'craft data', 'TATA company', 6, 'ARTS', '9381NDJN', 'nimisha mistry', 1, '389.38', '../Members/1/13/Preview_1616860810.pdf', '2021-03-27 21:30:10', 1, '2021-03-27 21:30:10', NULL, b'1'),
(14, 2, 6, NULL, NULL, '2021-03-27 22:16:10', 'social', 4, '../Members/2/14/DP_1616861046.jpg', 1, 271, 'about social things', 'TCS', 3, 'work shop', 'FENK2839', 'mitesh patel', 2, '0.00', '../Members/2/14/Preview_1616861046.pdf', '2021-03-27 21:34:06', 2, '2021-03-27 21:34:06', NULL, b'1'),
(15, 2, 6, NULL, NULL, '2021-03-27 22:16:10', 'swift', 4, '../Members/2/15/DP_1616861049.jpg', 1, 271, 'about social things', 'TCS', 3, 'work shop', 'FENK2839', 'mitesh patel', 2, '0.00', '../Members/2/15/Preview_1616861049.pdf', '2021-03-27 21:34:09', 2, '2021-03-27 21:34:09', NULL, b'1'),
(16, 2, 3, NULL, NULL, '2021-03-27 22:16:10', 'social', 4, '../Members/2/16/DP_1616861050.jpg', 1, 271, 'about social things', 'TCS', 3, 'work shop', 'FENK2839', 'mitesh patel', 2, '0.00', '../Members/2/16/Preview_1616861050.pdf', '2021-03-27 21:34:10', 2, '2021-03-27 21:34:10', NULL, b'1'),
(17, 2, 3, NULL, NULL, '2021-03-27 22:16:10', 'spring', 4, '../Members/2/17/DP_1616861051.jpg', 1, 271, 'about social things', 'TCS', 3, 'work shop', 'FENK2839', 'mitesh patel', 2, '0.00', '../Members/2/17/Preview_1616861051.pdf', '2021-03-27 21:34:11', 2, '2021-03-27 21:34:11', NULL, b'1'),
(18, 2, 7, NULL, NULL, '2021-03-27 22:16:10', 'social', 4, '../Members/2/18/DP_1616861052.jpg', 1, 271, 'about social things', 'TCS', 3, 'work shop', 'FENK2839', 'mitesh patel', 2, '0.00', '../Members/2/18/Preview_1616861052.pdf', '2021-03-27 21:34:12', 2, '2021-03-27 21:34:12', NULL, b'1'),
(19, 2, 3, NULL, NULL, '2021-03-27 22:16:10', 'harry poter all edition', 1, '../Members/2/19/DP_1616861159.jpg', 4, 271, 'about social things how works', 'google', 1, 'twist', 'NKN982', 'prajapati rahul', 1, '67.31', '../Members/2/19/Preview_1616861159.pdf', '2021-03-27 21:35:59', 2, '2021-03-27 21:35:59', NULL, b'1'),
(20, 2, 5, NULL, NULL, '2021-03-27 22:16:10', 'C++ all edition', 1, '../Members/2/20/DP_1616861161.jpg', 4, 271, 'about social things how works', 'google', 1, 'twist', 'NKN982', 'prajapati rahul', 1, '67.31', '../Members/2/20/Preview_1616861161.pdf', '2021-03-27 21:36:01', 2, '2021-03-27 21:36:01', NULL, b'1'),
(21, 2, 6, NULL, NULL, '2021-03-27 22:16:10', 'all edition', 1, '../Members/2/21/DP_1616861161.jpg', 4, 271, 'about social things how works', 'google', 1, 'twist', 'NKN982', 'prajapati rahul', 1, '67.31', '../Members/2/21/Preview_1616861161.pdf', '2021-03-27 21:36:01', 2, '2021-03-27 21:36:01', NULL, b'1'),
(22, 2, 7, NULL, NULL, '2021-03-27 22:16:10', 'photoshop all edition', 1, '../Members/2/22/DP_1616861162.jpg', 4, 271, 'about social things how works', 'google', 1, 'twist', 'NKN982', 'prajapati rahul', 1, '67.31', '../Members/2/22/Preview_1616861162.pdf', '2021-03-27 21:36:02', 2, '2021-03-27 21:36:02', NULL, b'1'),
(23, 2, 6, NULL, NULL, '2021-03-27 22:16:10', 'compiler design all edition', 1, '../Members/2/23/DP_1616861163.jpg', 4, 271, 'about social things how works', 'google', 1, 'twist', 'NKN982', 'prajapati rahul', 1, '67.31', '../Members/2/23/Preview_1616861163.pdf', '2021-03-27 21:36:03', 2, '2021-03-27 21:36:03', NULL, b'1'),
(24, 4, 6, NULL, NULL, '2021-03-27 22:16:10', 'secret of color', 2, '../Members/4/24/DP_1616861329.jpg', 3, 78, 'auto biography', 'chandan', 2, 'Tatva', 'BKI782', 'meet gohil', 2, '0.00', NULL, '2021-03-27 21:38:49', 4, '2021-03-27 21:38:49', NULL, b'1'),
(25, 4, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of secret', 2, '../Members/4/25/DP_1616861331.jpg', 3, 78, 'auto biography', 'chandan', 2, 'Tatva', 'BKI782', 'meet gohil', 2, '0.00', NULL, '2021-03-27 21:38:51', 4, '2021-03-27 21:38:51', NULL, b'1'),
(26, 4, 6, NULL, NULL, '2021-03-27 22:16:10', 'secret of science', 2, '../Members/4/26/DP_1616861331.jpg', 3, 78, 'auto biography', 'chandan', 2, 'Tatva', 'BKI782', 'meet gohil', 2, '0.00', NULL, '2021-03-27 21:38:51', 4, '2021-03-27 21:38:51', NULL, b'1'),
(27, 4, 6, NULL, NULL, '2021-03-27 22:16:10', 'kites', 2, '../Members/4/27/DP_1616861332.jpg', 3, 78, 'auto biography', 'chandan', 2, 'Tatva', 'BKI782', 'meet gohil', 2, '0.00', NULL, '2021-03-27 21:38:52', 4, '2021-03-27 21:38:52', NULL, b'1'),
(28, 4, 3, NULL, NULL, '2021-03-27 22:16:10', 'flowers', 5, '../Members/4/28/DP_1616861404.jpg', 1, 38, 'auto biography of men', 'relience', 3, 'coursera', 'FNEN8918', 'simran gohil', 1, '83.32', '../Members/4/28/Preview_1616861404.pdf', '2021-03-27 21:40:04', 4, '2021-03-27 21:40:04', NULL, b'1'),
(29, 4, 6, NULL, NULL, '2021-03-27 22:16:10', 'secret of space', 5, '../Members/4/29/DP_1616861405.jpg', 1, 38, 'auto biography of men', 'relience', 3, 'coursera', 'FNEN8918', 'simran gohil', 1, '83.32', '../Members/4/29/Preview_1616861405.pdf', '2021-03-27 21:40:05', 4, '2021-03-27 21:40:05', NULL, b'1'),
(30, 4, 6, NULL, NULL, '2021-03-27 22:16:10', 'secret of sea', 5, '../Members/4/30/DP_1616861406.jpg', 1, 38, 'auto biography of men', 'relience', 3, 'coursera', 'FNEN8918', 'simran gohil', 1, '83.32', '../Members/4/30/Preview_1616861406.pdf', '2021-03-27 21:40:06', 4, '2021-03-27 21:40:06', NULL, b'1'),
(31, 4, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of space', 5, '../Members/4/31/DP_1616861407.jpg', 1, 38, 'auto biography of men', 'relience', 3, 'coursera', 'FNEN8918', 'simran gohil', 1, '83.32', '../Members/4/31/Preview_1616861407.pdf', '2021-03-27 21:40:07', 4, '2021-03-27 21:40:07', NULL, b'1'),
(32, 4, 7, NULL, NULL, '2021-03-27 22:16:10', 'photoshop', 5, '../Members/4/32/DP_1616861407.jpg', 1, 38, 'auto biography of men', 'relience', 3, 'coursera', 'FNEN8918', 'simran gohil', 1, '83.32', '../Members/4/32/Preview_1616861407.pdf', '2021-03-27 21:40:07', 4, '2021-03-27 21:40:07', NULL, b'1'),
(33, 6, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of my life', 4, '../Members/6/33/DP_1616861591.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/33/Preview_1616861591.pdf', '2021-03-27 21:43:11', 6, '2021-03-27 21:43:11', NULL, b'1'),
(34, 6, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of my scuess', 4, '../Members/6/34/DP_1616861593.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/34/Preview_1616861593.pdf', '2021-03-27 21:43:13', 6, '2021-03-27 21:43:13', NULL, b'1'),
(35, 6, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of my life', 4, '../Members/6/35/DP_1616861593.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/35/Preview_1616861593.pdf', '2021-03-27 21:43:13', 6, '2021-03-27 21:43:13', NULL, b'1'),
(36, 6, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of my career', 4, '../Members/6/36/DP_1616861594.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/36/Preview_1616861594.pdf', '2021-03-27 21:43:14', 6, '2021-03-27 21:43:14', NULL, b'1'),
(37, 6, 3, NULL, NULL, '2021-03-27 22:16:10', 'secret of my life', 4, '../Members/6/37/DP_1616861595.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/37/Preview_1616861595.pdf', '2021-03-27 21:43:15', 6, '2021-03-27 21:43:15', NULL, b'1'),
(38, 6, 6, NULL, NULL, '2021-03-27 22:16:10', 'secret of my coding', 4, '../Members/6/38/DP_1616861595.jpg', 4, 781, 'about all the needy things', 'spaceX', 5, 'udemy', '1234', 'edwin', 2, '0.00', '../Members/6/38/Preview_1616861595.pdf', '2021-03-27 21:43:15', 6, '2021-03-27 21:43:15', NULL, b'1'),
(39, 6, 7, NULL, NULL, '2021-03-27 22:16:10', 'fullter', 1, '../Members/6/39/DP_1616861690.jpg', 2, 781, 'about all the needy things', 'tesla', 2, 'youtube', '2893', 'lipi joshi', 1, '21.82', '../Members/6/39/Preview_1616861690.pdf', '2021-03-27 21:44:50', 6, '2021-03-27 21:44:50', NULL, b'1'),
(40, 6, 6, NULL, NULL, '2021-03-27 22:16:10', 'fullter fullc course', 1, '../Members/6/40/DP_1616861692.jpg', 2, 781, 'about all the needy things', 'tesla', 2, 'youtube', '2893', 'lipi joshi', 1, '21.82', '../Members/6/40/Preview_1616861692.pdf', '2021-03-27 21:44:52', 6, '2021-03-27 21:44:52', NULL, b'1'),
(41, 6, 6, NULL, NULL, '2021-03-27 22:16:10', 'fullter', 1, '../Members/6/41/DP_1616861692.jpg', 2, 781, 'about all the needy things', 'tesla', 2, 'youtube', '2893', 'lipi joshi', 1, '21.82', '../Members/6/41/Preview_1616861692.pdf', '2021-03-27 21:44:52', 6, '2021-03-27 21:44:52', NULL, b'1'),
(42, 6, 6, NULL, NULL, '2021-03-27 22:16:10', 'fullter limited', 1, '../Members/6/42/DP_1616861693.jpg', 2, 781, 'about all the needy things', 'tesla', 2, 'youtube', '2893', 'lipi joshi', 1, '21.82', '../Members/6/42/Preview_1616861693.pdf', '2021-03-27 21:44:53', 6, '2021-03-27 21:44:53', NULL, b'1'),
(43, 6, 6, NULL, NULL, '2021-03-27 22:16:10', 'fullter paid course', 1, '../Members/6/43/DP_1616861693.jpg', 2, 781, 'about all the needy things', 'tesla', 2, 'youtube', '2893', 'lipi joshi', 1, '21.82', '../Members/6/43/Preview_1616861693.pdf', '2021-03-27 21:44:53', 6, '2021-03-27 21:44:53', NULL, b'1'),
(44, 8, 6, NULL, NULL, '2021-03-27 22:16:10', 'alien secret', 4, '../Members/8/44/DP_1616861941.jpg', 2, 378, 'des es de slfnakl', 'ESSAR', 5, 'play store', '38923', 'kritisha malan', 1, '28.43', '../Members/8/44/Preview_1616861941.pdf', '2021-03-27 21:49:01', 8, '2021-03-27 21:49:01', NULL, b'1'),
(45, 8, 7, NULL, NULL, '2021-03-27 22:16:10', 'cycle secret', 4, '../Members/8/45/DP_1616861942.jpg', 2, 378, 'des es de slfnakl', 'ESSAR', 5, 'play store', '38923', 'kritisha malan', 1, '28.43', '../Members/8/45/Preview_1616861942.pdf', '2021-03-27 21:49:02', 8, '2021-03-27 21:49:02', NULL, b'1'),
(46, 8, 3, NULL, NULL, '2021-03-27 22:16:10', 'rocket science', 4, '../Members/8/46/DP_1616861943.jpg', 2, 378, 'des es de slfnakl', 'ESSAR', 5, 'play store', '38923', 'kritisha malan', 1, '28.43', '../Members/8/46/Preview_1616861943.pdf', '2021-03-27 21:49:03', 8, '2021-03-27 21:49:03', NULL, b'1'),
(47, 8, 6, NULL, NULL, '2021-03-27 22:16:10', 'alien moonsecret', 4, '../Members/8/47/DP_1616861943.jpg', 2, 378, 'des es de slfnakl', 'ESSAR', 5, 'play store', '38923', 'kritisha malan', 1, '28.43', '../Members/8/47/Preview_1616861943.pdf', '2021-03-27 21:49:03', 8, '2021-03-27 21:49:03', NULL, b'1'),
(48, 8, 6, NULL, NULL, '2021-03-27 22:16:10', 'rocket science free', 4, '../Members/8/48/DP_1616861944.jpg', 2, 378, 'des es de slfnakl', 'ESSAR', 5, 'play store', '38923', 'kritisha malan', 1, '28.43', '../Members/8/48/Preview_1616861944.pdf', '2021-03-27 21:49:04', 8, '2021-03-27 21:49:04', NULL, b'1'),
(49, 4, 6, NULL, NULL, '2021-03-27 22:20:41', 'rocket science', 3, '../Members/4/49/DP_1616863809.jpg', 1, 181, 'About beautiful things', 'tesla', 4, 'youtube', 'HISH8932', 'mihir mishra', 1, '21.90', '../Members/4/49/Preview_1616863809.pdf', '2021-03-27 22:20:09', 4, '2021-03-27 22:20:41', 4, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesattachements`
--

CREATE TABLE `sellernotesattachements` (
  `note_attach_id` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellernotesattachements`
--

INSERT INTO `sellernotesattachements` (`note_attach_id`, `noteid`, `filename`, `filepath`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 1, '1_1616860591pdf', '../Members/1/1/Attachements/1_1616860591.pdf', '2021-03-27 21:26:31', 1, NULL, NULL, b'1'),
(2, 1, '2_1616860591pdf', '../Members/1/1/Attachements/2_1616860591.pdf', '2021-03-27 21:26:31', 1, NULL, NULL, b'1'),
(3, 2, '3_1616860593pdf', '../Members/1/2/Attachements/3_1616860593.pdf', '2021-03-27 21:26:33', 1, NULL, NULL, b'1'),
(4, 2, '4_1616860593pdf', '../Members/1/2/Attachements/4_1616860593.pdf', '2021-03-27 21:26:33', 1, NULL, NULL, b'1'),
(5, 3, '5_1616860594pdf', '../Members/1/3/Attachements/5_1616860594.pdf', '2021-03-27 21:26:34', 1, NULL, NULL, b'1'),
(6, 3, '6_1616860594pdf', '../Members/1/3/Attachements/6_1616860594.pdf', '2021-03-27 21:26:34', 1, NULL, NULL, b'1'),
(7, 4, '7_1616860595pdf', '../Members/1/4/Attachements/7_1616860595.pdf', '2021-03-27 21:26:35', 1, NULL, NULL, b'1'),
(8, 4, '8_1616860595pdf', '../Members/1/4/Attachements/8_1616860595.pdf', '2021-03-27 21:26:35', 1, NULL, NULL, b'1'),
(9, 5, '9_1616860683pdf', '../Members/1/5/Attachements/9_1616860683.pdf', '2021-03-27 21:28:03', 1, NULL, NULL, b'1'),
(10, 6, '10_1616860695pdf', '../Members/1/6/Attachements/10_1616860695.pdf', '2021-03-27 21:28:15', 1, NULL, NULL, b'1'),
(11, 7, '11_1616860696pdf', '../Members/1/7/Attachements/11_1616860696.pdf', '2021-03-27 21:28:16', 1, NULL, NULL, b'1'),
(12, 8, '12_1616860697pdf', '../Members/1/8/Attachements/12_1616860697.pdf', '2021-03-27 21:28:17', 1, NULL, NULL, b'1'),
(13, 9, '13_1616860806pdf', '../Members/1/9/Attachements/13_1616860806.pdf', '2021-03-27 21:30:06', 1, NULL, NULL, b'1'),
(14, 9, '14_1616860806pdf', '../Members/1/9/Attachements/14_1616860806.pdf', '2021-03-27 21:30:06', 1, NULL, NULL, b'1'),
(15, 9, '15_1616860806pdf', '../Members/1/9/Attachements/15_1616860806.pdf', '2021-03-27 21:30:06', 1, NULL, NULL, b'1'),
(16, 10, '16_1616860808pdf', '../Members/1/10/Attachements/16_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(17, 10, '17_1616860808pdf', '../Members/1/10/Attachements/17_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(18, 10, '18_1616860808pdf', '../Members/1/10/Attachements/18_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(19, 11, '19_1616860808pdf', '../Members/1/11/Attachements/19_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(20, 11, '20_1616860808pdf', '../Members/1/11/Attachements/20_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(21, 11, '21_1616860808pdf', '../Members/1/11/Attachements/21_1616860808.pdf', '2021-03-27 21:30:08', 1, NULL, NULL, b'1'),
(22, 12, '22_1616860809pdf', '../Members/1/12/Attachements/22_1616860809.pdf', '2021-03-27 21:30:09', 1, NULL, NULL, b'1'),
(23, 12, '23_1616860809pdf', '../Members/1/12/Attachements/23_1616860809.pdf', '2021-03-27 21:30:09', 1, NULL, NULL, b'1'),
(24, 12, '24_1616860809pdf', '../Members/1/12/Attachements/24_1616860809.pdf', '2021-03-27 21:30:09', 1, NULL, NULL, b'1'),
(25, 13, '25_1616860810pdf', '../Members/1/13/Attachements/25_1616860810.pdf', '2021-03-27 21:30:10', 1, NULL, NULL, b'1'),
(26, 13, '26_1616860810pdf', '../Members/1/13/Attachements/26_1616860810.pdf', '2021-03-27 21:30:10', 1, NULL, NULL, b'1'),
(27, 13, '27_1616860810pdf', '../Members/1/13/Attachements/27_1616860810.pdf', '2021-03-27 21:30:10', 1, NULL, NULL, b'1'),
(28, 14, '28_1616861046pdf', '../Members/2/14/Attachements/28_1616861046.pdf', '2021-03-27 21:34:06', 2, NULL, NULL, b'1'),
(29, 15, '29_1616861049pdf', '../Members/2/15/Attachements/29_1616861049.pdf', '2021-03-27 21:34:09', 2, NULL, NULL, b'1'),
(30, 16, '30_1616861050pdf', '../Members/2/16/Attachements/30_1616861050.pdf', '2021-03-27 21:34:10', 2, NULL, NULL, b'1'),
(31, 17, '31_1616861051pdf', '../Members/2/17/Attachements/31_1616861051.pdf', '2021-03-27 21:34:11', 2, NULL, NULL, b'1'),
(32, 18, '32_1616861052pdf', '../Members/2/18/Attachements/32_1616861052.pdf', '2021-03-27 21:34:12', 2, NULL, NULL, b'1'),
(33, 19, '33_1616861159pdf', '../Members/2/19/Attachements/33_1616861159.pdf', '2021-03-27 21:35:59', 2, NULL, NULL, b'1'),
(34, 20, '34_1616861161pdf', '../Members/2/20/Attachements/34_1616861161.pdf', '2021-03-27 21:36:01', 2, NULL, NULL, b'1'),
(35, 21, '35_1616861161pdf', '../Members/2/21/Attachements/35_1616861161.pdf', '2021-03-27 21:36:01', 2, NULL, NULL, b'1'),
(36, 22, '36_1616861162pdf', '../Members/2/22/Attachements/36_1616861162.pdf', '2021-03-27 21:36:02', 2, NULL, NULL, b'1'),
(37, 23, '37_1616861163pdf', '../Members/2/23/Attachements/37_1616861163.pdf', '2021-03-27 21:36:03', 2, NULL, NULL, b'1'),
(38, 24, '38_1616861329pdf', '../Members/4/24/Attachements/38_1616861329.pdf', '2021-03-27 21:38:49', 4, NULL, NULL, b'1'),
(39, 24, '39_1616861329pdf', '../Members/4/24/Attachements/39_1616861329.pdf', '2021-03-27 21:38:49', 4, NULL, NULL, b'1'),
(40, 25, '40_1616861331pdf', '../Members/4/25/Attachements/40_1616861331.pdf', '2021-03-27 21:38:51', 4, NULL, NULL, b'1'),
(41, 25, '41_1616861331pdf', '../Members/4/25/Attachements/41_1616861331.pdf', '2021-03-27 21:38:51', 4, NULL, NULL, b'1'),
(42, 26, '42_1616861332pdf', '../Members/4/26/Attachements/42_1616861332.pdf', '2021-03-27 21:38:51', 4, NULL, NULL, b'1'),
(43, 26, '43_1616861332pdf', '../Members/4/26/Attachements/43_1616861332.pdf', '2021-03-27 21:38:52', 4, NULL, NULL, b'1'),
(44, 27, '44_1616861332pdf', '../Members/4/27/Attachements/44_1616861332.pdf', '2021-03-27 21:38:52', 4, NULL, NULL, b'1'),
(45, 27, '45_1616861332pdf', '../Members/4/27/Attachements/45_1616861332.pdf', '2021-03-27 21:38:52', 4, NULL, NULL, b'1'),
(46, 28, '46_1616861404pdf', '../Members/4/28/Attachements/46_1616861404.pdf', '2021-03-27 21:40:04', 4, NULL, NULL, b'1'),
(47, 29, '47_1616861405pdf', '../Members/4/29/Attachements/47_1616861405.pdf', '2021-03-27 21:40:05', 4, NULL, NULL, b'1'),
(48, 30, '48_1616861406pdf', '../Members/4/30/Attachements/48_1616861406.pdf', '2021-03-27 21:40:06', 4, NULL, NULL, b'1'),
(49, 31, '49_1616861407pdf', '../Members/4/31/Attachements/49_1616861407.pdf', '2021-03-27 21:40:07', 4, NULL, NULL, b'1'),
(50, 32, '50_1616861407pdf', '../Members/4/32/Attachements/50_1616861407.pdf', '2021-03-27 21:40:07', 4, NULL, NULL, b'1'),
(51, 33, '51_1616861591pdf', '../Members/6/33/Attachements/51_1616861591.pdf', '2021-03-27 21:43:11', 6, NULL, NULL, b'1'),
(52, 33, '52_1616861591pdf', '../Members/6/33/Attachements/52_1616861591.pdf', '2021-03-27 21:43:11', 6, NULL, NULL, b'1'),
(53, 33, '53_1616861591pdf', '../Members/6/33/Attachements/53_1616861591.pdf', '2021-03-27 21:43:11', 6, NULL, NULL, b'1'),
(54, 34, '54_1616861593pdf', '../Members/6/34/Attachements/54_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(55, 34, '55_1616861593pdf', '../Members/6/34/Attachements/55_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(56, 34, '56_1616861593pdf', '../Members/6/34/Attachements/56_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(57, 35, '57_1616861593pdf', '../Members/6/35/Attachements/57_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(58, 35, '58_1616861593pdf', '../Members/6/35/Attachements/58_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(59, 35, '59_1616861593pdf', '../Members/6/35/Attachements/59_1616861593.pdf', '2021-03-27 21:43:13', 6, NULL, NULL, b'1'),
(60, 36, '60_1616861594pdf', '../Members/6/36/Attachements/60_1616861594.pdf', '2021-03-27 21:43:14', 6, NULL, NULL, b'1'),
(61, 36, '61_1616861594pdf', '../Members/6/36/Attachements/61_1616861594.pdf', '2021-03-27 21:43:14', 6, NULL, NULL, b'1'),
(62, 36, '62_1616861594pdf', '../Members/6/36/Attachements/62_1616861594.pdf', '2021-03-27 21:43:14', 6, NULL, NULL, b'1'),
(63, 37, '63_1616861595pdf', '../Members/6/37/Attachements/63_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(64, 37, '64_1616861595pdf', '../Members/6/37/Attachements/64_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(65, 37, '65_1616861595pdf', '../Members/6/37/Attachements/65_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(66, 38, '66_1616861595pdf', '../Members/6/38/Attachements/66_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(67, 38, '67_1616861595pdf', '../Members/6/38/Attachements/67_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(68, 38, '68_1616861595pdf', '../Members/6/38/Attachements/68_1616861595.pdf', '2021-03-27 21:43:15', 6, NULL, NULL, b'1'),
(69, 39, '69_1616861690pdf', '../Members/6/39/Attachements/69_1616861690.pdf', '2021-03-27 21:44:50', 6, NULL, NULL, b'1'),
(70, 40, '70_1616861692pdf', '../Members/6/40/Attachements/70_1616861692.pdf', '2021-03-27 21:44:52', 6, NULL, NULL, b'1'),
(71, 41, '71_1616861692pdf', '../Members/6/41/Attachements/71_1616861692.pdf', '2021-03-27 21:44:52', 6, NULL, NULL, b'1'),
(72, 42, '72_1616861693pdf', '../Members/6/42/Attachements/72_1616861693.pdf', '2021-03-27 21:44:53', 6, NULL, NULL, b'1'),
(73, 43, '73_1616861693pdf', '../Members/6/43/Attachements/73_1616861693.pdf', '2021-03-27 21:44:53', 6, NULL, NULL, b'1'),
(74, 44, '74_1616861941pdf', '../Members/8/44/Attachements/74_1616861941.pdf', '2021-03-27 21:49:01', 8, NULL, NULL, b'1'),
(75, 45, '75_1616861942pdf', '../Members/8/45/Attachements/75_1616861942.pdf', '2021-03-27 21:49:02', 8, NULL, NULL, b'1'),
(76, 46, '76_1616861943pdf', '../Members/8/46/Attachements/76_1616861943.pdf', '2021-03-27 21:49:03', 8, NULL, NULL, b'1'),
(77, 47, '77_1616861943pdf', '../Members/8/47/Attachements/77_1616861943.pdf', '2021-03-27 21:49:03', 8, NULL, NULL, b'1'),
(78, 48, '78_1616861944pdf', '../Members/8/48/Attachements/78_1616861944.pdf', '2021-03-27 21:49:04', 8, NULL, NULL, b'1'),
(79, 49, '79_1616863809pdf', '../Members/4/49/Attachements/79_1616863809.pdf', '2021-03-27 22:20:09', 4, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreportedissues`
--

CREATE TABLE `sellernotesreportedissues` (
  `note_reportid` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reprotedbyid` int(10) UNSIGNED NOT NULL,
  `againstdownloaderid` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellernotesreportedissues`
--

INSERT INTO `sellernotesreportedissues` (`note_reportid`, `noteid`, `reprotedbyid`, `againstdownloaderid`, `remarks`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 17, 1, 2, 'bad', '2021-03-27 22:28:08', 1, NULL, NULL),
(2, 14, 5, 2, 'very bad', '2021-03-27 22:29:09', 5, NULL, NULL),
(4, 49, 7, 4, 'bad', '2021-03-27 22:34:16', 7, NULL, NULL),
(6, 49, 3, 4, 'bad', '2021-03-27 22:39:14', 3, NULL, NULL),
(7, 6, 7, 1, 'good', '2021-03-27 22:40:19', 7, NULL, NULL),
(8, 49, 8, 4, 'bad', '2021-03-27 22:42:44', 8, NULL, NULL),
(9, 13, 7, 1, 'bad', '2021-03-27 22:43:59', 7, NULL, NULL),
(10, 15, 7, 2, 'bhavikrathod@gmail.com', '2021-03-27 22:44:13', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreview`
--

CREATE TABLE `sellernotesreview` (
  `note_review_id` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED NOT NULL,
  `againstdownloadsid` int(10) UNSIGNED NOT NULL,
  `ratings` decimal(10,1) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellernotesreview`
--

INSERT INTO `sellernotesreview` (`note_review_id`, `noteid`, `reviewer_id`, `againstdownloadsid`, `ratings`, `comments`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 16, 1, 2, '4.6', 'good', '2021-03-27 22:28:02', 1, '2021-03-27 22:28:02', 1, b'1'),
(2, 15, 5, 2, '3.4', 'hi', '2021-03-27 22:29:01', 5, '2021-03-27 22:29:01', 5, b'1'),
(3, 8, 5, 1, '4.4', 'good', '2021-03-27 22:30:58', 5, '2021-03-27 22:30:58', 5, b'1'),
(5, 49, 7, 4, '4.2', 'good', '2021-03-27 22:34:11', 7, '2021-03-27 22:34:11', 7, b'1'),
(6, 49, 8, 4, '3.5', 'good', '2021-03-27 22:35:38', 8, '2021-03-27 22:35:38', 8, b'1'),
(7, 49, 3, 4, '3.2', 'good', '2021-03-27 22:39:08', 3, '2021-03-27 22:39:08', 3, b'1'),
(8, 25, 3, 4, '3.3', 'good', '2021-03-27 22:39:54', 3, '2021-03-27 22:39:54', 3, b'1'),
(9, 7, 3, 1, '0.0', 'good', '2021-03-27 22:40:00', 3, '2021-03-27 22:40:00', 3, b'1'),
(10, 15, 7, 2, '3.5', 'good', '2021-03-27 22:40:14', 7, '2021-03-27 22:40:14', 7, b'1'),
(11, 37, 7, 6, '3.3', 'good', '2021-03-27 22:40:29', 7, '2021-03-27 22:40:29', 7, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `systemconfiguration`
--

CREATE TABLE `systemconfiguration` (
  `configid` int(10) UNSIGNED NOT NULL,
  `key_info` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `userprofileid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) UNSIGNED DEFAULT NULL,
  `secondemail` varchar(100) DEFAULT NULL,
  `phone_country_code` int(10) UNSIGNED NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `country` int(50) UNSIGNED NOT NULL,
  `university` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`userprofileid`, `userid`, `dob`, `gender`, `secondemail`, `phone_country_code`, `phone_no`, `profile_pic`, `address_line1`, `address_line2`, `city`, `state`, `zipcode`, `country`, `university`, `college`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 1, '0000-00-00', 9, NULL, 1, '387618y71', '../Members/1/DP_1616860142.jpg', 'add111', 'add222', 'jam', 'guj', '12345678', 4, '', '', '2021-03-27 21:19:02', 1, '2021-03-27 21:19:02', 1),
(2, 2, '1999-02-12', 10, NULL, 1, '371819021092', '../Members/2/DP_1616860273.jpg', 'kfnlkdn', 'd ak,dm ', 'skdlams', 's KLSD', '2912', 4, '', '', '2021-03-27 21:21:13', 2, '2021-03-27 21:21:13', 2),
(3, 3, '0000-00-00', 9, NULL, 1, '9817683712', '../Members/3/DP_1616860331.jpeg', 'nakfjas', 'v alksd ', 'f alkfn', 'fqlfkl', '183812', 5, '', '', '2021-03-27 21:22:11', 3, '2021-03-27 21:22:11', 3),
(4, 6, '0000-00-00', 10, NULL, 1, '987126515', '../Members/6/DP_1616860384.jpg', 'fuaifdbikj', 'fqkjfnakn', 'f alkfnkinf', 'faklfnwifn', '3829341', 2, '', '', '2021-03-27 21:23:04', 6, '2021-03-27 21:23:04', 6),
(5, 7, '0000-00-00', 10, NULL, 1, '917271621', '../Members/7/DP_1616862458.jpg', 'smalk', 'an lkfan', 'a klfs', 'nfvklanfdl', '3891', 2, '', '', '2021-03-27 21:57:38', 7, '2021-03-27 21:57:38', 7);

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `roleid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`roleid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'user', 'user can be buyer or seller or both combined', '2021-02-24 13:57:19', 3, '2021-02-24 13:59:59', 3, b'1'),
(2, 'admin', 'an admin who maintains the NotesmarketPlace', '2021-02-24 13:57:43', 3, '2021-02-24 14:00:10', 3, b'1'),
(3, 'super admin', 'an admin who has created the project NotesMarketPlace', '2021-02-24 13:57:56', 3, '2021-02-24 14:01:41', 3, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) UNSIGNED NOT NULL,
  `roleid` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(24) NOT NULL,
  `isemailverified` bit(1) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `roleid`, `firstname`, `lastname`, `emailid`, `password`, `isemailverified`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 1, 'raj', 'gohil', 'raj.famous007@gmail.com', '123Raj', b'1', '2021-03-27 21:11:41', NULL, NULL, NULL, b'1'),
(2, 1, 'krupa', 'mehta', 'krupamehta@gmail.com', '123Raj', b'1', '2021-03-27 21:12:13', NULL, NULL, NULL, b'1'),
(3, 1, 'taral', 'patel', 'taralpatel@gmail.com', '123Raj', b'1', '2021-03-27 21:12:36', NULL, NULL, NULL, b'1'),
(4, 1, 'daki', 'parth', 'dakiparth@gmail.com', '123Raj', b'1', '2021-03-27 21:12:57', NULL, NULL, NULL, b'1'),
(5, 1, 'monil', 'patel', 'monilpatel@gmail.com', '123Raj', b'1', '2021-03-27 21:13:20', NULL, NULL, NULL, b'1'),
(6, 1, 'nandini', 'virani', 'nandivirani2000@gmail.com', '123Raj', b'1', '2021-03-27 21:13:37', NULL, NULL, NULL, b'1'),
(7, 1, 'bhavik', 'rathod', 'bhavikrathod@gmail.com', '123Raj', b'1', '2021-03-27 21:14:06', NULL, NULL, NULL, b'1'),
(8, 1, 'shyam', 'mehta', 'shyam@gmail.com', '123Raj', b'1', '2021-03-27 21:14:30', NULL, NULL, NULL, b'1'),
(9, 1, 'nishant', 'mathhar', 'nishant@gmail.com', '123Raj', b'0', '2021-03-27 21:16:00', NULL, NULL, NULL, b'1'),
(10, 1, 'rohan', 'sharma', 'rohansharma@gmail.com', '123Raj', b'0', '2021-03-27 21:16:56', NULL, NULL, NULL, b'1'),
(11, 2, 'deep', 'patel', 'deeppatel@gmail.com', '123Raj', b'1', '2021-03-27 21:17:21', NULL, NULL, NULL, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`downloadid`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `seller` (`seller`),
  ADD KEY `downloader` (`downloader`),
  ADD KEY `ispaid` (`ispaid`);

--
-- Indexes for table `notecategories`
--
ALTER TABLE `notecategories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `notetypes`
--
ALTER TABLE `notetypes`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `referencedata`
--
ALTER TABLE `referencedata`
  ADD PRIMARY KEY (`refdataid`);

--
-- Indexes for table `sellernotes`
--
ALTER TABLE `sellernotes`
  ADD PRIMARY KEY (`noteid`),
  ADD KEY `sellerid` (`sellerid`),
  ADD KEY `status` (`status`),
  ADD KEY `actionedby` (`actionedby`),
  ADD KEY `category` (`category`),
  ADD KEY `notetype` (`notetype`),
  ADD KEY `country` (`country`),
  ADD KEY `ispaid` (`ispaid`);

--
-- Indexes for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  ADD PRIMARY KEY (`note_attach_id`),
  ADD KEY `noteid` (`noteid`);

--
-- Indexes for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  ADD PRIMARY KEY (`note_reportid`),
  ADD KEY `againstdownloaderid` (`againstdownloaderid`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `reprotedbyid` (`reprotedbyid`);

--
-- Indexes for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  ADD PRIMARY KEY (`note_review_id`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `againstdownloadsid` (`againstdownloadsid`);

--
-- Indexes for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  ADD PRIMARY KEY (`configid`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`userprofileid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `gender` (`gender`),
  ADD KEY `phone_country_code` (`phone_country_code`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `emailid` (`emailid`),
  ADD KEY `roleid` (`roleid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `downloadid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `notecategories`
--
ALTER TABLE `notecategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notetypes`
--
ALTER TABLE `notetypes`
  MODIFY `typeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referencedata`
--
ALTER TABLE `referencedata`
  MODIFY `refdataid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sellernotes`
--
ALTER TABLE `sellernotes`
  MODIFY `noteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  MODIFY `note_attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  MODIFY `note_reportid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  MODIFY `note_review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  MODIFY `configid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `userprofileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `roleid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_ibfk_1` FOREIGN KEY (`noteid`) REFERENCES `sellernotes` (`noteid`),
  ADD CONSTRAINT `downloads_ibfk_2` FOREIGN KEY (`seller`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `downloads_ibfk_3` FOREIGN KEY (`downloader`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `downloads_ibfk_4` FOREIGN KEY (`ispaid`) REFERENCES `referencedata` (`refdataid`);

--
-- Constraints for table `sellernotes`
--
ALTER TABLE `sellernotes`
  ADD CONSTRAINT `sellernotes_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotes_ibfk_2` FOREIGN KEY (`status`) REFERENCES `referencedata` (`refdataid`),
  ADD CONSTRAINT `sellernotes_ibfk_3` FOREIGN KEY (`actionedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotes_ibfk_4` FOREIGN KEY (`category`) REFERENCES `notecategories` (`categoryid`),
  ADD CONSTRAINT `sellernotes_ibfk_5` FOREIGN KEY (`notetype`) REFERENCES `notetypes` (`typeid`),
  ADD CONSTRAINT `sellernotes_ibfk_6` FOREIGN KEY (`country`) REFERENCES `countries` (`countryid`),
  ADD CONSTRAINT `sellernotes_ibfk_7` FOREIGN KEY (`ispaid`) REFERENCES `referencedata` (`refdataid`);

--
-- Constraints for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  ADD CONSTRAINT `sellernotesattachements_ibfk_1` FOREIGN KEY (`noteid`) REFERENCES `sellernotes` (`noteid`);

--
-- Constraints for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  ADD CONSTRAINT `sellernotesreportedissues_ibfk_1` FOREIGN KEY (`againstdownloaderid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotesreportedissues_ibfk_2` FOREIGN KEY (`noteid`) REFERENCES `sellernotes` (`noteid`),
  ADD CONSTRAINT `sellernotesreportedissues_ibfk_3` FOREIGN KEY (`reprotedbyid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  ADD CONSTRAINT `sellernotesreview_ibfk_1` FOREIGN KEY (`noteid`) REFERENCES `sellernotes` (`noteid`),
  ADD CONSTRAINT `sellernotesreview_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotesreview_ibfk_3` FOREIGN KEY (`againstdownloadsid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `userroles` (`roleid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
