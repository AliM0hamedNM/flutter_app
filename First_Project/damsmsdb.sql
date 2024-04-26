-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 09:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `drugs`
--

CREATE TABLE `drugs` (
  `NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `BARCODE` varchar(20) NOT NULL,
  `DOSE` varchar(10) NOT NULL,
  `CODE` varchar(10) NOT NULL,
  `COST_PRICE` double NOT NULL,
  `SELLING_PRICE` double NOT NULL,
  `EXPIRY` varchar(20) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `PRODUCTION_DATE` date NOT NULL,
  `EXPIRATION_DATE` date NOT NULL,
  `PLACE` varchar(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drugs`
--

INSERT INTO `drugs` (`NAME`, `TYPE`, `BARCODE`, `DOSE`, `CODE`, `COST_PRICE`, `SELLING_PRICE`, `EXPIRY`, `COMPANY_NAME`, `PRODUCTION_DATE`, `EXPIRATION_DATE`, `PLACE`, `QUANTITY`, `id`) VALUES
('Novalo', 'Bills', 'fsdgjfihjorodsf', 'normal', '3d00', 2, 3, 'Available for use', 'Med_City', '2017-03-03', '2019-03-03', 'N-Right', 40, 1),
('novafol', 'Bills', 'ftrkl432432md', 'normal', '2xaa', 33, 40, 'Available for use', 'Med_City', '2016-01-01', '2017-01-01', 'N-Left', 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 141561395, 'Rajesh Kaur', 989, 'raj@gmail.com', '2022-11-12', '12:41:00', '2', 2, 'Thanks', '2022-11-10 06:11:50', 'Cancelled due to incorrect mobile number', 'Cancelled', '2022-11-10 12:40:35'),
(2, 499219152, 'Mukesh Yadav', 7977797979, 'mukesh@gmail.com', '2022-11-13', '12:30:00', '2', 2, 'bmnbmngfugwakJDiowhfdgr', '2022-11-10 07:08:58', 'Your appointment has been approved, kindly came at mention time', 'Approved', '2022-11-10 12:34:41'),
(3, 485109480, 'Tina Yadav', 4654564464, 'tina@gmail.com', '2022-11-11', '13:00:00', '1', 1, 'bjnbjh', '2022-11-10 12:08:51', 'Appointment request has been approved', 'Approved', '2022-11-10 14:32:29'),
(4, 611388102, 'Jyoti', 7897987987, 'jyoti@gmail.com', '2022-11-12', '02:00:00', '1', 1, 'Thanks', '2022-11-10 14:31:17', 'ggh', 'Approved', '2024-04-25 08:12:32'),
(5, 607441873, 'Anuj kumar', 1425362514, 'anujkkk@hmak.com', '2022-11-16', '20:50:00', '1', 1, 'NA', '2022-11-11 01:19:37', NULL, NULL, NULL),
(6, 667282012, 'Rahul', 1425251414, 'rk@gmail.com', '2022-11-15', '18:31:00', '2', 2, 'NA', '2022-11-11 01:48:52', 'Approved', 'Approved', '2022-11-11 07:24:25'),
(7, 599829368, 'Anita', 4563214563, 'anta@test.com', '2022-11-25', '15:20:00', '2', 2, 'NA', '2022-11-11 01:49:54', NULL, NULL, NULL),
(8, 940019123, 'Amit Kumar', 1425362514, 'amitkr123@test.com', '2022-11-15', '12:30:00', '13', 4, 'NA', '2022-11-11 01:56:17', 'Your appointment has been approved.', 'Approved', '2022-11-11 01:56:55'),
(9, 415003599, 'ksdaskdj', 772395758, 'jdslkajdfjoj@gmail.com', '2024-04-23', '09:12:00', '2', 3, '', '2024-04-22 06:10:10', NULL, NULL, NULL),
(10, 330611453, 'ali', 780726626, 'ali@email.com', '2024-08-14', '12:13:00', '11', 5, '1', '2024-04-25 09:12:55', '1', 'Approved', '2024-04-25 09:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Dr.Asil Fadel Jaddou\' Al-Shawk', 7801067498, 'AsilFadel@gmail.com', '1', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:41:14'),
(2, 'Dr.Ali Mohammad Jalil', 7722416985, 'AliMohamed@gmail.com', '3', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:44:54'),
(3, 'Dr.Fuad Mortada Hadi', 7736522555, 'FuadMortada@gmail.com', '2', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:46:27'),
(4, 'Dr.Mustafa Hadi Al-Khayyat', 7722452614, 'MustafaHadi@gmail.com', '4', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:47:43'),
(5, 'Dr.Nahla Abu Tahin', 7733669954, 'Nahla@gmail.com', '11', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:48:55'),
(6, 'Dr.Tamader Sabah Al-Hasnawi', 7722694535, 'TamaderSa@yahoo.com', '10', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:49:47'),
(7, 'Dr.Sa\'ib Mohammed Al-Amiri', 7801055214, 'Sa\'ib@yahoo.com', '9', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:51:15'),
(8, 'Dr.Hamsa Zaki Al-Asadi', 7801695222, 'HamsaZaki@gmail.com', '8', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:52:05'),
(9, 'Dr.Hussam Ghazi Al-Anbari', 7722418899, 'Hussam@gmail.com', '7', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:52:58'),
(10, 'Dr.Riyadh Taha', 7733636558, 'RiyadhTaha@yahoo.com', '6', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 14:54:56'),
(11, 'Hawraa Al-Ghanimi', 7806314777, 'Hawraa@gmail.com', '5', '25d55ad283aa400af464c76d713c07ad', '2024-04-20 15:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To give every customer much more than what he/she asks for in terms of quality, selection, value for money and customer service, by understanding local tastes and preferences and innovating constantly to eventually provide an unmatched experience in jewellery shopping.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@gmail.com', 7896541239, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Obstetrics and Gynecology', '2024-04-03 13:59:24'),
(2, 'Internal Medicine - Cardiology', '2024-04-09 14:23:42'),
(3, 'medical diagnostic radiology -board', '2024-04-09 14:23:42'),
(4, 'Dentistry', '2024-04-09 14:23:42'),
(5, 'Cancer Specialty', '2024-04-09 15:23:42'),
(6, 'Kidney Surgery - Urology', '2024-04-09 14:22:42'),
(7, 'Brain Surgery - Spine-Neurospinal', '2024-04-19 14:23:42'),
(8, 'Dental Treatment', '2024-03-09 14:23:42'),
(9, 'Pediatric Medicine', '2024-02-09 14:23:42'),
(10, 'Rheumatology Board', '2024-04-09 14:17:20'),
(11, 'Dermatology- Cosmetic -  Laser', '2024-04-06 14:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id`, `drug_id`, `patient_id`) VALUES
(1, 485109480, 1),
(2, 485109480, 1),
(3, 485109480, 1),
(4, 485109480, 2),
(5, 2, 485109480),
(6, 1, 485109480),
(7, 2, 485109480),
(8, 1, 611388102),
(9, 2, 611388102),
(10, 2, 330611453);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drugs`
--
ALTER TABLE `drugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drugs`
--
ALTER TABLE `drugs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
