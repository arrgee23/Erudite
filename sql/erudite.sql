-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2015 at 08:52 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `erudite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `executive_table`
--

CREATE TABLE IF NOT EXISTS `executive_table` (
  `ex_id` int(10) NOT NULL AUTO_INCREMENT,
  `ex_user_id` varchar(50) NOT NULL,
  `ex_password` varchar(50) NOT NULL,
  `ex_name` varchar(50) NOT NULL,
  PRIMARY KEY (`ex_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `executive_table`
--

INSERT INTO `executive_table` (`ex_id`, `ex_user_id`, `ex_password`, `ex_name`) VALUES
(1, 'executive_user1', 'secure', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

CREATE TABLE IF NOT EXISTS `segment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`id`, `name`) VALUES
(1, 'class i-vi'),
(2, 'class vii-x'),
(3, 'class xi-xii');

-- --------------------------------------------------------

--
-- Table structure for table `segmentsubject`
--

CREATE TABLE IF NOT EXISTS `segmentsubject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `segmentId` int(10) NOT NULL,
  `subjectId` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `segmentId` (`segmentId`),
  KEY `subjectId` (`subjectId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `segmentsubject`
--

INSERT INTO `segmentsubject` (`id`, `segmentId`, `subjectId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 2),
(5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(1, 'English'),
(2, 'Math'),
(3, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `teacherarea`
--

CREATE TABLE IF NOT EXISTS `teacherarea` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `teacherId` int(10) NOT NULL,
  `areaId` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherId` (`teacherId`,`areaId`),
  KEY `areaId` (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teachersegmentsubject`
--

CREATE TABLE IF NOT EXISTS `teachersegmentsubject` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `teacherId` int(10) NOT NULL,
  `segmentId` int(10) NOT NULL,
  `subjectId` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherId` (`teacherId`,`segmentId`,`subjectId`),
  KEY `segmentId` (`segmentId`),
  KEY `subjectId` (`subjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_details`
--

CREATE TABLE IF NOT EXISTS `teacher_details` (
  `t_id` int(10) NOT NULL AUTO_INCREMENT,
  `t_img` blob NOT NULL,
  `t_nm` varchar(60) NOT NULL,
  `t_dob` varchar(10) NOT NULL,
  `t_age` varchar(10) NOT NULL,
  `t_gen` varchar(10) NOT NULL,
  `t_married` varchar(10) NOT NULL,
  `t_ph` varchar(20) NOT NULL,
  `t_aph` varchar(20) NOT NULL,
  `t_email` varchar(50) NOT NULL,
  `t_padd` varchar(100) NOT NULL,
  `t_cadd` varchar(100) NOT NULL,
  `t_area` varchar(100) NOT NULL,
  `t_carea` varchar(100) NOT NULL,
  `t_hqua` varchar(50) NOT NULL,
  `t_sub` varchar(50) NOT NULL,
  `t_ins` varchar(100) NOT NULL,
  `t_exp` varchar(10) NOT NULL,
  `t_cact` varchar(50) NOT NULL,
  `t_seg1` varchar(50) NOT NULL,
  `t_seg1_sub` varchar(50) NOT NULL,
  `t_seg2` varchar(50) NOT NULL,
  `t_seg2_sub` varchar(50) NOT NULL,
  `t_seg3` varchar(50) NOT NULL,
  `t_seg3_sub` varchar(50) NOT NULL,
  `t_seg4` varchar(50) NOT NULL,
  `t_seg4_sub` varchar(50) NOT NULL,
  `t_cv` longtext NOT NULL,
  `t_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `t_source` varchar(150) NOT NULL,
  `t_doneby` varchar(50) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `segmentsubject`
--
ALTER TABLE `segmentsubject`
  ADD CONSTRAINT `segmentsubject_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `segmentsubject_ibfk_1` FOREIGN KEY (`segmentId`) REFERENCES `segment` (`id`);

--
-- Constraints for table `teacherarea`
--
ALTER TABLE `teacherarea`
  ADD CONSTRAINT `teacherarea_ibfk_2` FOREIGN KEY (`areaId`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `teacherarea_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teacher_details` (`t_id`);

--
-- Constraints for table `teachersegmentsubject`
--
ALTER TABLE `teachersegmentsubject`
  ADD CONSTRAINT `teachersegmentsubject_ibfk_3` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `teachersegmentsubject_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teacher_details` (`t_id`),
  ADD CONSTRAINT `teachersegmentsubject_ibfk_2` FOREIGN KEY (`segmentId`) REFERENCES `segment` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
