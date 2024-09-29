-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2025 at 05:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin',9335775857, 'asdurgesh54@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-05-02 10:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplyjob`
--

CREATE TABLE `tblapplyjob` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) DEFAULT NULL,
  `JobId` int(10) DEFAULT NULL,
  `Resume` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Message` mediumtext NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `ResponseDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplyjob`
--

INSERT INTO `tblapplyjob` (`ID`, `UserId`, `JobId`, `Resume`, `ApplyDate`, `Message`, `Remark`, `Status`, `ResponseDate`) VALUES
(1, 1, 3, 'c8655d07599e03ce75ad25ed078d6b741567663469.pdf', '2024-05-05 06:04:29', 'Comes with original documents', '', 'Sorted', '2024-05-14 08:50:46'),
(2, 1, 4, 'c8655d07599e03ce75ad25ed078d6b741567663734.pdf', '2024-05-08 06:08:54', 'hgfhfhfh', '', 'Rejected', '2024-05-09 07:25:58'),
(3, 2, 4, 'c8655d07599e03ce75ad25ed078d6b741567668198.pdf', '2024-05-08 07:23:18', 'Come with your original documents', '', 'Sorted', '2024-05-14 08:50:52'),
(4, 2, 5, 'c8655d07599e03ce75ad25ed078d6b741567668243.pdf', '2024-05-05 07:24:03', 'ghiuiui', '', 'Sorted', '2024-05-14 08:50:56'),
(5, 1, 3, 'd41d8cd98f00b204e9800998ecf8427e1567746238.pdf', '2024-05-06 05:03:58', '', '', NULL, '0000-00-00 00:00:00'),
(6, 1, 6, 'd41d8cd98f00b204e9800998ecf8427e1568013929.pdf', '2024-05-09 07:25:29', 'This is sample text for testing.', '', 'Rejected', '2024-10-07 17:06:09'),
(7, 1, 12, 'd41d8cd98f00b204e9800998ecf8427e1568371755.pdf', '2024-05-13 10:49:15', '', '', NULL, '0000-00-00 00:00:00'),
(8, 5, 13, 'd41d8cd98f00b204e9800998ecf8427e1570475698.doc', '2024-06-07 19:14:58', '', '', NULL, '0000-00-00 00:00:00'),
(9, 6, 13, 'd41d8cd98f00b204e9800998ecf8427e1570640146.doc', '2024-06-05 16:55:46', '', '', NULL, '0000-00-00 00:00:00'),
(10, 6, 14, 'd41d8cd98f00b204e9800998ecf8427e1570640600.doc', '2024-06-09 17:03:20', 'Your application is sort listed.', '', 'Sorted', '2024-06-09 17:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `ContactPerson` varchar(100) DEFAULT NULL,
  `CompanyUrl` varchar(200) DEFAULT NULL,
  `CompanyAddress` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `CompanyEmail` varchar(200) DEFAULT NULL,
  `CompanyLogo` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `CompanyRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `ContactPerson`, `CompanyUrl`, `CompanyAddress`, `MobileNumber`, `CompanyEmail`, `CompanyLogo`, `Password`, `CompanyRegdate`) VALUES
(1, 'Infosys Pvt Ltd', 'Sanjana Verma', 'www.infosytem.com', 'h-123, banglore behind Aswgandha park', 9856232528, 'infosys@gmail.com', '02822fc031d560839f95fa6eb21f86111568180093.png', '202cb962ac59075b964b07152d234b70', '2024-04-02 13:29:51'),
(2, 'HCL Pvt lt', 'Sneha Rathore', 'www.hcl.com', 'g-123, sector- 63 noida', 8989898989, 'hcl@gmail.com', 'b64810fde7027715e614449aff1d595f1567485537.png', '202cb962ac59075b964b07152d234b70', '2024-04-03 04:38:57'),
(3, 'TCS pvt ltd', 'Sudhir Sharma', 'www.tcs.com', 'fgfgfguytutuyujytu', 8887898989, 'support@gmail.com', 'c26be60cfd1ba40772b5ac48b95ab19b1567753271.png', '202cb962ac59075b964b07152d234b70', '2024-04-06 07:01:11'),
(4, 'Religare Pvt Ltd', 'Mahesh Kumar Singh', 'www.religare.com', 'H-321 Sector 4 Noida',7234523543 , 'religare@gmail.com', 'b9fb9d37bdf15a699bc071ce49baea531568302051.jpg', '202cb962ac59075b964b07152d234b70', '2024-05-12 15:27:31'),
(5, 'HSBC', 'Anuj Kumar Tiwari', 'hsbc.com', 'New Delhi', 8956247994, 'anuj@hsbc.com', 'a5847551a6f83c78a36c9440eb48c7e61570640305.png', 'f925916e2754e5e03f75dd58a5733251', '2024-06-09 16:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbleducation`
--

CREATE TABLE `tbleducation` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `SecondaryBoard` varchar(100) DEFAULT NULL,
  `SecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SecondaryBoardper` varchar(120) DEFAULT NULL,
  `SecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `SSecondaryBoard` varchar(120) DEFAULT NULL,
  `SSecondaryBoardyop` varchar(120) DEFAULT NULL,
  `SSecondaryBoardper` varchar(120) DEFAULT NULL,
  `SSecondaryBoardcgpa` varchar(120) DEFAULT NULL,
  `GraUni` varchar(120) DEFAULT NULL,
  `GraUniyop` varchar(120) DEFAULT NULL,
  `GraUnidper` varchar(120) DEFAULT NULL,
  `GraUnicgpa` varchar(120) DEFAULT NULL,
  `PGUni` varchar(120) DEFAULT NULL,
  `PGUniyop` varchar(120) DEFAULT NULL,
  `PGUniper` varchar(120) DEFAULT NULL,
  `PGUnicgpa` varchar(120) DEFAULT NULL,
  `ExtraCurriculars` varchar(120) DEFAULT NULL,
  `OtherAchivement` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbleducation`
--

INSERT INTO `tbleducation` (`ID`, `UserID`, `SecondaryBoard`, `SecondaryBoardyop`, `SecondaryBoardper`, `SecondaryBoardcgpa`, `SSecondaryBoard`, `SSecondaryBoardyop`, `SSecondaryBoardper`, `SSecondaryBoardcgpa`, `GraUni`, `GraUniyop`, `GraUnidper`, `GraUnicgpa`, `PGUni`, `PGUniyop`, `PGUniper`, `PGUnicgpa`, `ExtraCurriculars`, `OtherAchivement`) VALUES
(3, 1, 'CBSE', '2015', '85', '8.5', 'CBSE', '2017', '76', '7.6', 'B.TEch', '2021', '78', '7.8', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(4, 5, 'CBSE', '2014', '73', '7.3', 'CBSE', '2016', '87', '8.7', 'B.TEch', '2020', '86', '8.6', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA'),
(5, 6, 'CBSE', '2017', '87', '8.7', 'CBSE', '2019', '96', '9.6', 'B.TEch', '2023', '95', '9.5', 'NA', 'NA', 'NA', 'NA', 'Leadership', 'Intership');

-- --------------------------------------------------------

--
-- Table structure for table `tblmessage`
--

CREATE TABLE `tblmessage` (
  `ID` int(10) NOT NULL,
  `AppID` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `ResponseDate` timestamp NULL DEFAULT current_timestamp(),
  `IsRead` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmessage`
--

INSERT INTO `tblmessage` (`ID`, `AppID`, `Message`, `Status`, `ResponseDate`, `IsRead`) VALUES
(1, 8, ' This is sample text for testing.', 'Rejected', '2024-05-07 17:06:09', '1'),
(2, 10, ' Your application is sort listed.', 'Sorted', '2024-05-09 16:53:27', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '     We are the students of Bundelkhand University  pursuning BCA , pleased to introduce a professional placement services plateform. We are providing this prominent Recruitment plateform offering out of the box Campus recruitment solutions to Institutes and colleges.<div><br></div>', NULL, NULL, '2025-05-24 13:42:06'),
(2, 'contactus', 'Contact Us', '                     TIWARI GROUPS & COMPANY , LUCKNOW <div>UTTAR PRADESH, INDIA</div>', 'asdurhesh54@gmail.com', 9335775857, '2024-05-05 12:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `StudentID` varchar(120) DEFAULT NULL,
  `Gender` varchar(120) NOT NULL,
  `Address` mediumtext NOT NULL,
  `Age` int(5) NOT NULL,
  `DOB` varchar(120) NOT NULL,
  `Image` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `StudentID`, `Gender`, `Address`, `Age`, `DOB`, `Image`, `Password`, `UserRegdate`) VALUES
(1, 'Rahul Saxena', 'rahul@gmail.com', 8989898989, '567945', 'Male', 'H-456 Mayur Vihar', 26, '1990-05-01', '7fdc1a630c238af0815181f9faa190f51568183396.jpg', '202cb962ac59075b964b07152d234b70', '2024-05-04 06:08:37'),
(2, 'Farha Akthar', 'farha@gmail.com', 2525252525, '5657767', 'Female', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2023-05-04 06:09:16'),
(3, 'Akash Jain', 'jain@gmail.com', 6544646544, '667886768', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2023-05-04 06:09:54'),
(4, 'Ginni Mishra', 'ginni@gmail.com', 3636363663, '7877878', 'Female', 'NA', 0, '2001-10-07', 'b4a648e83f2d35f1286e8d139c4f74e11570468215.jpg', '202cb962ac59075b964b07152d234b70', '2024-05-04 06:10:43'),
(5, 'Anuj kumar Mishra', 'ak@gmail.com', 6174512546, 'HGH32321', 'Male', '', 0, '', '', 'f925916e2754e5e03f75dd58a5733251', '2024-06-07 17:40:35'),
(36, 'Siddhant Dixit', 'siddhantdixit97@gmail.com', 8299172714, 'ecc1814006', 'Male', '', 0, '', '', '202cb962ac59075b964b07152d234b70', '2025-01-25 06:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblvacancy`
--

CREATE TABLE `tblvacancy` (
  `ID` int(10) NOT NULL,
  `CompanyID` int(10) DEFAULT NULL,
  `JobTitle` varchar(200) DEFAULT NULL,
  `MonthlySalary` varchar(120) DEFAULT NULL,
  `JobDescriptions` mediumtext DEFAULT NULL,
  `NoofOpenings` varchar(50) DEFAULT NULL,
  `JobLocation` varchar(120) DEFAULT NULL,
  `ApplyDate` varchar(120) DEFAULT NULL,
  `LastDate` varchar(120) DEFAULT NULL,
  `JobpostingDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvacancy`
--

INSERT INTO `tblvacancy` (`ID`, `CompanyID`, `JobTitle`, `MonthlySalary`, `JobDescriptions`, `NoofOpenings`, `JobLocation`, `ApplyDate`, `LastDate`, `JobpostingDate`) VALUES
(3, 2, 'Software Engineer/Senior Software Engineer C++', '10K-25K', 'Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n', '10', 'Noida', '04-09-2024', '10-09-2024', '2024-09-03 13:06:15'),
(4, 2, 'Software Engineer, Senior Software Engineer, Module Lead', '25k-35k', 'ob Description\r\nBlue Prism Professionals | Xavient | Next- Gen Digital Solutions for Integrated Customer Experience Blue Prism Professionals - Total vacancies: 25 \r\n\r\nProposed Designation: Software Engineer, Senior Software Engineer, Module Lead \r\n\r\nDescription: Identifying and communicating the technical infrastructure requirements. Designing Blue Prism process solutions in accordance with standard Blue Prism design principles and conventions. \r\n\r\nConfiguring new Blue Prism processes and objects using core workflow principles that are efficient, well structured, maintainable and easy to understand. \r\n\r\nSupporting existing processes and implementing change requirements as part of a structured change control process. \r\n\r\nProblem solving issues that arise in day to day running of Blue Prism processes and providing timely responses and solutions as required. \r\n\r\nCommunicating with Blue Prism on software related issues, suggested improvements and participating with other users in the Blue Prism community. \r\n', '25', 'Noida', '04-09-2024', '10-10-2024', '2024-09-03 16:12:39'),
(5, 1, 'Sql Server Database Administrator', '15k-35k', 'The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server', '10', 'Jhandewalan ICICI Buliding, Delhi', '05-09-2024', '19-09-2024', '2024-09-03 16:16:56'),
(6, 1, 'SQL QEUFM Software', '10K-25K', 'Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis', '52', 'H-125 Shudha Buliding Banglore ', '03-09-2024', '10-09-2024', '2024-09-03 16:19:08'),
(7, 3, 'Software Developer(Java/.Net/PHP)', '25k-35k', 'Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n', '3', 'H-476 Noida Sector-12', '19-10-2024', '28-09-2024', '2024-09-12 20:50:39'),
(8, 3, 'Sql Server Database Administrator', '10K-25K', 'The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server', '23', 'J-123 Sector 136 Greater Noida', '12-09-2024', '26-09-2024', '2024-09-12 20:52:38'),
(9, 3, 'SQL QEUFM Software', '10K-25K', 'Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis', '12', 'K-12345, Sector 234 XYZ Banglore', '13-12-2024', '20-11-2024', '2024-09-12 20:53:58'),
(10, 4, 'Software Engineer/Senior Software Engineer C++', '15k-35k', 'Job Description\r\nSoftware Engineer/ Senior Software Engineer C++, Noida, India \r\n\r\nGeneral Description: \r\n\r\nObtaining in- depth understanding of design and implementation of existing software product. \r\n\r\nDesign, implement and deliver new features required in the product as per deadlines. \r\n\r\nApplying innovation and creativity in design and implementation of features. \r\n\r\nResolve issues observed during testing and usage of the product. \r\n\r\nDocument code consistently throughout the development process, perform thorough testing and take ownership. \r\n\r\nCandidate should be self- driven, motivated, innovative, good team player and open to feedback. \r\n\r\nWork Experience Requirements \r\n\r\nC++, VC++, Windows or Linux/ Unix Platform (C++ must). \r\n\r\nShould have strong programming skills in C++. \r\n\r\nShould be good in Software Design and Architecture. \r\n\r\nShould have very good Analytical skills \r\n\r\nResearch orientation in the area of Image/ Video Processing, Computer Vision, Pattern recognition and related domain. \r\n\r\nHave hands- on working experience in the area of Image/ Video Processing, Computer Vision, pattern Recognition and related domain (Preferred). \r\n', '10', 'H-321 Sector 4 Noida', '12-09-2024', '19-09-2024', '2024-09-12 20:59:33'),
(11, 4, 'Software Engineer, Senior Software Engineer, Module Lead', '25k-35k', 'Job Description\r\nBlue Prism Professionals | Xavient | Next- Gen Digital Solutions for Integrated Customer Experience Blue Prism Professionals - Total vacancies: 25 \r\n\r\nProposed Designation: Software Engineer, Senior Software Engineer, Module Lead \r\n\r\nDescription: Identifying and communicating the technical infrastructure requirements. Designing Blue Prism process solutions in accordance with standard Blue Prism design principles and conventions. \r\n\r\nConfiguring new Blue Prism processes and objects using core workflow principles that are efficient, well structured, maintainable and easy to understand. \r\n\r\nSupporting existing processes and implementing change requirements as part of a structured change control process. \r\n\r\nProblem solving issues that arise in day to day running of Blue Prism processes and providing timely responses and solutions as required. \r\n\r\nCommunicating with Blue Prism on software related issues, suggested improvements and participating with other users in the Blue Prism community. \r\n', '10', 'H-321 Sector 4 Noida', '14-09-2024', '19-09-2024', '2024-09-12 21:00:34'),
(12, 4, 'Sql Server Database Administrator', '10K-25K', 'The SQL Server DBA will be responsible for the implementation, configuration, maintenance, and performance of critical SQL Server RDBMS systems, to ensure the database availability catering to various applications. Provide 24x7 support for critical production systems Perform scheduled maintenance and support release deployment activities after hours. Skills and Qualifications 3 to 5 years MS SQL Server Administration experience required Excellent hand on managing SQL Server version 2005 to 2017 Experience with Performance Tuning and Optimization (PTO), using native monitoring and troubleshooting tools ( tracing, DMV, resource monitor etc. Experience with backups, restores and recovery models Experience with all kind of SQL Server troubleshooting activities Knowledge of All High Availability (HA) and Disaster Recovery (DR) options for SQL Server Excellent written and verbal communication Flexible, team player, get-it-done personality \r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: troubleshooting,  databases Other Skills: sql server,  ms sql server', '25', 'H-321 Sector 4 Noida', '13-03-2020', '19-09-2024', '2024-09-12 21:01:18'),
(13, 4, 'SQL QEUFM Software', '10K-25K', 'Job Description\r\nWe at HT Media are hiring developers who are good in python and data structures. Key skills required for the job are:1) Good knowledge of data structures 2) Aggregate of 65 in Academics in Xth, XII and B Tech 3) Must be a graduate in computer science.\r\n\r\nOther details\r\nDepartment: Application Programming / Maintenance Industry: IT - Software Skills: structures,  academics,  automata,  dbms,  addie,  sql,  python Other Skills: algorithm design,  new hire orientations,  algorithm analysis,  data structures,  theory of computation,  career development,  behavioral training,  project administration,  source insight,  training delivery,  socket programming,  gnu debugger,  discrete mathematics,  training needs analysis', '10', 'H-321 Sector 4 Noida', '14-09-2024', '27-10-2024', '2024-10-12 21:01:58'),
(14, 5, 'Web Developer', '25-30 k', 'PHP (Must)\r\nMySQL (Must)\r\nShould have knowledge of HTML,Bootstrap, and CSS ', '2', 'New Delhi India', '07-05-2025', '31-05-2025', '2024-10-09 22:30:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbleducation`
--
ALTER TABLE `tbleducation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblmessage`
--
ALTER TABLE `tblmessage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplyjob`
--
ALTER TABLE `tblapplyjob`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbleducation`
--
ALTER TABLE `tbleducation`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmessage`
--
ALTER TABLE `tblmessage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblvacancy`
--
ALTER TABLE `tblvacancy`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
