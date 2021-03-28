-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 09:51 AM
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
(1, 34, 3, 1, b'1', '../Members/3/34/Attachements/39_1616900547.pdf', b'1', '2021-03-28 09:43:35', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 09:43:35', 1, '2021-03-28 09:43:35', 1),
(2, 34, 3, 1, b'1', '../Members/3/34/Attachements/40_1616900547.pdf', b'1', '2021-03-28 09:43:35', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 09:43:35', 1, '2021-03-28 09:43:35', 1),
(3, 25, 2, 1, b'1', '../Members/2/25/Attachements/25_1616900433.pdf', b'1', '2021-03-28 09:43:43', 2, '0.00', 'The Red Badge of Courage', 'CA', '2021-03-28 09:43:43', 1, '2021-03-28 09:43:43', 1),
(4, 21, 2, 1, b'0', '../Members/2/21/Attachements/21_1616900431.pdf', b'0', '2021-03-28 09:44:16', 1, '78.45', 'Gulliver’s Travels', 'CA', '2021-03-28 09:44:16', 1, '2021-03-28 09:44:16', 1),
(5, 43, 5, 1, b'1', '../Members/5/43/Attachements/51_1616900747.pdf', b'1', '2021-03-28 09:44:31', 2, '0.00', 'The Thirty-Nine Steps', 'CA', '2021-03-28 09:44:31', 1, '2021-03-28 09:44:31', 1),
(6, 39, 5, 1, b'1', '../Members/5/39/Attachements/47_1616900744.pdf', b'0', '2021-03-28 09:44:52', 1, '218.32', 'Moby-ideas', 'CA', '2021-03-28 09:44:52', 1, '2021-03-28 09:44:52', 1),
(7, 49, 6, 2, b'1', '../Members/6/49/Attachements/57_1616901126.pdf', b'1', '2021-03-28 09:45:38', 2, '0.00', 'Sister Carrie ', 'CA', '2021-03-28 09:45:38', 2, '2021-03-28 09:45:38', 2),
(8, 42, 5, 2, b'0', '../Members/5/42/Attachements/50_1616900746.pdf', b'0', '2021-03-28 09:45:44', 1, '218.32', 'Vanity Fair', 'CA', '2021-03-28 09:45:44', 2, '2021-03-28 09:45:44', 2),
(9, 51, 8, 2, b'1', '../Members/8/51/Attachements/59_1616901365.pdf', b'0', '2021-03-28 09:45:51', 1, '11.83', 'Gentlemen Prefer Blondes', 'CA', '2021-03-28 09:45:51', 2, '2021-03-28 09:45:51', 2),
(10, 32, 3, 2, b'1', '../Members/3/32/Attachements/35_1616900546.pdf', b'1', '2021-03-28 09:46:09', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 09:46:09', 2, '2021-03-28 09:46:09', 2),
(11, 32, 3, 2, b'1', '../Members/3/32/Attachements/36_1616900546.pdf', b'1', '2021-03-28 09:46:09', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 09:46:09', 2, '2021-03-28 09:46:09', 2),
(12, 12, 1, 3, b'0', '../Members/1/12/Attachements/12_1616900176.pdf', b'0', '2021-03-28 09:46:51', 1, '45.67', 'The Narrative of Arthur Gordon Pym of Nantucket', 'IT', '2021-03-28 09:46:51', 3, '2021-03-28 09:46:51', 3),
(13, 22, 2, 3, b'1', '../Members/2/22/Attachements/22_1616900432.pdf', b'1', '2021-03-28 09:46:55', 2, '0.00', ' Robinson Crusoe', 'CA', '2021-03-28 09:46:55', 3, '2021-03-28 09:46:55', 3),
(14, 46, 6, 3, b'1', '../Members/6/46/Attachements/54_1616901125.pdf', b'1', '2021-03-28 09:47:04', 2, '0.00', 'Hadrian the Seventh ', 'CA', '2021-03-28 09:47:04', 3, '2021-03-28 09:47:04', 3),
(15, 51, 8, 3, b'0', '../Members/8/51/Attachements/59_1616901365.pdf', b'0', '2021-03-28 09:47:12', 1, '11.83', 'Gentlemen Prefer Blondes', 'CA', '2021-03-28 09:47:12', 3, '2021-03-28 09:47:12', 3),
(16, 27, 2, 3, b'0', '../Members/2/27/Attachements/27_1616900434.pdf', b'0', '2021-03-28 09:47:33', 1, '78.45', 'Jude the Obscure', 'CA', '2021-03-28 09:47:33', 3, '2021-03-28 09:47:33', 3),
(17, 25, 2, 4, b'1', '../Members/2/25/Attachements/25_1616900433.pdf', b'1', '2021-03-28 09:48:22', 2, '0.00', 'The Red Badge of Courage', 'CA', '2021-03-28 09:48:22', 4, '2021-03-28 09:48:22', 4),
(18, 52, 8, 4, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 09:48:37', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 09:48:37', 4, '2021-03-28 09:48:37', 4),
(19, 20, 2, 4, b'1', '../Members/2/20/Attachements/20_1616900431.pdf', b'1', '2021-03-28 09:48:44', 2, '0.00', ' Clarissa', 'CA', '2021-03-28 09:48:44', 4, '2021-03-28 09:48:44', 4),
(20, 13, 1, 4, b'1', '../Members/1/13/Attachements/13_1616900176.pdf', b'1', '2021-03-28 09:48:54', 2, '0.00', 'Nightmare Abbey', 'IT', '2021-03-28 09:48:54', 4, '2021-03-28 09:48:54', 4),
(21, 42, 5, 4, b'0', '../Members/5/42/Attachements/50_1616900746.pdf', b'0', '2021-03-28 09:48:59', 1, '218.32', 'Vanity Fair', 'CA', '2021-03-28 09:48:59', 4, '2021-03-28 09:48:59', 4),
(22, 22, 2, 5, b'1', '../Members/2/22/Attachements/22_1616900432.pdf', b'1', '2021-03-28 09:49:35', 2, '0.00', ' Robinson Crusoe', 'CA', '2021-03-28 09:49:35', 5, '2021-03-28 09:49:35', 5),
(23, 12, 1, 5, b'1', '../Members/1/12/Attachements/12_1616900176.pdf', b'0', '2021-03-28 10:15:26', 1, '45.67', 'The Narrative of Arthur Gordon Pym of Nantucket', 'IT', '2021-03-28 10:15:26', 5, '2021-03-28 10:15:26', 5),
(24, 14, 1, 5, b'1', '../Members/1/14/Attachements/14_1616900177.pdf', b'1', '2021-03-28 10:15:36', 1, '23.54', 'Frankenstein', 'IT', '2021-03-28 10:15:36', 5, '2021-03-28 10:15:36', 5),
(25, 52, 8, 5, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 10:15:43', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 10:15:43', 5, '2021-03-28 10:15:43', 5),
(26, 55, 8, 6, b'1', '../Members/8/55/Attachements/63_1616901367.pdf', b'1', '2021-03-28 10:16:16', 2, '0.00', ' The Rainbow', 'CA', '2021-03-28 10:16:16', 6, '2021-03-28 10:16:16', 6),
(27, 52, 8, 6, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 10:16:22', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 10:16:22', 6, '2021-03-28 10:16:22', 6),
(28, 42, 5, 6, b'0', '../Members/5/42/Attachements/50_1616900746.pdf', b'0', '2021-03-28 10:16:30', 1, '218.32', 'Vanity Fair', 'CA', '2021-03-28 10:16:30', 6, '2021-03-28 10:16:30', 6),
(29, 20, 2, 6, b'1', '../Members/2/20/Attachements/20_1616900431.pdf', b'1', '2021-03-28 10:16:38', 2, '0.00', ' Clarissa', 'CA', '2021-03-28 10:16:38', 6, '2021-03-28 10:16:38', 6),
(30, 51, 8, 6, b'0', '../Members/8/51/Attachements/59_1616901365.pdf', b'0', '2021-03-28 10:16:47', 1, '11.83', 'Gentlemen Prefer Blondes', 'CA', '2021-03-28 10:16:47', 6, '2021-03-28 10:16:47', 6),
(31, 53, 8, 6, b'1', '../Members/8/53/Attachements/61_1616901366.pdf', b'1', '2021-03-28 10:17:25', 2, '0.00', 'The Age of Innocence', 'CA', '2021-03-28 10:17:25', 6, '2021-03-28 10:17:25', 6),
(32, 13, 1, 6, b'1', '../Members/1/13/Attachements/13_1616900176.pdf', b'1', '2021-03-28 10:17:40', 2, '0.00', 'Nightmare Abbey', 'IT', '2021-03-28 10:17:40', 6, '2021-03-28 10:17:40', 6),
(33, 6, 1, 6, b'0', '../Members/1/6/Attachements/6_1616900096.pdf', b'0', '2021-03-28 10:17:51', 1, '72.18', 'David Copperfield', 'MBA', '2021-03-28 10:17:51', 6, '2021-03-28 10:17:51', 6),
(34, 53, 8, 7, b'1', '../Members/8/53/Attachements/61_1616901366.pdf', b'1', '2021-03-28 10:18:37', 2, '0.00', 'The Age of Innocence', 'CA', '2021-03-28 10:18:37', 7, '2021-03-28 10:18:37', 7),
(35, 52, 8, 7, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 10:18:42', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 10:18:42', 7, '2021-03-28 10:18:42', 7),
(36, 12, 1, 7, b'0', '../Members/1/12/Attachements/12_1616900176.pdf', b'0', '2021-03-28 10:18:49', 1, '45.67', 'The Narrative of Arthur Gordon Pym of Nantucket', 'IT', '2021-03-28 10:18:49', 7, '2021-03-28 10:18:49', 7),
(37, 46, 6, 7, b'1', '../Members/6/46/Attachements/54_1616901125.pdf', b'1', '2021-03-28 10:18:58', 2, '0.00', 'Hadrian the Seventh ', 'CA', '2021-03-28 10:18:58', 7, '2021-03-28 10:18:58', 7),
(38, 35, 3, 7, b'1', '../Members/3/35/Attachements/41_1616900547.pdf', b'1', '2021-03-28 10:19:05', 2, '0.00', 'Little Women', 'Chemistry', '2021-03-28 10:19:05', 7, '2021-03-28 10:19:05', 7),
(39, 35, 3, 7, b'1', '../Members/3/35/Attachements/42_1616900547.pdf', b'1', '2021-03-28 10:19:05', 2, '0.00', 'Little Women', 'Chemistry', '2021-03-28 10:19:05', 7, '2021-03-28 10:19:05', 7),
(40, 27, 2, 7, b'1', '../Members/2/27/Attachements/27_1616900434.pdf', b'0', '2021-03-28 10:19:15', 1, '78.45', 'Jude the Obscure', 'CA', '2021-03-28 10:19:15', 7, '2021-03-28 10:19:15', 7),
(41, 33, 3, 7, b'1', '../Members/3/33/Attachements/37_1616900546.pdf', b'0', '2021-03-28 10:19:22', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 10:19:22', 7, '2021-03-28 10:19:22', 7),
(42, 33, 3, 7, b'1', '../Members/3/33/Attachements/38_1616900546.pdf', b'0', '2021-03-28 10:19:22', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 10:19:22', 7, '2021-03-28 10:19:22', 7),
(43, 42, 5, 8, b'1', '../Members/5/42/Attachements/50_1616900746.pdf', b'0', '2021-03-28 10:20:00', 1, '218.32', 'Vanity Fair', 'CA', '2021-03-28 10:20:00', 8, '2021-03-28 10:20:00', 8),
(44, 40, 5, 8, b'1', '../Members/5/40/Attachements/48_1616900745.pdf', b'1', '2021-03-28 10:20:11', 2, '0.00', 'The Scarlet Letter', 'CA', '2021-03-28 10:20:11', 8, '2021-03-28 10:20:11', 8),
(45, 49, 6, 8, b'1', '../Members/6/49/Attachements/57_1616901126.pdf', b'1', '2021-03-28 10:20:23', 2, '0.00', 'Sister Carrie ', 'CA', '2021-03-28 10:20:23', 8, '2021-03-28 10:20:23', 8),
(46, 34, 3, 8, b'1', '../Members/3/34/Attachements/39_1616900547.pdf', b'1', '2021-03-28 10:20:32', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 10:20:32', 8, '2021-03-28 10:20:32', 8),
(47, 34, 3, 8, b'1', '../Members/3/34/Attachements/40_1616900547.pdf', b'1', '2021-03-28 10:20:32', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 10:20:32', 8, '2021-03-28 10:20:32', 8),
(48, 14, 1, 8, b'1', '../Members/1/14/Attachements/14_1616900177.pdf', b'1', '2021-03-28 10:20:41', 1, '23.54', 'Frankenstein', 'IT', '2021-03-28 10:20:41', 8, '2021-03-28 10:20:41', 8),
(49, 22, 2, 8, b'1', '../Members/2/22/Attachements/22_1616900432.pdf', b'1', '2021-03-28 10:20:47', 2, '0.00', ' Robinson Crusoe', 'CA', '2021-03-28 10:20:47', 8, '2021-03-28 10:20:47', 8),
(50, 25, 2, 8, b'1', '../Members/2/25/Attachements/25_1616900433.pdf', b'1', '2021-03-28 10:20:56', 2, '0.00', 'The Red Badge of Courage', 'CA', '2021-03-28 10:20:56', 8, '2021-03-28 10:20:56', 8),
(51, 45, 6, 8, b'0', '../Members/6/45/Attachements/53_1616901123.pdf', b'0', '2021-03-28 10:21:06', 1, '27.47', 'The History of Mr Polly', 'CA', '2021-03-28 10:21:06', 8, '2021-03-28 10:21:06', 8),
(52, 47, 6, 8, b'1', '../Members/6/47/Attachements/55_1616901125.pdf', b'1', '2021-03-28 10:21:21', 2, '0.00', 'The Golden Bowl', 'CA', '2021-03-28 10:21:21', 8, '2021-03-28 10:21:21', 8),
(53, 21, 2, 8, b'0', '../Members/2/21/Attachements/21_1616900431.pdf', b'0', '2021-03-28 10:21:31', 1, '78.45', 'Gulliver’s Travels', 'CA', '2021-03-28 10:21:31', 8, '2021-03-28 10:21:31', 8),
(54, 32, 3, 8, b'1', '../Members/3/32/Attachements/35_1616900546.pdf', b'1', '2021-03-28 10:21:39', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 10:21:39', 8, '2021-03-28 10:21:39', 8),
(55, 32, 3, 8, b'1', '../Members/3/32/Attachements/36_1616900546.pdf', b'1', '2021-03-28 10:21:39', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 10:21:39', 8, '2021-03-28 10:21:39', 8),
(56, 9, 1, 8, b'1', '../Members/1/9/Attachements/9_1616900170.pdf', b'0', '2021-03-28 10:21:48', 1, '45.67', 'Jane Eyre', 'IT', '2021-03-28 10:21:48', 8, '2021-03-28 10:21:48', 8),
(57, 6, 1, 8, b'0', '../Members/1/6/Attachements/6_1616900096.pdf', b'0', '2021-03-28 10:22:05', 1, '72.18', 'David Copperfield', 'MBA', '2021-03-28 10:22:05', 8, '2021-03-28 10:22:05', 8),
(58, 33, 3, 8, b'0', '../Members/3/33/Attachements/37_1616900546.pdf', b'0', '2021-03-28 10:22:28', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 10:22:28', 8, '2021-03-28 10:22:28', 8),
(59, 33, 3, 8, b'0', '../Members/3/33/Attachements/38_1616900546.pdf', b'0', '2021-03-28 10:22:28', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 10:22:28', 8, '2021-03-28 10:22:28', 8),
(60, 46, 6, 8, b'1', '../Members/6/46/Attachements/54_1616901125.pdf', b'1', '2021-03-28 10:22:35', 2, '0.00', 'Hadrian the Seventh ', 'CA', '2021-03-28 10:22:35', 8, '2021-03-28 10:22:35', 8),
(61, 58, 7, 12, b'1', '../Members/7/58/Attachements/67_1616908443.pdf', b'1', '2021-03-28 11:08:17', 2, '0.00', 'History of china', 'Hitroy', '2021-03-28 11:00:45', 12, '2021-03-28 11:00:45', 12),
(62, 55, 8, 12, b'1', '../Members/8/55/Attachements/63_1616901367.pdf', b'1', '2021-03-28 11:00:51', 2, '0.00', ' The Rainbow', 'CA', '2021-03-28 11:00:51', 12, '2021-03-28 11:00:51', 12),
(63, 53, 8, 12, b'1', '../Members/8/53/Attachements/61_1616901366.pdf', b'1', '2021-03-28 11:00:56', 2, '0.00', 'The Age of Innocence', 'CA', '2021-03-28 11:00:56', 12, '2021-03-28 11:00:56', 12),
(64, 52, 8, 12, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 11:01:01', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 11:01:01', 12, '2021-03-28 11:01:01', 12),
(65, 51, 8, 12, b'0', '../Members/8/51/Attachements/59_1616901365.pdf', b'0', '2021-03-28 11:01:09', 1, '11.83', 'Gentlemen Prefer Blondes', 'CA', '2021-03-28 11:01:09', 12, '2021-03-28 11:01:09', 12),
(66, 4, 1, 12, b'1', '../Members/1/4/Attachements/4_1616900095.pdf', b'1', '2021-03-28 11:01:18', 2, '0.00', 'Wuthering Heights', 'MBA', '2021-03-28 11:01:18', 12, '2021-03-28 11:01:18', 12),
(67, 20, 2, 12, b'1', '../Members/2/20/Attachements/20_1616900431.pdf', b'1', '2021-03-28 11:01:26', 2, '0.00', ' Clarissa', 'CA', '2021-03-28 11:01:26', 12, '2021-03-28 11:01:26', 12),
(68, 22, 2, 12, b'1', '../Members/2/22/Attachements/22_1616900432.pdf', b'1', '2021-03-28 11:01:31', 2, '0.00', ' Robinson Crusoe', 'CA', '2021-03-28 11:01:31', 12, '2021-03-28 11:01:31', 12),
(69, 43, 5, 12, b'1', '../Members/5/43/Attachements/51_1616900747.pdf', b'1', '2021-03-28 11:01:50', 2, '0.00', 'The Thirty-Nine Steps', 'CA', '2021-03-28 11:01:50', 12, '2021-03-28 11:01:50', 12),
(70, 6, 1, 12, b'0', '../Members/1/6/Attachements/6_1616900096.pdf', b'0', '2021-03-28 11:02:11', 1, '72.18', 'David Copperfield', 'MBA', '2021-03-28 11:02:11', 12, '2021-03-28 11:02:11', 12),
(71, 34, 3, 12, b'1', '../Members/3/34/Attachements/39_1616900547.pdf', b'1', '2021-03-28 11:02:22', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 11:02:22', 12, '2021-03-28 11:02:22', 12),
(72, 34, 3, 12, b'1', '../Members/3/34/Attachements/40_1616900547.pdf', b'1', '2021-03-28 11:02:22', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 11:02:22', 12, '2021-03-28 11:02:22', 12),
(73, 13, 1, 12, b'1', '../Members/1/13/Attachements/13_1616900176.pdf', b'1', '2021-03-28 11:02:35', 2, '0.00', 'Nightmare Abbey', 'IT', '2021-03-28 11:02:35', 12, '2021-03-28 11:02:35', 12),
(74, 32, 3, 12, b'1', '../Members/3/32/Attachements/35_1616900546.pdf', b'1', '2021-03-28 11:05:23', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 11:05:23', 12, '2021-03-28 11:05:23', 12),
(75, 32, 3, 12, b'1', '../Members/3/32/Attachements/36_1616900546.pdf', b'1', '2021-03-28 11:05:23', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 11:05:23', 12, '2021-03-28 11:05:23', 12),
(76, 33, 3, 12, b'0', '../Members/3/33/Attachements/37_1616900546.pdf', b'0', '2021-03-28 11:05:35', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 11:05:35', 12, '2021-03-28 11:05:35', 12),
(77, 33, 3, 12, b'0', '../Members/3/33/Attachements/38_1616900546.pdf', b'0', '2021-03-28 11:05:35', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 11:05:35', 12, '2021-03-28 11:05:35', 12),
(78, 39, 5, 12, b'0', '../Members/5/39/Attachements/47_1616900744.pdf', b'0', '2021-03-28 11:05:54', 1, '218.32', 'Moby-ideas', 'CA', '2021-03-28 11:05:54', 12, '2021-03-28 11:05:54', 12),
(79, 35, 3, 12, b'1', '../Members/3/35/Attachements/41_1616900547.pdf', b'1', '2021-03-28 11:06:10', 2, '0.00', 'Little Women', 'Chemistry', '2021-03-28 11:06:10', 12, '2021-03-28 11:06:10', 12),
(80, 35, 3, 12, b'1', '../Members/3/35/Attachements/42_1616900547.pdf', b'1', '2021-03-28 11:06:10', 2, '0.00', 'Little Women', 'Chemistry', '2021-03-28 11:06:10', 12, '2021-03-28 11:06:10', 12),
(81, 58, 7, 13, b'1', '../Members/7/58/Attachements/67_1616908443.pdf', b'1', '2021-03-28 11:10:03', 2, '0.00', 'History of china', 'Hitroy', '2021-03-28 11:10:03', 13, '2021-03-28 11:10:03', 13),
(82, 55, 8, 13, b'1', '../Members/8/55/Attachements/63_1616901367.pdf', b'1', '2021-03-28 11:10:08', 2, '0.00', ' The Rainbow', 'CA', '2021-03-28 11:10:08', 13, '2021-03-28 11:10:08', 13),
(83, 53, 8, 13, b'1', '../Members/8/53/Attachements/61_1616901366.pdf', b'1', '2021-03-28 11:10:13', 2, '0.00', 'The Age of Innocence', 'CA', '2021-03-28 11:10:13', 13, '2021-03-28 11:10:13', 13),
(84, 52, 8, 13, b'1', '../Members/8/52/Attachements/60_1616901366.pdf', b'1', '2021-03-28 11:10:21', 2, '0.00', 'A Passage to India', 'CA', '2021-03-28 11:10:21', 13, '2021-03-28 11:10:21', 13),
(85, 32, 3, 13, b'1', '../Members/3/32/Attachements/35_1616900546.pdf', b'1', '2021-03-28 11:10:38', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 11:10:38', 13, '2021-03-28 11:10:38', 13),
(86, 32, 3, 13, b'1', '../Members/3/32/Attachements/36_1616900546.pdf', b'1', '2021-03-28 11:10:38', 2, '0.00', 'Three Men in a Boat', 'Chemistry', '2021-03-28 11:10:38', 13, '2021-03-28 11:10:38', 13),
(87, 13, 1, 13, b'1', '../Members/1/13/Attachements/13_1616900176.pdf', b'1', '2021-03-28 11:10:59', 2, '0.00', 'Nightmare Abbey', 'IT', '2021-03-28 11:10:59', 13, '2021-03-28 11:10:59', 13),
(88, 43, 5, 13, b'1', '../Members/5/43/Attachements/51_1616900747.pdf', b'1', '2021-03-28 11:11:09', 2, '0.00', 'The Thirty-Nine Steps', 'CA', '2021-03-28 11:11:09', 13, '2021-03-28 11:11:09', 13),
(89, 33, 3, 13, b'1', '../Members/3/33/Attachements/37_1616900546.pdf', b'0', '2021-03-28 11:11:55', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 11:11:55', 13, '2021-03-28 11:11:55', 13),
(90, 33, 3, 13, b'1', '../Members/3/33/Attachements/38_1616900546.pdf', b'0', '2021-03-28 11:11:55', 1, '267.49', 'Kidnapped', 'Chemistry', '2021-03-28 11:11:55', 13, '2021-03-28 11:11:55', 13),
(91, 3, 1, 13, b'1', '../Members/1/3/Attachements/3_1616900094.pdf', b'0', '2021-03-28 11:12:07', 1, '72.18', 'Adventures of Huckleberry Finn.', 'MBA', '2021-03-28 11:12:07', 13, '2021-03-28 11:12:07', 13),
(92, 34, 3, 13, b'0', '../Members/3/34/Attachements/39_1616900547.pdf', b'0', '2021-03-28 11:24:24', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 11:24:24', 13, '2021-03-28 11:24:24', 13),
(93, 34, 3, 13, b'0', '../Members/3/34/Attachements/40_1616900547.pdf', b'0', '2021-03-28 11:24:24', 1, '26.89', 'The Way We Live Now ', 'Chemistry', '2021-03-28 11:24:24', 13, '2021-03-28 11:24:24', 13),
(94, 1, 1, 13, b'0', '../Members/1/1/Attachements/1_1616900092.pdf', b'0', '2021-03-28 11:46:29', 1, '11.56', 'the girl on the train', 'MBA', '2021-03-28 11:46:29', 13, '2021-03-28 11:46:29', 13),
(95, 58, 7, 1, b'1', '../Members/7/58/Attachements/67_1616908443.pdf', b'1', '2021-03-28 11:53:31', 2, '0.00', 'History of china', 'Hitroy', '2021-03-28 11:53:31', 1, '2021-03-28 11:53:31', 1),
(96, 58, 7, 8, b'1', '../Members/7/58/Attachements/67_1616908443.pdf', b'1', '2021-03-28 11:55:56', 2, '0.00', 'History of china', 'Hitroy', '2021-03-28 11:55:56', 8, '2021-03-28 11:55:56', 8),
(97, 55, 8, 10, b'1', '../Members/8/55/Attachements/63_1616901367.pdf', b'1', '2021-03-28 13:19:57', 2, '0.00', ' The Rainbow', 'CA', '2021-03-28 13:19:57', 10, '2021-03-28 13:19:57', 10);

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
(1, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'the girl on the train', 1, '../Members/1/1/DP_1616900092.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 1, '11.56', '../Members/1/1/Preview_1616900092.pdf', '2021-03-28 08:24:52', 1, '2021-03-28 08:24:52', NULL, b'1'),
(2, 1, 4, NULL, NULL, '2021-03-28 08:43:51', 'Ulysses', 1, '../Members/1/2/DP_1616900094.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 2, '0.00', '../Members/1/2/Preview_1616900094.pdf', '2021-03-28 08:24:54', 1, '2021-03-28 08:24:54', NULL, b'1'),
(3, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Adventures of Huckleberry Finn.', 1, '../Members/1/3/DP_1616900094.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 1, '72.18', '../Members/1/3/Preview_1616900094.pdf', '2021-03-28 08:24:54', 1, '2021-03-28 08:24:54', NULL, b'1'),
(4, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Wuthering Heights', 1, '../Members/1/4/DP_1616900095.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 2, '0.00', '../Members/1/4/Preview_1616900095.pdf', '2021-03-28 08:24:55', 1, '2021-03-28 08:24:55', NULL, b'1'),
(5, 1, 7, NULL, NULL, '2021-03-28 08:43:51', 'Emma', 1, '../Members/1/5/DP_1616900095.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 1, '7.68', '../Members/1/5/Preview_1616900095.pdf', '2021-03-28 08:24:55', 1, '2021-03-28 08:24:55', NULL, b'1'),
(6, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'David Copperfield', 1, '../Members/1/6/DP_1616900096.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 1, '72.18', '../Members/1/6/Preview_1616900096.pdf', '2021-03-28 08:24:56', 1, '2021-03-28 08:24:56', NULL, b'1'),
(8, 1, 7, NULL, NULL, '2021-03-28 08:43:51', 'Vanity Fair', 1, '../Members/1/8/DP_1616900097.jpg', 1, 71, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 1, 'reading', 'NKJ23u8', 'Vijay Vaishnav', 2, '0.00', '../Members/1/8/Preview_1616900097.pdf', '2021-03-28 08:24:57', 1, '2021-03-28 08:24:57', NULL, b'1'),
(9, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Jane Eyre', 2, '../Members/1/9/DP_1616900170.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 1, '45.67', '../Members/1/9/Preview_1616900170.pdf', '2021-03-28 08:26:10', 1, '2021-03-28 08:26:10', NULL, b'1'),
(10, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Sybil ', 2, '../Members/1/10/DP_1616900175.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 2, '0.00', '../Members/1/10/Preview_1616900175.pdf', '2021-03-28 08:26:15', 1, '2021-03-28 08:26:15', NULL, b'1'),
(12, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Narrative of Arthur Gordon Pym of Nantucket', 2, '../Members/1/12/DP_1616900176.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 1, '45.67', '../Members/1/12/Preview_1616900176.pdf', '2021-03-28 08:26:16', 1, '2021-03-28 08:26:16', NULL, b'1'),
(13, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Nightmare Abbey', 2, '../Members/1/13/DP_1616900176.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 2, '0.00', '../Members/1/13/Preview_1616900176.pdf', '2021-03-28 08:26:16', 1, '2021-03-28 08:26:16', NULL, b'1'),
(14, 1, 6, NULL, NULL, '2021-03-28 08:43:51', 'Frankenstein', 2, '../Members/1/14/DP_1616900177.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 1, '23.54', '../Members/1/14/Preview_1616900177.pdf', '2021-03-28 08:26:17', 1, '2021-03-28 08:26:17', NULL, b'1'),
(16, 1, 3, NULL, NULL, '2021-03-28 08:43:51', 'The Life and Opinions of Tristram', 2, '../Members/1/16/DP_1616900178.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 2, '0.00', '../Members/1/16/Preview_1616900178.pdf', '2021-03-28 08:26:18', 1, '2021-03-28 08:26:18', NULL, b'1'),
(17, 1, 3, NULL, NULL, '2021-03-28 08:43:51', 'Tom Jones', 2, '../Members/1/17/DP_1616900179.jpg', 2, 90, 'This quotation for Faulkner’s 1936 novel comes from the Books of Samuel, which is in the Old Testament', 'spaceX', 2, 'reading', '89u2', 'Vijay Vaishnav', 2, '0.00', '../Members/1/17/Preview_1616900179.pdf', '2021-03-28 08:26:19', 1, '2021-03-28 08:26:19', NULL, b'1'),
(19, 2, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Sun Aso Rise', 3, '../Members/2/19/DP_1616900429.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 1, '34.39', '../Members/2/19/Preview_1616900429.pdf', '2021-03-28 08:30:29', 2, '2021-03-28 08:30:29', NULL, b'1'),
(20, 2, 6, NULL, NULL, '2021-03-28 08:43:51', ' Clarissa', 3, '../Members/2/20/DP_1616900431.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 2, '0.00', '../Members/2/20/Preview_1616900431.pdf', '2021-03-28 08:30:31', 2, '2021-03-28 08:30:31', NULL, b'1'),
(21, 2, 6, NULL, NULL, '2021-03-28 08:43:51', 'Gulliver’s Travels', 3, '../Members/2/21/DP_1616900431.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 1, '78.45', '../Members/2/21/Preview_1616900431.pdf', '2021-03-28 08:30:31', 2, '2021-03-28 08:30:31', NULL, b'1'),
(22, 2, 6, NULL, NULL, '2021-03-28 08:43:51', ' Robinson Crusoe', 3, '../Members/2/22/DP_1616900432.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 2, '0.00', '../Members/2/22/Preview_1616900432.pdf', '2021-03-28 08:30:32', 2, '2021-03-28 08:30:32', NULL, b'1'),
(24, 2, 7, NULL, NULL, '2021-03-28 08:43:51', ' Dracula', 3, '../Members/2/24/DP_1616900433.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 1, '78.45', '../Members/2/24/Preview_1616900433.pdf', '2021-03-28 08:30:33', 2, '2021-03-28 08:30:33', NULL, b'1'),
(25, 2, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Red Badge of Courage', 3, '../Members/2/25/DP_1616900433.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 2, '0.00', '../Members/2/25/Preview_1616900433.pdf', '2021-03-28 08:30:33', 2, '2021-03-28 08:30:33', NULL, b'1'),
(27, 2, 6, NULL, NULL, '2021-03-28 08:43:51', 'Jude the Obscure', 3, '../Members/2/27/DP_1616900434.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 1, '78.45', '../Members/2/27/Preview_1616900434.pdf', '2021-03-28 08:30:34', 2, '2021-03-28 08:30:34', NULL, b'1'),
(28, 2, 5, NULL, NULL, '2021-03-28 08:43:51', 'New Grub Street', 3, '../Members/2/28/DP_1616900435.jpg', 3, 189, 'More Ecclesiastes! This particular quotation is from 1:5, which states that The sun also ariseth,', 'spaceX', 3, 'reading', 'FEBK29', 'ERNEST HEMINGWAY', 2, '0.00', '../Members/2/28/Preview_1616900435.pdf', '2021-03-28 08:30:35', 2, '2021-03-28 08:30:35', NULL, b'1'),
(29, 3, 3, NULL, NULL, '2021-03-28 08:43:51', 'The Picture of Dorian Gray', 5, '../Members/3/29/DP_1616900543.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 2, '0.00', '../Members/3/29/Preview_1616900543.pdf', '2021-03-28 08:32:23', 3, '2021-03-28 08:32:23', NULL, b'1'),
(31, 3, 7, NULL, NULL, '2021-03-28 08:43:51', 'The Sign of Four', 5, '../Members/3/31/DP_1616900545.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 2, '0.00', '../Members/3/31/Preview_1616900545.pdf', '2021-03-28 08:32:25', 3, '2021-03-28 08:32:25', NULL, b'1'),
(32, 3, 6, NULL, NULL, '2021-03-28 08:43:51', 'Three Men in a Boat', 5, '../Members/3/32/DP_1616900546.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 2, '0.00', '../Members/3/32/Preview_1616900546.pdf', '2021-03-28 08:32:26', 3, '2021-03-28 08:32:26', NULL, b'1'),
(33, 3, 6, NULL, NULL, '2021-03-28 08:43:51', 'Kidnapped', 5, '../Members/3/33/DP_1616900546.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 1, '267.49', '../Members/3/33/Preview_1616900546.pdf', '2021-03-28 08:32:26', 3, '2021-03-28 08:32:26', NULL, b'1'),
(34, 3, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Way We Live Now ', 5, '../Members/3/34/DP_1616900547.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 1, '26.89', '../Members/3/34/Preview_1616900547.pdf', '2021-03-28 08:32:27', 3, '2021-03-28 08:32:27', NULL, b'1'),
(35, 3, 6, NULL, NULL, '2021-03-28 08:43:51', 'Little Women', 5, '../Members/3/35/DP_1616900547.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 2, '0.00', '../Members/3/35/Preview_1616900547.pdf', '2021-03-28 08:32:27', 3, '2021-03-28 08:32:27', NULL, b'1'),
(36, 3, 7, NULL, NULL, '2021-03-28 08:43:51', 'The Moonstone', 5, '../Members/3/36/DP_1616900548.jpg', 4, 167, 'Waugh took the title for his 1930 novel from Philippians', 'spaceX', 5, 'work shop', 'af928', 'Vijay Vaishnav', 1, '267.49', '../Members/3/36/Preview_1616900548.pdf', '2021-03-28 08:32:28', 3, '2021-03-28 08:32:28', NULL, b'1'),
(38, 5, 3, NULL, NULL, '2021-03-28 08:43:51', 'Alice’s Adventures in Wonderland', 3, '../Members/5/38/DP_1616900744.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 2, '0.00', '../Members/5/38/Preview_1616900744.pdf', '2021-03-28 08:35:44', 5, '2021-03-28 08:35:44', NULL, b'1'),
(39, 5, 6, NULL, NULL, '2021-03-28 08:43:51', 'Moby-ideas', 3, '../Members/5/39/DP_1616900744.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 1, '218.32', '../Members/5/39/Preview_1616900744.pdf', '2021-03-28 08:35:44', 5, '2021-03-28 08:35:44', NULL, b'1'),
(40, 5, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Scarlet Letter', 3, '../Members/5/40/DP_1616900745.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 2, '0.00', '../Members/5/40/Preview_1616900745.pdf', '2021-03-28 08:35:45', 5, '2021-03-28 08:35:45', NULL, b'1'),
(42, 5, 6, NULL, NULL, '2021-03-28 08:43:51', 'Vanity Fair', 3, '../Members/5/42/DP_1616900746.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 1, '218.32', '../Members/5/42/Preview_1616900746.pdf', '2021-03-28 08:35:46', 5, '2021-03-28 08:35:46', NULL, b'1'),
(43, 5, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Thirty-Nine Steps', 3, '../Members/5/43/DP_1616900747.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 2, '0.00', '../Members/5/43/Preview_1616900747.pdf', '2021-03-28 08:35:47', 5, '2021-03-28 08:35:47', NULL, b'1'),
(44, 5, 5, NULL, NULL, '2021-03-28 08:43:51', 'The Good Soldier', 3, '../Members/5/44/DP_1616900749.jpg', 3, 187, 'Undoubtedly an odd quotation', 'tatvasoft Institution ', 2, 'cooking', 'BSUb12', 'STEPHEN FRY', 2, '0.00', '../Members/5/44/Preview_1616900749.pdf', '2021-03-28 08:35:49', 5, '2021-03-28 08:35:49', NULL, b'1'),
(45, 6, 6, NULL, NULL, '2021-03-28 08:43:51', 'The History of Mr Polly', 3, '../Members/6/45/DP_1616901123.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 1, '27.47', '../Members/6/45/Preview_1616901123.pdf', '2021-03-28 08:42:03', 6, '2021-03-28 08:42:03', NULL, b'1'),
(46, 6, 6, NULL, NULL, '2021-03-28 08:43:51', 'Hadrian the Seventh ', 3, '../Members/6/46/DP_1616901125.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 2, '0.00', '../Members/6/46/Preview_1616901125.pdf', '2021-03-28 08:42:05', 6, '2021-03-28 08:42:05', NULL, b'1'),
(47, 6, 6, NULL, NULL, '2021-03-28 08:43:51', 'The Golden Bowl', 3, '../Members/6/47/DP_1616901125.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 2, '0.00', '../Members/6/47/Preview_1616901125.pdf', '2021-03-28 08:42:05', 6, '2021-03-28 08:42:05', NULL, b'1'),
(48, 6, 7, NULL, NULL, '2021-03-28 08:43:51', 'The Call of the Wild', 3, '../Members/6/48/DP_1616901126.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 1, '27.47', '../Members/6/48/Preview_1616901126.pdf', '2021-03-28 08:42:06', 6, '2021-03-28 08:42:06', NULL, b'1'),
(49, 6, 6, NULL, NULL, '2021-03-28 08:43:51', 'Sister Carrie ', 3, '../Members/6/49/DP_1616901126.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 2, '0.00', '../Members/6/49/Preview_1616901126.pdf', '2021-03-28 08:42:06', 6, '2021-03-28 08:42:06', NULL, b'1'),
(50, 6, 3, NULL, NULL, '2021-03-28 08:43:51', 'Heart of Darkness', 3, '../Members/6/50/DP_1616901127.jpg', 2, 189, 'Although she’s most famous for her dystopian novel The Giver,', 'sparsh tech', 1, 'work shop', 'BFu8129', ' LOIS LOWRY', 2, '0.00', '../Members/6/50/Preview_1616901127.pdf', '2021-03-28 08:42:07', 6, '2021-03-28 08:42:07', NULL, b'1'),
(51, 8, 6, NULL, NULL, '2021-03-28 08:50:22', 'Gentlemen Prefer Blondes', 3, '../Members/8/51/DP_1616901365.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 1, '11.83', '../Members/8/51/Preview_1616901365.pdf', '2021-03-28 08:46:05', 8, '2021-03-28 08:46:05', NULL, b'1'),
(52, 8, 6, NULL, NULL, '2021-03-28 08:50:22', 'A Passage to India', 3, '../Members/8/52/DP_1616901366.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 2, '0.00', '../Members/8/52/Preview_1616901366.pdf', '2021-03-28 08:46:06', 8, '2021-03-28 08:46:06', NULL, b'1'),
(53, 8, 6, NULL, NULL, '2021-03-28 08:50:22', 'The Age of Innocence', 3, '../Members/8/53/DP_1616901366.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 2, '0.00', '../Members/8/53/Preview_1616901366.pdf', '2021-03-28 08:46:06', 8, '2021-03-28 08:46:06', NULL, b'1'),
(54, 8, 7, NULL, NULL, '2021-03-28 08:50:22', 'Of Human Bondage', 3, '../Members/8/54/DP_1616901367.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 1, '11.83', '../Members/8/54/Preview_1616901367.pdf', '2021-03-28 08:46:07', 8, '2021-03-28 08:46:07', NULL, b'1'),
(55, 8, 6, NULL, NULL, '2021-03-28 08:50:22', ' The Rainbow', 3, '../Members/8/55/DP_1616901367.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 2, '0.00', '../Members/8/55/Preview_1616901367.pdf', '2021-03-28 08:46:07', 8, '2021-03-28 08:46:07', NULL, b'1'),
(56, 8, 3, NULL, NULL, '2021-03-28 08:50:22', 'The Thirty-Nine Steps', 3, '../Members/8/56/DP_1616901368.jpg', 3, 287, 'She says this when encountering new arrivals to her island for the first time in her life', 'Google', 6, 'cooking', 'FBUI2198', 'ALDOUS HUXLEY', 2, '0.00', '../Members/8/56/Preview_1616901368.pdf', '2021-03-28 08:46:08', 8, '2021-03-28 08:46:08', NULL, b'1'),
(57, 7, 3, NULL, NULL, NULL, 'title 2', 1, '../Members/7/57/DP_1616908342.jpg', 2, 32, 'des', 'free', 2, 'nanana', '1234', 'mr.rj', 2, '0.00', NULL, '2021-03-28 10:42:22', 7, '2021-03-28 10:42:22', NULL, b'0'),
(58, 7, 6, NULL, NULL, '2021-03-28 10:46:19', 'History of china', 6, '../Members/7/58/DP_1616908443.jpg', 1, 278, 'a brif histry of india revels the truth', 'tatvasoft Institution ', 4, 'work shop', 'CBUI7812', 'Edwin Mosh', 2, '0.00', '../Members/7/58/Preview_1616908443.pdf', '2021-03-28 10:44:03', 7, '2021-03-28 10:46:19', 7, b'1'),
(59, 7, 4, NULL, NULL, NULL, 'History of india', 3, '../Members/7/59/DP_1616908545.jpg', 1, 390, 'a brif histry of india revels the truth', 'sparsh tech', 3, 'work shop', 'NDK91', 'Mosh edwin', 2, '0.00', '../Members/7/59/Preview_1616908545.pdf', '2021-03-28 10:45:45', 7, '2021-03-28 10:45:45', NULL, b'1');

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
(1, 1, '1_1616900092pdf', '../Members/1/1/Attachements/1_1616900092.pdf', '2021-03-28 08:24:52', 1, NULL, NULL, b'1'),
(2, 2, '2_1616900094pdf', '../Members/1/2/Attachements/2_1616900094.pdf', '2021-03-28 08:24:54', 1, NULL, NULL, b'1'),
(3, 3, '3_1616900094pdf', '../Members/1/3/Attachements/3_1616900094.pdf', '2021-03-28 08:24:54', 1, NULL, NULL, b'1'),
(4, 4, '4_1616900095pdf', '../Members/1/4/Attachements/4_1616900095.pdf', '2021-03-28 08:24:55', 1, NULL, NULL, b'1'),
(5, 5, '5_1616900095pdf', '../Members/1/5/Attachements/5_1616900095.pdf', '2021-03-28 08:24:55', 1, NULL, NULL, b'1'),
(6, 6, '6_1616900096pdf', '../Members/1/6/Attachements/6_1616900096.pdf', '2021-03-28 08:24:56', 1, NULL, NULL, b'1'),
(7, 7, '7_1616900096pdf', '../Members/1/7/Attachements/7_1616900096.pdf', '2021-03-28 08:24:56', 1, NULL, NULL, b'1'),
(8, 8, '8_1616900097pdf', '../Members/1/8/Attachements/8_1616900097.pdf', '2021-03-28 08:24:57', 1, NULL, NULL, b'1'),
(9, 9, '9_1616900170pdf', '../Members/1/9/Attachements/9_1616900170.pdf', '2021-03-28 08:26:10', 1, NULL, NULL, b'1'),
(10, 10, '10_1616900175pdf', '../Members/1/10/Attachements/10_1616900175.pdf', '2021-03-28 08:26:15', 1, NULL, NULL, b'1'),
(11, 11, '11_1616900175pdf', '../Members/1/11/Attachements/11_1616900175.pdf', '2021-03-28 08:26:15', 1, NULL, NULL, b'1'),
(12, 12, '12_1616900176pdf', '../Members/1/12/Attachements/12_1616900176.pdf', '2021-03-28 08:26:16', 1, NULL, NULL, b'1'),
(13, 13, '13_1616900176pdf', '../Members/1/13/Attachements/13_1616900176.pdf', '2021-03-28 08:26:16', 1, NULL, NULL, b'1'),
(14, 14, '14_1616900177pdf', '../Members/1/14/Attachements/14_1616900177.pdf', '2021-03-28 08:26:17', 1, NULL, NULL, b'1'),
(15, 15, '15_1616900178pdf', '../Members/1/15/Attachements/15_1616900178.pdf', '2021-03-28 08:26:18', 1, NULL, NULL, b'1'),
(16, 16, '16_1616900178pdf', '../Members/1/16/Attachements/16_1616900178.pdf', '2021-03-28 08:26:18', 1, NULL, NULL, b'1'),
(17, 17, '17_1616900179pdf', '../Members/1/17/Attachements/17_1616900179.pdf', '2021-03-28 08:26:19', 1, NULL, NULL, b'1'),
(18, 18, '18_1616900179pdf', '../Members/1/18/Attachements/18_1616900179.pdf', '2021-03-28 08:26:19', 1, NULL, NULL, b'1'),
(19, 19, '19_1616900429pdf', '../Members/2/19/Attachements/19_1616900429.pdf', '2021-03-28 08:30:29', 2, NULL, NULL, b'1'),
(20, 20, '20_1616900431pdf', '../Members/2/20/Attachements/20_1616900431.pdf', '2021-03-28 08:30:31', 2, NULL, NULL, b'1'),
(21, 21, '21_1616900431pdf', '../Members/2/21/Attachements/21_1616900431.pdf', '2021-03-28 08:30:31', 2, NULL, NULL, b'1'),
(22, 22, '22_1616900432pdf', '../Members/2/22/Attachements/22_1616900432.pdf', '2021-03-28 08:30:32', 2, NULL, NULL, b'1'),
(23, 23, '23_1616900432pdf', '../Members/2/23/Attachements/23_1616900432.pdf', '2021-03-28 08:30:32', 2, NULL, NULL, b'1'),
(24, 24, '24_1616900433pdf', '../Members/2/24/Attachements/24_1616900433.pdf', '2021-03-28 08:30:33', 2, NULL, NULL, b'1'),
(25, 25, '25_1616900433pdf', '../Members/2/25/Attachements/25_1616900433.pdf', '2021-03-28 08:30:33', 2, NULL, NULL, b'1'),
(26, 26, '26_1616900434pdf', '../Members/2/26/Attachements/26_1616900434.pdf', '2021-03-28 08:30:34', 2, NULL, NULL, b'1'),
(27, 27, '27_1616900434pdf', '../Members/2/27/Attachements/27_1616900434.pdf', '2021-03-28 08:30:34', 2, NULL, NULL, b'1'),
(28, 28, '28_1616900435pdf', '../Members/2/28/Attachements/28_1616900435.pdf', '2021-03-28 08:30:35', 2, NULL, NULL, b'1'),
(29, 29, '29_1616900543pdf', '../Members/3/29/Attachements/29_1616900543.pdf', '2021-03-28 08:32:23', 3, NULL, NULL, b'1'),
(30, 29, '30_1616900543pdf', '../Members/3/29/Attachements/30_1616900543.pdf', '2021-03-28 08:32:23', 3, NULL, NULL, b'1'),
(31, 30, '31_1616900545pdf', '../Members/3/30/Attachements/31_1616900545.pdf', '2021-03-28 08:32:25', 3, NULL, NULL, b'1'),
(32, 30, '32_1616900545pdf', '../Members/3/30/Attachements/32_1616900545.pdf', '2021-03-28 08:32:25', 3, NULL, NULL, b'1'),
(33, 31, '33_1616900545pdf', '../Members/3/31/Attachements/33_1616900545.pdf', '2021-03-28 08:32:25', 3, NULL, NULL, b'1'),
(34, 31, '34_1616900545pdf', '../Members/3/31/Attachements/34_1616900545.pdf', '2021-03-28 08:32:25', 3, NULL, NULL, b'1'),
(35, 32, '35_1616900546pdf', '../Members/3/32/Attachements/35_1616900546.pdf', '2021-03-28 08:32:26', 3, NULL, NULL, b'1'),
(36, 32, '36_1616900546pdf', '../Members/3/32/Attachements/36_1616900546.pdf', '2021-03-28 08:32:26', 3, NULL, NULL, b'1'),
(37, 33, '37_1616900546pdf', '../Members/3/33/Attachements/37_1616900546.pdf', '2021-03-28 08:32:26', 3, NULL, NULL, b'1'),
(38, 33, '38_1616900546pdf', '../Members/3/33/Attachements/38_1616900546.pdf', '2021-03-28 08:32:26', 3, NULL, NULL, b'1'),
(39, 34, '39_1616900547pdf', '../Members/3/34/Attachements/39_1616900547.pdf', '2021-03-28 08:32:27', 3, NULL, NULL, b'1'),
(40, 34, '40_1616900547pdf', '../Members/3/34/Attachements/40_1616900547.pdf', '2021-03-28 08:32:27', 3, NULL, NULL, b'1'),
(41, 35, '41_1616900547pdf', '../Members/3/35/Attachements/41_1616900547.pdf', '2021-03-28 08:32:27', 3, NULL, NULL, b'1'),
(42, 35, '42_1616900547pdf', '../Members/3/35/Attachements/42_1616900547.pdf', '2021-03-28 08:32:27', 3, NULL, NULL, b'1'),
(43, 36, '43_1616900548pdf', '../Members/3/36/Attachements/43_1616900548.pdf', '2021-03-28 08:32:28', 3, NULL, NULL, b'1'),
(44, 36, '44_1616900548pdf', '../Members/3/36/Attachements/44_1616900548.pdf', '2021-03-28 08:32:28', 3, NULL, NULL, b'1'),
(45, 37, '45_1616900742pdf', '../Members/5/37/Attachements/45_1616900742.pdf', '2021-03-28 08:35:42', 5, NULL, NULL, b'1'),
(46, 38, '46_1616900744pdf', '../Members/5/38/Attachements/46_1616900744.pdf', '2021-03-28 08:35:44', 5, NULL, NULL, b'1'),
(47, 39, '47_1616900744pdf', '../Members/5/39/Attachements/47_1616900744.pdf', '2021-03-28 08:35:44', 5, NULL, NULL, b'1'),
(48, 40, '48_1616900745pdf', '../Members/5/40/Attachements/48_1616900745.pdf', '2021-03-28 08:35:45', 5, NULL, NULL, b'1'),
(49, 41, '49_1616900745pdf', '../Members/5/41/Attachements/49_1616900745.pdf', '2021-03-28 08:35:45', 5, NULL, NULL, b'1'),
(50, 42, '50_1616900746pdf', '../Members/5/42/Attachements/50_1616900746.pdf', '2021-03-28 08:35:46', 5, NULL, NULL, b'1'),
(51, 43, '51_1616900747pdf', '../Members/5/43/Attachements/51_1616900747.pdf', '2021-03-28 08:35:47', 5, NULL, NULL, b'1'),
(52, 44, '52_1616900749pdf', '../Members/5/44/Attachements/52_1616900749.pdf', '2021-03-28 08:35:49', 5, NULL, NULL, b'1'),
(53, 45, '53_1616901123pdf', '../Members/6/45/Attachements/53_1616901123.pdf', '2021-03-28 08:42:03', 6, NULL, NULL, b'1'),
(54, 46, '54_1616901125pdf', '../Members/6/46/Attachements/54_1616901125.pdf', '2021-03-28 08:42:05', 6, NULL, NULL, b'1'),
(55, 47, '55_1616901125pdf', '../Members/6/47/Attachements/55_1616901125.pdf', '2021-03-28 08:42:05', 6, NULL, NULL, b'1'),
(56, 48, '56_1616901126pdf', '../Members/6/48/Attachements/56_1616901126.pdf', '2021-03-28 08:42:06', 6, NULL, NULL, b'1'),
(57, 49, '57_1616901126pdf', '../Members/6/49/Attachements/57_1616901126.pdf', '2021-03-28 08:42:06', 6, NULL, NULL, b'1'),
(58, 50, '58_1616901127pdf', '../Members/6/50/Attachements/58_1616901127.pdf', '2021-03-28 08:42:07', 6, NULL, NULL, b'1'),
(59, 51, '59_1616901365pdf', '../Members/8/51/Attachements/59_1616901365.pdf', '2021-03-28 08:46:05', 8, NULL, NULL, b'1'),
(60, 52, '60_1616901366pdf', '../Members/8/52/Attachements/60_1616901366.pdf', '2021-03-28 08:46:06', 8, NULL, NULL, b'1'),
(61, 53, '61_1616901366pdf', '../Members/8/53/Attachements/61_1616901366.pdf', '2021-03-28 08:46:06', 8, NULL, NULL, b'1'),
(62, 54, '62_1616901367pdf', '../Members/8/54/Attachements/62_1616901367.pdf', '2021-03-28 08:46:07', 8, NULL, NULL, b'1'),
(63, 55, '63_1616901367pdf', '../Members/8/55/Attachements/63_1616901367.pdf', '2021-03-28 08:46:07', 8, NULL, NULL, b'1'),
(64, 56, '64_1616901368pdf', '../Members/8/56/Attachements/64_1616901368.pdf', '2021-03-28 08:46:08', 8, NULL, NULL, b'1'),
(66, 57, '66_1616908342pdf', '../Members/7/57/Attachements/66_1616908342.pdf', '2021-03-28 10:42:22', 7, NULL, NULL, b'1'),
(67, 58, '67_1616908443pdf', '../Members/7/58/Attachements/67_1616908443.pdf', '2021-03-28 10:44:03', 7, NULL, NULL, b'1'),
(68, 59, '68_1616908545pdf', '../Members/7/59/Attachements/68_1616908545.pdf', '2021-03-28 10:45:45', 7, NULL, NULL, b'1');

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
(1, 13, 12, 1, 'very bad note', '2021-03-28 11:04:18', 12, NULL, NULL),
(2, 34, 12, 3, 'very bad note', '2021-03-28 11:04:24', 12, NULL, NULL),
(3, 22, 12, 2, 'very bad note', '2021-03-28 11:04:32', 12, NULL, NULL),
(4, 52, 12, 8, 'very bad note', '2021-03-28 11:04:37', 12, NULL, NULL),
(5, 53, 12, 8, 'very bad note', '2021-03-28 11:04:42', 12, NULL, NULL),
(6, 58, 12, 7, 'very bad note', '2021-03-28 11:04:48', 12, NULL, NULL),
(7, 55, 12, 8, 'very bad note', '2021-03-28 11:04:56', 12, NULL, NULL),
(8, 35, 12, 3, 'very bad note', '2021-03-28 11:06:38', 12, NULL, NULL),
(9, 32, 12, 3, 'very bad note', '2021-03-28 11:07:10', 12, NULL, NULL),
(10, 58, 13, 7, 'very bad', '2021-03-28 11:14:41', 13, NULL, NULL),
(11, 33, 13, 3, 'bad', '2021-03-28 11:15:00', 13, NULL, NULL),
(12, 43, 13, 5, 'very bad', '2021-03-28 11:15:27', 13, NULL, NULL),
(13, 13, 13, 1, 'very bad', '2021-03-28 11:15:45', 13, NULL, NULL),
(14, 52, 13, 8, 'very bad', '2021-03-28 11:16:33', 13, NULL, NULL),
(15, 53, 13, 8, 'very bad', '2021-03-28 11:16:53', 13, NULL, NULL),
(16, 55, 13, 8, 'very bad', '2021-03-28 11:16:59', 13, NULL, NULL);

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
(1, 13, 12, 1, '3.6', 'good', '2021-03-28 11:02:51', 12, '2021-03-28 11:02:51', 12, b'1'),
(2, 34, 12, 3, '2.6', 'Good', '2021-03-28 11:03:01', 12, '2021-03-28 11:03:01', 12, b'1'),
(3, 43, 12, 5, '1.4', 'Good', '2021-03-28 11:03:07', 12, '2021-03-28 11:03:07', 12, b'1'),
(4, 20, 12, 2, '1.0', 'Good', '2021-03-28 11:03:13', 12, '2021-03-28 11:03:13', 12, b'1'),
(5, 52, 12, 8, '2.5', 'Good', '2021-03-28 11:03:23', 12, '2021-03-28 11:03:23', 12, b'1'),
(6, 4, 12, 1, '2.6', 'Good', '2021-03-28 11:03:33', 12, '2021-03-28 11:03:33', 12, b'1'),
(7, 53, 12, 8, '3.5', 'Good', '2021-03-28 11:03:41', 12, '2021-03-28 11:03:41', 12, b'1'),
(8, 55, 12, 8, '3.4', 'Good', '2021-03-28 11:03:56', 12, '2021-03-28 11:03:56', 12, b'1'),
(10, 32, 12, 3, '4.4', 'good', '2021-03-28 11:07:05', 12, '2021-03-28 11:07:05', 12, b'1'),
(11, 3, 13, 1, '4.6', 'best', '2021-03-28 11:14:54', 13, '2021-03-28 11:14:54', 13, b'1'),
(12, 33, 13, 3, '4.4', 'very good', '2021-03-28 11:15:11', 13, '2021-03-28 11:15:11', 13, b'1'),
(13, 43, 13, 5, '1.6', 'very good', '2021-03-28 11:15:22', 13, '2021-03-28 11:15:22', 13, b'1'),
(14, 13, 13, 1, '2.6', 'good', '2021-03-28 11:15:38', 13, '2021-03-28 11:15:38', 13, b'1'),
(15, 32, 13, 3, '4.6', 'best', '2021-03-28 11:16:19', 13, '2021-03-28 11:16:19', 13, b'1'),
(16, 52, 13, 8, '2.6', 'good', '2021-03-28 11:16:28', 13, '2021-03-28 11:16:28', 13, b'1'),
(17, 53, 13, 8, '0.4', 'very bad', '2021-03-28 11:16:47', 13, '2021-03-28 11:16:47', 13, b'1'),
(18, 55, 13, 8, '1.5', 'very bad', '2021-03-28 11:17:07', 13, '2021-03-28 11:17:07', 13, b'1'),
(19, 58, 9, 7, '2.4', 'a very bad book', '2021-03-28 11:53:53', 1, '2021-03-28 11:53:53', 1, b'1'),
(20, 58, 8, 7, '3.7', 'bad', '2021-03-28 11:56:14', 8, '2021-03-28 11:56:14', 8, b'1'),
(21, 58, 12, 7, '2.5', 'Good', '2021-03-28 11:04:05', 12, '2021-03-28 11:04:05', 12, b'1'),
(22, 55, 10, 8, '0.5', 'not appropriate', '2021-03-28 13:20:17', 10, '2021-03-28 13:20:17', 10, b'1');

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
(1, 2, '1996-01-19', 9, NULL, 1, '961267127', '../Members/2/DP_1616900307.jpeg', 'ja', 'f kqjf', 'akfnk', 'vaklf q', '192912', 1, '', '', '2021-03-28 08:28:27', 2, '2021-03-28 08:28:27', 2),
(2, 1, '0000-00-00', 9, NULL, 1, '987643215', '../Members/1/DP_1616900588.jpg', 'jbds', ' akf', 'a klfn', 'f akf', '389281', 1, '', '', '2021-03-28 08:33:08', 1, '2021-03-28 08:33:08', 1),
(3, 5, '2001-01-19', 9, NULL, 1, '987654261', '../Members/5/DP_1616900653.jpg', 'fnk', 'qkfn', 'fqakfj', ' kqe', '28192', 4, '', '', '2021-03-28 08:34:13', 5, '2021-03-28 08:34:13', 5),
(4, 6, '1996-03-21', 10, NULL, 4, '9865566523', '../Members/6/DP_1616900981.jpg', 'efkfe', 'fqkfn', 'fqkfnqk', 'fqknf', '8923', 2, '', '', '2021-03-28 08:38:21', 6, '2021-03-28 08:39:41', 6);

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
(11, 2, 'deep', 'patel', 'deeppatel@gmail.com', '123Raj', b'1', '2021-03-27 21:17:21', NULL, NULL, NULL, b'1'),
(12, 1, 'param', 'mehta', 'dont_use_this_account@gmail.com', '123Raj', b'0', '2021-03-28 10:56:20', NULL, NULL, NULL, b'1'),
(13, 1, 'chavda', 'yash', 'dont_use_this_account2@gmail.com', '123Raj', b'0', '2021-03-28 10:57:12', NULL, NULL, NULL, b'1');

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
  MODIFY `downloadid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

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
  MODIFY `noteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  MODIFY `note_attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  MODIFY `note_reportid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  MODIFY `note_review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  MODIFY `configid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `userprofileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `roleid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
