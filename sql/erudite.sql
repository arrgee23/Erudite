-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2015 at 08:54 PM
-- Server version: 5.1.61-community
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
