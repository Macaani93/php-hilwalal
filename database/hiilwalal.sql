-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 08:35 AM
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
-- Database: `hiilwalal`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`ID`, `Name`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `blooddonor`
--

CREATE TABLE `blooddonor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `BloodType` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Pending',
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blooddonor`
--

INSERT INTO `blooddonor` (`ID`, `Name`, `Address`, `Phone`, `Age`, `RegDate`, `BloodType`, `Status`, `UserID`) VALUES
(21, 'macani', '(615) 645-7353', 'wadajir', '12', '2023-06-12 06:22:21', 'A+', 'Pending', 0),
(22, 'macani', '(615) 645-7353', 'wadajir', '12', '2023-06-12 06:30:41', 'A-', 'Pending', 0),
(23, 'mohamed ahmed isse', '(615) 645-7353', 'wadajir', '12', '2023-06-12 14:20:55', 'A+', 'Pending', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bloodseeker`
--

CREATE TABLE `bloodseeker` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `BloodType` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodseeker`
--

INSERT INTO `bloodseeker` (`ID`, `Name`, `Address`, `Phone`, `BloodType`, `Age`, `RegDate`, `UserID`) VALUES
(1, 'mohamed  ahmed', 'madiino', '0617937157', '0', '21', '2023-06-12 06:24:39', 0),
(7, 'macaani', 'wadajir', '(615) 645-7353', 'O+', '21', '2023-06-12 06:49:16', 0),
(9, 'macaaani ahmed', 'wadajir', '(615) 645-7353', 'O+', '12', '2023-06-12 15:28:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `id` int(30) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `volume` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = in -stock,2=out',
  `donor_id` int(30) NOT NULL,
  `request_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_inventory`
--

INSERT INTO `blood_inventory` (`id`, `blood_group`, `volume`, `status`, `donor_id`, `request_id`, `date_created`) VALUES
(1, 'O+', 450, 1, 3, 0, '2020-10-23 00:00:00'),
(2, 'AB+', 450, 1, 1, 0, '2020-08-05 00:00:00'),
(3, 'B-', 450, 1, 2, 0, '2020-10-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `chariyah`
--

CREATE TABLE `chariyah` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `DonateDate` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Amount` double NOT NULL,
  `Description` varchar(50) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chariyah`
--

INSERT INTO `chariyah` (`ID`, `Name`, `Phone`, `Type`, `DonateDate`, `Amount`, `Description`, `UserID`, `Status`) VALUES
(1, 'mohamed  ahmed', '0617937157', '', '2023-06-12 07:26:32', 100, 'wadkumahsantahay', 68, ''),
(2, 'mohamed  ahmed', '0617937157', 'masjid', '2023-06-12 07:26:32', 0, 'thanks', 68, ''),
(3, 'mohamed  ahmed', '0617937157', 'masjid', '2023-06-12 07:26:32', 100, 'thanks', 68, ''),
(4, 'mohamed  ahmed', '0617937157', 'dugsi', '2023-06-12 07:37:40', 100, 'thanks', 68, '');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(30) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `blood_group`, `name`, `address`, `contact`, `email`, `date_created`) VALUES
(1, 'AB+', 'John Smith', 'Sample Address', '+18456-5455-55', 'jsmith@sample.com', '2020-10-23 09:25:57'),
(2, 'B-', 'George Wilson', 'Sample address', '8747808787', 'gwilson@sample.com', '2020-10-23 09:27:54'),
(3, 'O+', 'Claire Blake', 'Sample Address', '+6948 8542 623', 'cblake@sample.com', '2020-10-23 09:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `handedover_request`
--

CREATE TABLE `handedover_request` (
  `id` int(30) NOT NULL,
  `request_id` int(30) NOT NULL,
  `picked_up_by` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `handedover_request`
--

INSERT INTO `handedover_request` (`id`, `request_id`, `picked_up_by`, `date_created`) VALUES
(1, 2, 'Patient Brother', '2020-10-23 13:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `RegDate` varchar(50) NOT NULL,
  `Actiondate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hospitaldonors`
--

CREATE TABLE `hospitaldonors` (
  `ID` int(11) NOT NULL,
  `HospitalID` int(11) NOT NULL,
  `DonorID` int(11) NOT NULL,
  `BloodType` int(11) NOT NULL,
  `Health` varchar(50) NOT NULL,
  `RHType` varchar(50) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(20) NOT NULL,
  `patient` text NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `volume` float NOT NULL,
  `physician_name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0= pending,1= approved',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `ref_code`, `patient`, `blood_group`, `volume`, `physician_name`, `status`, `date_created`) VALUES
(2, 'Zfpshiky', 'Mike Williams', 'O+', 450, 'Doctor John', 1, '2020-10-23 10:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `sadaqah`
--

CREATE TABLE `sadaqah` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Amount` double NOT NULL,
  `RegDate` varchar(50) NOT NULL,
  `SadaqaID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Blood Bank Management System', 'info@sample.comm', '+6948 8542 623', '1603344720_1602738120_pngtree-purple-hd-business-banner-image_5493.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Phone`, `UserName`, `Password`, `Role`) VALUES
(68, 'mohamed ahmed isse', '(615) 645-7353', 'admin123', 'admin123', 'Admin'),
(77, 'mohamed ahmed isse', '(615) 645-7353', 'admin34', '12', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blooddonor`
--
ALTER TABLE `blooddonor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `bloodseeker`
--
ALTER TABLE `bloodseeker`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BloodType` (`BloodType`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `chariyah`
--
ALTER TABLE `chariyah`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hospitaldonors`
--
ALTER TABLE `hospitaldonors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `DonorID` (`DonorID`),
  ADD KEY `HospitalID` (`HospitalID`),
  ADD KEY `BloodType` (`BloodType`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `sadaqah`
--
ALTER TABLE `sadaqah`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blooddonor`
--
ALTER TABLE `blooddonor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `bloodseeker`
--
ALTER TABLE `bloodseeker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chariyah`
--
ALTER TABLE `chariyah`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitaldonors`
--
ALTER TABLE `hospitaldonors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sadaqah`
--
ALTER TABLE `sadaqah`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chariyah`
--
ALTER TABLE `chariyah`
  ADD CONSTRAINT `chariyah_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `hospitaldonors`
--
ALTER TABLE `hospitaldonors`
  ADD CONSTRAINT `hospitaldonors_ibfk_1` FOREIGN KEY (`DonorID`) REFERENCES `blooddonor` (`ID`),
  ADD CONSTRAINT `hospitaldonors_ibfk_2` FOREIGN KEY (`HospitalID`) REFERENCES `hospital` (`ID`),
  ADD CONSTRAINT `hospitaldonors_ibfk_3` FOREIGN KEY (`BloodType`) REFERENCES `blood` (`ID`),
  ADD CONSTRAINT `hospitaldonors_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `users` (`ID`);

--
-- Constraints for table `sadaqah`
--
ALTER TABLE `sadaqah`
  ADD CONSTRAINT `sadaqah_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
