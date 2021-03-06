-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 05:58 PM
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
  `countrycode` varchar(100) NOT NULL,
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
(1, 'Afghanistan', '+93', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(2, 'India', '+91', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(3, 'Bangladesh', '+880', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(4, 'China', '+86', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(5, 'Japan', '+81', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1'),
(6, 'United States', '+1', '2021-02-27 13:33:19', NULL, NULL, NULL, b'1');

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
(1, 123, 13, 12, b'1', NULL, b'1', '2021-03-04 04:46:50', 1, '129.62', 'comp ce', 'IT', '2021-03-04 04:04:49', NULL, NULL, NULL),
(2, 8, 9, 15, b'1', NULL, b'1', '2021-03-04 04:04:49', 1, '32.00', 'Social Studies', 'Social', '2021-03-04 04:04:49', NULL, NULL, NULL),
(3, 5, 15, 3, b'1', NULL, b'1', '2021-03-04 04:06:28', 2, '0.00', 'AI', 'IT', '2021-03-04 04:06:28', NULL, NULL, NULL),
(4, 62, 12, 6, b'1', NULL, b'1', '2021-03-04 04:06:28', 1, '3.12', 'Lorem', 'Lorem, Ipsum', '2021-03-04 04:06:28', NULL, NULL, NULL),
(5, 122, 6, 6, b'1', NULL, b'1', '2021-03-04 04:08:05', 1, '32.12', 'Science', 'Data Science', '2021-03-04 04:08:05', NULL, NULL, NULL),
(6, 114, 2, 4, b'1', NULL, b'1', '2021-03-04 04:08:05', 2, '0.00', 'lorem', 'lorem', '2021-03-04 04:08:05', NULL, NULL, NULL),
(7, 5, 16, 13, b'1', NULL, b'1', '2021-03-04 04:09:24', 1, '32.12', 'lorem', 'lorem lorem loren', '2021-03-04 04:09:24', NULL, NULL, NULL),
(8, 61, 12, 7, b'1', NULL, b'1', '2021-03-04 04:09:24', 2, '0.00', 'lorem', 'lorem lorem loren', '2021-03-04 04:09:24', NULL, NULL, NULL),
(9, 121, 13, 16, b'1', NULL, b'1', '2021-03-04 04:11:31', 1, '1.21', 'Account', 'Commerces', '2021-03-04 04:11:31', NULL, NULL, NULL),
(10, 126, 4, 9, b'1', NULL, b'1', '2021-03-04 04:11:31', 1, '3.12', 'Data Science', 'Science', '2021-03-04 04:11:31', NULL, NULL, NULL),
(11, 113, 14, 8, b'1', NULL, b'1', '2021-03-04 04:13:02', 2, '0.00', 'lorem', 'Social Studies', '2021-03-04 04:13:02', NULL, NULL, NULL),
(12, 114, 6, 5, b'1', NULL, b'1', '2021-03-04 04:13:02', 1, '3.12', 'Data Science', '	Science', '2021-03-04 04:13:02', NULL, NULL, NULL),
(13, 5, 16, 8, b'1', NULL, b'1', '2021-03-04 04:14:30', 1, '1.69', 'lorem', 'Commerce', '2021-03-04 04:14:30', NULL, NULL, NULL),
(14, 58, 14, 16, b'1', NULL, b'1', '2021-03-04 04:14:30', 1, '2.32', 'Accounts', 'lorem', '2021-03-04 04:14:30', NULL, NULL, NULL),
(15, 118, 8, 7, b'1', NULL, b'1', '2021-03-04 04:15:50', 1, '5.23', 'Data Science', 'Lorem, Ipsum', '2021-03-04 04:15:50', NULL, NULL, NULL),
(16, 122, 3, 12, b'1', NULL, b'1', '2021-03-04 04:15:50', 2, '0.00', 'lorem', 'Social Studies', '2021-03-04 04:15:50', NULL, NULL, NULL),
(17, 116, 3, 2, b'1', NULL, b'1', '2021-03-04 05:19:45', 2, '0.00', 'Maths', 'Science', '2021-03-04 05:19:45', NULL, NULL, NULL),
(18, 121, 5, 4, b'1', NULL, b'1', '2021-03-04 05:19:45', 2, '0.00', 'Biology', 'Science', '2021-03-04 05:19:45', NULL, NULL, NULL),
(19, 60, 16, 13, b'1', NULL, b'1', '2021-03-04 05:20:34', 1, '129.62', 'AI', 'IT', '2021-03-04 05:20:34', NULL, NULL, NULL);

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
(10, 'Female', 'F', 'Gender', '2021-02-28 01:54:36', 3, NULL, NULL, b'1');

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
(1, 16, 3, NULL, NULL, '2021-03-05 21:01:29', 'science 7', 4, '../Members/16/1/DP_1614958289.png', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', '../Members/16/1/Preview_1614958289.jpg', '2021-03-05 21:01:29', 16, '2021-03-05 21:04:16', NULL, b'1'),
(2, 16, 6, NULL, NULL, '2021-03-05 21:04:16', 'science 10', 2, '../Members/default/DP_default.jpg', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp ce', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:04:16', 16, '2021-03-05 21:04:16', NULL, b'1'),
(3, 16, 5, NULL, NULL, '2021-03-05 21:05:43', 'science today now', 3, '../Members/default/DP_default.jpg', 2, 214, 'About php', 'chandan', 3, 'php', '329NLW', 'Vijay Vaishnav', 2, '0.00', NULL, '2021-03-05 21:05:43', 16, '2021-03-05 21:04:16', NULL, b'1'),
(4, 16, 3, NULL, NULL, '2021-03-05 21:09:49', 'science 10', 2, '../Members/default/DP_default.jpg', 1, 217, 'sciendce book 3', 'tatvasoft house Institution ', 2, 'comp ce', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:09:49', 16, '2021-03-05 21:10:27', NULL, b'1'),
(5, 16, 6, NULL, NULL, '2021-03-05 21:10:27', 'title 2', 2, '../Members/default/DP_default.jpg', 2, 42, 'lorem', 'ac', 3, 'nanana', '999', 'Vijay Vaishnav', 1, '21.10', NULL, '2021-03-05 21:10:27', 16, '2021-03-05 21:10:27', NULL, b'1'),
(6, 16, 3, NULL, NULL, '2021-03-05 21:10:40', 'title 2', 2, '../Members/default/DP_default.jpg', 2, 42, 'lorem', 'ac', 3, 'nanana', '999', 'Vijay Vaishnav', 1, '21.10', NULL, '2021-03-05 21:10:40', 16, NULL, NULL, b'1'),
(7, 16, 6, NULL, NULL, '2021-03-05 21:10:46', 'title 2', 2, '../Members/default/DP_default.jpg', 2, 42, 'lorem', 'ac', 3, 'nanana', '999', 'Vijay Vaishnav', 1, '21.10', NULL, '2021-03-05 21:10:46', 16, NULL, NULL, b'1'),
(8, 16, 3, NULL, NULL, '2021-03-05 21:11:19', 'science', 3, '../Members/default/DP_default.jpg', 3, 319, 'lorem', 'sparsh', 4, 'nanana', '999', 'mahesh', 1, '21.10', NULL, '2021-03-05 21:11:19', 16, '2021-03-05 21:10:27', NULL, b'1'),
(9, 16, 3, NULL, NULL, '2021-03-05 21:11:25', 'science', 3, '../Members/default/DP_default.jpg', 3, 319, 'lorem', 'sparsh', 4, 'nanana', '999', 'mahesh', 1, '21.10', NULL, '2021-03-05 21:11:25', 16, '2021-03-05 21:10:27', NULL, b'1'),
(10, 16, 6, NULL, NULL, '2021-03-05 21:12:15', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:15', 16, '2021-03-05 21:10:27', NULL, b'1'),
(11, 16, 6, NULL, NULL, '2021-03-05 21:12:20', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:20', 16, '2021-03-05 21:12:20', NULL, b'1'),
(12, 16, 3, NULL, NULL, '2021-03-05 21:12:24', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:24', 16, '2021-03-05 21:12:20', NULL, b'1'),
(13, 16, 6, NULL, NULL, '2021-03-05 21:12:30', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:30', 16, '2021-03-05 22:16:27', NULL, b'1'),
(14, 16, 4, NULL, NULL, '2021-03-05 21:12:34', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:34', 16, NULL, NULL, b'1'),
(15, 16, 5, NULL, NULL, '2021-03-05 21:12:39', 'maths', 1, '../Members/default/DP_default.jpg', 2, 331, 'lorem lorem', 'machine', 2, 'java', '29u3KAN', 'prajapati rahul', 2, '0.00', NULL, '2021-03-05 21:12:39', 16, '2021-03-05 21:10:27', NULL, b'1'),
(16, 16, 6, NULL, NULL, '2021-03-05 21:13:49', 'history', 3, '../Members/default/DP_default.jpg', 1, 98, 'description here', 'mahindra', 4, 'crash course', '3920NLWK', 'sohil gambhir', 1, '91.12', NULL, '2021-03-05 21:13:49', 16, '2021-03-05 21:15:35', NULL, b'1'),
(17, 16, 5, NULL, NULL, '2021-03-05 21:13:55', 'history', 3, '../Members/default/DP_default.jpg', 1, 98, 'description here', 'mahindra', 4, 'crash course', '3920NLWK', 'sohil gambhir', 1, '91.12', NULL, '2021-03-05 21:13:55', 16, '2021-03-05 21:15:35', NULL, b'1'),
(18, 16, 5, NULL, NULL, '2021-03-05 21:14:02', 'history', 3, '../Members/default/DP_default.jpg', 1, 98, 'description here', 'mahindra', 4, 'crash course', '3920NLWK', 'sohil gambhir', 1, '91.12', NULL, '2021-03-05 21:14:02', 16, '2021-03-05 21:15:35', NULL, b'1'),
(19, 16, 6, NULL, NULL, '2021-03-05 21:14:07', 'history', 3, '../Members/default/DP_default.jpg', 1, 98, 'description here', 'mahindra', 4, 'crash course', '3920NLWK', 'sohil gambhir', 1, '91.12', NULL, '2021-03-05 21:14:07', 16, '2021-03-05 21:15:35', NULL, b'1'),
(20, 16, 3, NULL, NULL, '2021-03-05 21:14:13', 'history', 3, '../Members/default/DP_default.jpg', 1, 98, 'description here', 'mahindra', 4, 'crash course', '3920NLWK', 'sohil gambhir', 1, '91.12', NULL, '2021-03-05 21:14:13', 16, '2021-03-05 21:15:35', NULL, b'1'),
(21, 16, 4, NULL, NULL, '2021-03-05 21:15:35', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:15:35', 16, '2021-03-05 21:15:35', NULL, b'1'),
(22, 16, 5, NULL, NULL, '2021-03-05 21:15:41', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:15:41', 16, '2021-03-05 21:15:54', NULL, b'1'),
(23, 16, 6, NULL, NULL, '2021-03-05 21:15:48', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:15:48', 16, '2021-03-05 21:15:54', NULL, b'1'),
(24, 16, 3, NULL, NULL, '2021-03-05 21:15:54', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:15:54', 16, '2021-03-05 21:15:54', NULL, b'1'),
(25, 16, 6, NULL, NULL, '2021-03-05 21:16:00', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:00', 16, '2021-03-05 21:15:54', NULL, b'1'),
(26, 16, 6, NULL, NULL, '2021-03-05 21:16:07', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:07', 16, NULL, NULL, b'1'),
(27, 16, 3, NULL, NULL, '2021-03-05 21:16:12', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:12', 16, NULL, NULL, b'1'),
(28, 16, 5, NULL, NULL, '2021-03-05 21:16:17', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:17', 16, NULL, NULL, b'1'),
(29, 16, 3, NULL, NULL, '2021-03-05 21:16:23', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:23', 16, NULL, NULL, b'1'),
(30, 16, 6, NULL, NULL, '2021-03-05 21:16:30', 'socials', 2, '../Members/default/DP_default.jpg', 2, 219, 'description here now', 'mahindra', 2, 'crash course couse', '542FSSA', 'rathod janvi', 2, '0.00', NULL, '2021-03-05 21:16:30', 16, NULL, NULL, b'1'),
(31, 16, 5, NULL, NULL, '2021-03-05 21:23:48', 'science today now', 3, '../Members/default/DP_default.jpg', 2, 214, 'About php', 'chandan', 3, 'php', '329NLW', 'Vijay Vaishnav', 2, '0.00', NULL, '2021-03-05 21:23:48', 16, NULL, NULL, b'1'),
(32, 16, 3, NULL, NULL, '2021-03-05 21:26:33', 'GK', 4, '../Members/default/DP_default.jpg', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:26:33', 16, NULL, NULL, b'1'),
(33, 16, 3, NULL, NULL, '2021-03-05 21:26:45', 'english Grammer ', 4, '../Members/default/DP_default.jpg', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:26:45', 16, NULL, NULL, b'1'),
(34, 16, 5, NULL, NULL, '2021-03-05 21:31:31', 'english Grammer ', 4, '../Members/default/DP_default.jpg', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:31:31', 16, NULL, NULL, b'1'),
(35, 16, 3, NULL, NULL, '2021-03-05 21:32:31', 'GK', 4, '../Members/default/DP_default.jpg', 2, 217, 'sciendce book', 'tatvasoft house Institution ', 2, 'comp', '2983WNQ', 'Vijay Vaishnav', 1, '21.45', NULL, '2021-03-05 21:32:31', 16, NULL, NULL, b'1'),
(36, 16, 5, NULL, NULL, '2021-03-05 21:33:12', 'science today first', 3, '../Members/default/DP_default.jpg', 2, 214, 'About php', 'chandan', 3, 'php', '329NLW', 'Vijay Vaishnav', 2, '0.00', NULL, '2021-03-05 21:33:12', 16, NULL, NULL, b'1'),
(37, 16, 3, NULL, NULL, '2021-03-05 21:33:42', 'science', 3, '../Members/default/DP_default.jpg', 3, 319, 'lorem', 'sparsh', 4, 'nanana', '999', 'mahesh', 1, '21.10', NULL, '2021-03-05 21:33:42', 16, NULL, NULL, b'1');

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
(1, 34, '1_1614960091pdf', '../Members/16/34/Attachements/1_1614960091.pdf', '2021-03-05 21:31:31', 16, NULL, NULL, b'1'),
(2, 35, '2_1614960151pdf', '../Members/16/35/Attachements/2_1614960151.pdf', '2021-03-05 21:32:31', 16, NULL, NULL, b'1'),
(3, 35, '3_1614960151pdf', '../Members/16/35/Attachements/3_1614960151.pdf', '2021-03-05 21:32:31', 16, NULL, NULL, b'1'),
(4, 35, '4_1614960151pdf', '../Members/16/35/Attachements/4_1614960151.pdf', '2021-03-05 21:32:31', 16, NULL, NULL, b'1'),
(5, 35, '5_1614960151pdf', '../Members/16/35/Attachements/5_1614960151.pdf', '2021-03-05 21:32:31', 16, NULL, NULL, b'1'),
(6, 36, '6_1614960192pdf', '../Members/16/36/Attachements/6_1614960192.pdf', '2021-03-05 21:33:12', 16, NULL, NULL, b'1'),
(7, 36, '7_1614960192pdf', '../Members/16/36/Attachements/7_1614960192.pdf', '2021-03-05 21:33:12', 16, NULL, NULL, b'1'),
(8, 36, '8_1614960192pdf', '../Members/16/36/Attachements/8_1614960192.pdf', '2021-03-05 21:33:12', 16, NULL, NULL, b'1'),
(9, 37, '9_1614960222pdf', '../Members/16/37/Attachements/9_1614960222.pdf', '2021-03-05 21:33:42', 16, NULL, NULL, b'1'),
(10, 37, '10_1614960222pdf', '../Members/16/37/Attachements/10_1614960222.pdf', '2021-03-05 21:33:42', 16, NULL, NULL, b'1'),
(11, 37, '11_1614960222pdf', '../Members/16/37/Attachements/11_1614960222.pdf', '2021-03-05 21:33:42', 16, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreportedissues`
--

CREATE TABLE `sellernotesreportedissues` (
  `note_reportid` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reprotedbyid` int(10) UNSIGNED NOT NULL,
  `againstdownloadid` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreview`
--

CREATE TABLE `sellernotesreview` (
  `note_review_id` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED NOT NULL,
  `againstdownloadsid` int(10) UNSIGNED NOT NULL,
  `ratings` decimal(10,0) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `dob` datetime DEFAULT NULL,
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
(2, 1, 'Rajesh', 'Gohil', 'raj.famous7@gmail.com', 'u0YAuCRdfIZk', b'1', '2021-02-25 18:59:35', NULL, NULL, NULL, b'1'),
(3, 1, 'mahesh', 'bhatt', 'rajgohil06@gmail.com', 'NuQdxUF1KuUH', b'1', '2021-02-25 19:01:10', NULL, NULL, NULL, b'1'),
(4, 1, 'rekha', 'sharma', 'rekhasharma@gmail.com', 'ABC', b'1', '2021-02-25 19:04:09', NULL, NULL, NULL, b'1'),
(5, 1, 'sumit', 'mehta', 'sumitmehta@gmail.com', 'xyz', b'1', '2021-02-25 19:04:09', NULL, NULL, NULL, b'1'),
(6, 2, 'parth', 'daki', 'dakiparth@gmail.com', 'N9wirw3st2fC', b'1', '2021-02-26 17:30:18', NULL, NULL, NULL, b'1'),
(7, 2, 'taral', 'patel', 'taralpatel@gmail.com', 'taral123', b'1', '2021-02-26 17:30:18', NULL, NULL, NULL, b'1'),
(8, 2, 'monil', 'patel', 'monilpatel@gmail.com', 'ATi84TuEPsCE', b'1', '2021-02-26 17:31:28', NULL, NULL, NULL, b'1'),
(9, 2, 'raj', 'gohil', 'rajgohil0609@gmail.com', 'mKzDaDfo5GJ8', b'1', '2021-02-26 18:47:25', NULL, NULL, NULL, b'1'),
(12, 1, 'dipesh', 'pithadiya', 'dipeshpithadiya12@gmail.com', '123', b'1', '2021-02-28 22:34:29', NULL, NULL, NULL, b'1'),
(13, 1, 'Krupa', 'islaniya', 'krupaislaniya@gmail.com', '123', b'0', '2021-03-01 23:10:42', NULL, NULL, NULL, b'1'),
(14, 1, 'aman', 'jhurani', 'amanjhurani5@gmail.com', 'aman123', b'1', '2021-03-01 23:11:25', NULL, NULL, NULL, b'1'),
(15, 1, 'nandini', 'virani', 'nandiivirani2000@gmail.com', '123', b'0', '2021-03-01 23:12:54', NULL, NULL, NULL, b'1'),
(16, 1, 'nandini', 'virani', 'nandivirani2000@gmail.com', '123', b'1', '2021-03-01 23:13:48', NULL, NULL, NULL, b'1');

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
  ADD KEY `noteid` (`noteid`),
  ADD KEY `reprotedbyid` (`reprotedbyid`),
  ADD KEY `againstdownloadid` (`againstdownloadid`);

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
  MODIFY `downloadid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `refdataid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sellernotes`
--
ALTER TABLE `sellernotes`
  MODIFY `noteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  MODIFY `note_attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  MODIFY `note_reportid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  MODIFY `note_review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  MODIFY `configid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `userprofileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `roleid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
