-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2024 at 11:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `request_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `responsiveness` varchar(255) NOT NULL,
  `reliability` varchar(255) NOT NULL,
  `access` varchar(255) NOT NULL,
  `costs` varchar(255) NOT NULL,
  `integrity` varchar(255) NOT NULL,
  `communication` varchar(255) NOT NULL,
  `assurance` varchar(255) NOT NULL,
  `outcome` varchar(255) NOT NULL,
  `suggestions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `description`, `student`, `course`, `year_level`, `responsiveness`, `reliability`, `access`, `costs`, `integrity`, `communication`, `assurance`, `outcome`, `suggestions`) VALUES
(105, 'qwertyui', 'student', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '2nd Year', '5', '5', '5', '5', '5', '5', '5', '5', 'wertyujnbv'),
(106, 'wertyu', 'Parent/Guardian', '', '', '4', '4', '4', '4', '4', '4', '4', '4', 'ertyhj'),
(107, 'WERG', 'Parent/Guardian', '', '', '5', '5', '5', '5', '5', '5', '5', '5', 'WERTYUIO'),
(108, 'iuytfvb', 'Faculty/Staff', '', '', '5', '5', '5', '5', '5', '5', '5', '5', 'oiuytre'),
(109, 'qwertyui', 'student', 'BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY', '2nd Year', '5', '5', '5', '5', '3', '3', '3', '3', 'wertyui'),
(110, 'aswdfg', 'Parent/Guardian', '', '', '5', '5', '5', '5', '5', '5', '5', '5', 'sdfghjk'),
(111, 'wertyui', 'student', 'BSIT ', '2', '5', '5', '5', '5', '5', '5', '5', '5', 'asdfghj'),
(112, 'wertyui', 'student', 'BSIT ', '2', '5', '5', '5', '5', '5', '5', '5', '5', 'asdfghj');

-- --------------------------------------------------------

--
-- Table structure for table `work_requests`
--

CREATE TABLE `work_requests` (
  `id` int NOT NULL,
  `time_of_request` time DEFAULT NULL,
  `date_of_request` date DEFAULT NULL,
  `requester_name` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `work_requested` varchar(255) DEFAULT NULL,
  `detailed_description` text,
  `action_taken` text,
  `approved` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `work_requests`
--

INSERT INTO `work_requests` (`id`, `time_of_request`, `date_of_request`, `requester_name`, `request_type`, `work_requested`, `detailed_description`, `action_taken`, `approved`) VALUES
(149, '18:07:00', '2024-03-26', 'SANDRA BAUL', 'ADMINISTRATOR', 'No work requested', 'PRIVATE PURPOSES', 'wert6yujhgf', 'JUNNIE RYH SUMACOT - HEAD, CISA'),
(152, '18:51:00', '2024-03-26', 'sdf', 'ADMINISTRATOR', 'No work requested', 'gh', 'wgfew', 'JUNNIE RYH SUMACOT - HEAD, CISA'),
(153, '18:57:00', '2024-03-26', 'qwertyuwertyu', 'ADMINISTRATOR', 'No work requested', '345yuj', 'werty', 'JUNNIE RYH SUMACOT - HEAD, CISA'),
(154, '19:17:00', '2024-03-26', 'qwert', 'DEPARTMENT', 'No work requested', 'qwertyu', 'qwerty', 'JUNNIE RYH SUMACOT - HEAD, CISA'),
(155, '19:23:00', '2024-03-26', 'SDFG', 'CISA OFFICE', 'something', 'sdfgh', 'qwertyuio', 'JUNNIE RYH SUMACOT - HEAD, CISA'),
(156, '19:23:00', '2024-03-26', 'SDFG', 'CISA OFFICE', 'something', 'sdfgh', 'qwertyuio', 'JUNNIE RYH SUMACOT - HEAD, CISA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_requests`
--
ALTER TABLE `work_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `work_requests`
--
ALTER TABLE `work_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
