-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2018 at 06:30 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `course_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(10) unsigned NOT NULL,
  `admin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin`, `password`) VALUES
(1, 'baolam', '4806c98adf2043a4167e52a9b76cb010'),
(2, 'lol', '16fbcc10eafeaf89c7e9b2c36f3b3f81'),
(3, 'abc', '4806c98adf2043a4167e52a9b76cb010');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `schedule_day` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_student` int(10) DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_count` int(10) unsigned DEFAULT NULL,
  `end_registration` date DEFAULT NULL,
  `id_subject` int(10) unsigned NOT NULL,
  `teacher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`, `start_date`, `schedule_day`, `max_student`, `location`, `student_count`, `end_registration`, `id_subject`, `teacher`, `semester`) VALUES
(1, 'STA101', '2018-07-21', 'tuesday', 26, '102C1', 3, '2018-06-05', 3, 'Khanh', 'Fall 2018'),
(5, 'DBS101', '2018-06-23', 'tuesday: 2pm', 31, '102D2', 1, '2018-06-03', 4, 'Khanh', 'Spring 2018'),
(8, 'STA103', '2018-07-28', 'tuesday: 2pm', 25, 'C101', 3, '2018-06-02', 3, 'Long Le', 'Fall 2018'),
(9, 'STA105', '2018-07-29', 'tuesday: 2pm', 2, '102D1', 2, '2018-07-01', 3, 'Long Le', 'Spring 2018');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE IF NOT EXISTS `enrollment` (
`id` int(10) unsigned NOT NULL,
  `id_student` int(10) unsigned NOT NULL,
  `id_course` int(10) unsigned NOT NULL,
  `internal_mark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final_mark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_mark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `id_student`, `id_course`, `internal_mark`, `final_mark`, `total_mark`, `result`) VALUES
(35, 2, 1, '8.5', '3', '5.2', 'passed'),
(54, 2, 8, NULL, NULL, NULL, NULL),
(59, 1, 8, NULL, NULL, NULL, NULL),
(62, 3, 8, NULL, NULL, NULL, NULL),
(64, 3, 1, NULL, NULL, NULL, NULL),
(65, 3, 9, NULL, NULL, NULL, NULL),
(66, 2, 9, NULL, NULL, NULL, NULL),
(67, 1, 1, '7.5', '3', '4.8', 'failed'),
(69, 1, 5, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(10) unsigned NOT NULL,
  `student_id` int(10) DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `year_begin` int(10) DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `student_condition` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `password`, `full_name`, `email`, `address`, `phone`, `date_birth`, `year_begin`, `gender`, `student_condition`) VALUES
(1, 1801040299, '4806c98adf2043a4167e52a9b76cb010', 'Bao Lam', 'blam@mail.com', 'Ha Noi', '0123456789', '2001-01-01', 2018, 'male', 'Studying'),
(2, 1801040288, '4806c98adf2043a4167e52a9b76cb010', 'Bao Bao', 'blamm@mail.com', 'Ha Noi', '01234566789', '2001-01-01', 2018, 'male', 'Studying'),
(3, 1801040277, '4806c98adf2043a4167e52a9b76cb010', 'Lao Lao', 'blamm@mail.com', 'Ha Noi', '01234566789', '2001-01-01', 2018, 'male', 'Studying');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(3, 'Statistics'),
(4, 'Database system');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`id`), ADD KEY `id_subject` (`id_subject`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
 ADD PRIMARY KEY (`id`), ADD KEY `id_student` (`id_student`), ADD KEY `id_course` (`id_course`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
ADD CONSTRAINT `id_subject` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`id_student`) REFERENCES `student` (`id`),
ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`id_course`) REFERENCES `course` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
