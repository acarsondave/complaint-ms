-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 05, 2020 at 12:05 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'chimdindu', '05-07-2020 02:12:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'E-commerce', 'E-commerce', '2017-03-28 07:10:55', '2019-06-24 07:06:04'),
(2, 'general', 'dsdas', '2017-06-11 10:54:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `remarkDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 5, 'in process', 'test Data', '2019-06-24 07:26:17'),
(7, 23, 'in process', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-06-24 10:34:47'),
(8, 23, 'closed', 'Issue resolved ', '2019-06-24 10:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Anambra State', '', '2020-06-18 11:35:02', '2020-07-04 19:51:00'),
(4, 'Edo', 'ddsa', '2020-06-18 11:35:02', '2020-07-04 19:51:00'),
(5, 'Enugu', 'Blah...', '2020-06-18 11:35:02', '2020-07-04 19:51:00'),
(6, 'Lagos', 'lalalala', '2020-06-18 11:35:02', '2020-06-18 11:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online Shopping', '2020-06-18 11:35:02', '2020-07-04 19:51:46'),
(2, 1, 'E-wllaet', '2020-06-18 11:35:02', '2020-07-04 19:51:46'),
(3, 2, 'other', '2020-06-18 11:35:02', '2020-07-04 19:51:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'Awka', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', '', '2020-06-18 11:35:02', 'closed', '2020-06-18 11:35:02'),
(2, 1, 1, 'Online SHopping', 'General Query', 'Lagos', 'testing', 'sample text for demo', '', '2020-06-18 11:35:02', 'in process', '2020-06-18 11:35:02'),
(3, 1, 1, 'Online SHopping', ' Complaint', 'Edo', 'ferwekt lwentgwewt', 'wetwetwe', '', '2020-06-18 11:35:02', 'in process', '2020-06-18 11:35:02'),
(4, 1, 1, 'E-wllaet', 'General Query', 'Enugu', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '', '2020-06-18 11:35:02', 'closed', '2020-06-18 11:35:02'),
(5, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', 'in process', '2020-06-18 11:35:02'),
(6, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(7, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(8, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(9, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', 'in process', '2020-06-18 11:35:02'),
(10, 1, 1, 'E-wllaet', ' Complaint', 'Awka', 'bgfhfgh', 'hfghfgh', '', '2020-06-18 11:35:02', NULL, '2020-07-04 20:01:15'),
(11, 1, 1, 'Online SHopping', 'General Query', 'Awka', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(12, 1, 1, 'Online SHopping', 'General Query', 'Awka', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(13, 1, 1, 'Online SHopping', 'General Query', 'Awka', 'dsflsdlflsdf', 'fsdfsdfsdf', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(14, 1, 1, 'Online SHopping', ' Complaint', 'Enugu', 'vcxvxcvxcv', 'cvcx', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(15, 1, 1, 'E-wllaet', 'General Query', 'Lagos', 'dsfsd', 'fsdfsdf', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(16, 1, 1, 'E-wllaet', 'General Query', 'Enugu', 'dsfsd', 'fsdfsdf', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(17, 5, 1, 'E-wllaet', ' Complaint', 'fsdfs', 'regarding refund', 'test test', '', '2020-06-18 11:35:02', NULL, '2020-07-04 20:04:35'),
(18, 5, 1, 'Online SHopping', ' Complaint', 'Abia', 'yhytr', 'rtytry', '', '2020-06-18 11:35:02', NULL, '2020-06-18 11:35:02'),
(19, 6, 1, 'Online SHopping', ' Complaint', 'Enugu', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', '', '2020-06-18 11:35:02', 'closed', '2020-06-18 11:35:02'),
(20, 1, 1, 'E-wllaet', 'General Query', 'fsdfs', 'sdgsdg', 'gdgsdgsd', '', '2020-06-18 11:35:02', NULL, '2020-07-04 20:04:35'),
(21, 1, 1, 'Online SHopping', 'General Query', 'Awka', 'csdf', 'fsdfs', '', '2020-06-18 11:35:02', NULL, '2020-07-04 20:05:26'),
(22, 1, 1, 'Online SHopping', 'General Query', 'Abia', 'csdf', 'fsdfs', '', '2020-06-18 11:35:02', NULL, '2020-07-04 20:05:26'),
(23, 1, 1, 'E-wllaet', ' Complaint', 'Abuja', 'This is sample text for testing.', 'This is sample text for testing.', '2a09969b-c3d5-467b-82b0-2cf5aeb903eb_200x200.png', '2020-06-18 11:35:02', 'closed', '2020-06-18 11:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(2, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(3, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(11, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(12, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(13, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(14, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(15, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(16, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(17, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '2020-6-18 12:35:02', 1),
(22, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(23, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(24, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 0),
(25, 1, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-18 11:35:02', '', 1),
(26, 1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-24 10:27:30', '24-06-2019 04:11:08 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Test User', 'test@gmail.com', 'chimdindu', 9999857860, 'Enugu', 'Enugu State', 'Nigeria', 100110, '6e8024ec26c292f258ec30f01e0392dc.png', '2020-06-18 11:35:02', '2020-06-18 11:35:02', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
