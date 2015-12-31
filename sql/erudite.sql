-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2015 at 12:16 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`) VALUES
(1, 'A.J.C Bose Road'),
(2, 'Agarpara'),
(3, 'Ahiritola'),
(4, 'Airport 1 no Gate'),
(5, 'Ajoynagar'),
(6, 'Alambazar'),
(7, 'Alipore'),
(8, 'Amharst Street'),
(9, 'Ananda Palit'),
(10, 'Ariadaha'),
(11, 'arihitola'),
(12, 'Ashok Nagar'),
(13, 'Avishikta'),
(14, 'B. T. Road'),
(15, 'Babughat'),
(16, 'Bagbazar'),
(17, 'Baghajatin'),
(18, 'Baguihati'),
(19, 'Baidyabati'),
(20, 'Ballygunge'),
(21, 'Ballygunge Circular Road'),
(22, 'Banhugli'),
(23, 'Bansdroni'),
(24, 'Barabazar Market'),
(25, 'Baranagar'),
(26, 'Barasat'),
(27, 'Barisha'),
(28, 'Barrackpore'),
(29, 'Baruipur'),
(30, 'Beckbagan'),
(31, 'Behala'),
(32, 'Belgharia'),
(33, 'Belghoria'),
(34, 'Beliaghata'),
(35, 'Bhatpara'),
(36, 'Bhawanipur'),
(37, 'Bhowanipore'),
(38, 'Bijoygarh'),
(39, 'Birati'),
(40, 'Boral'),
(41, 'Bosepukur'),
(42, 'Bowbazar'),
(43, 'Budge Budge'),
(44, 'Camac Street'),
(45, 'Central Avenue'),
(46, 'Central Road'),
(47, 'Chakraberia'),
(48, 'Chandannagar'),
(49, 'Chandni chowk'),
(50, 'Chetla'),
(51, 'Chingrighata'),
(52, 'Chinsurah'),
(53, 'Chowringhee'),
(54, 'CIT Road'),
(55, 'City Center'),
(56, 'College Street'),
(57, 'Dakshineswar'),
(58, 'Dalhousie'),
(59, 'Dankuni'),
(60, 'Desopriya Park'),
(61, 'Dhaka Kalibari'),
(62, 'Dhakuria'),
(63, 'Dum Dum'),
(64, 'Dum Dum Chiriamore'),
(65, 'Dum Dum Metro'),
(66, 'Dumdum'),
(67, 'Dunlop'),
(68, 'Durganagar'),
(69, 'Elgin Road'),
(70, 'EM Bypass'),
(71, 'Entally'),
(72, 'Esplanade'),
(73, 'Ganguli Bagan'),
(74, 'Gardenreach'),
(75, 'Garfa'),
(76, 'Garia'),
(77, 'riahat'),
(78, 'Girish Park'),
(79, 'Golf Green'),
(80, 'Golpark'),
(81, 'Gorabazar'),
(82, 'Habra'),
(83, 'Haltu'),
(84, 'Hastings'),
(85, 'Hati Bagan'),
(86, 'Hazra'),
(87, 'Hedua Park'),
(88, 'Hiland Park'),
(89, 'Howrah'),
(90, 'Jadavpur'),
(91, 'Jodhpur Garden'),
(92, 'Jodhpur Park'),
(93, 'Kalighat'),
(94, 'Kalikapur'),
(95, 'Kalindi'),
(96, 'Kalyani'),
(97, 'Kamalgazi'),
(98, 'Kamarhati'),
(99, 'Kankurgachi'),
(100, 'Karunamoyee'),
(101, 'Kasba'),
(102, 'Kestopur'),
(103, 'Khanna Cinema'),
(104, 'Khardah'),
(105, 'Kiderpore'),
(106, 'Lake Gardens'),
(107, 'Lake Town'),
(108, 'Liluah'),
(109, 'Lords More'),
(110, 'Madanmohan Tala'),
(111, 'Madhyamgram'),
(112, 'Mahamayatala'),
(113, 'Maheshtala'),
(114, 'Manicktala'),
(115, 'Maniktala'),
(116, 'Minto Park'),
(117, 'Moulali'),
(118, 'Mudiali'),
(119, 'Nagerbazar'),
(120, 'Naihati'),
(121, 'Naktala'),
(122, 'Narendrapur'),
(123, 'Narkeldanga'),
(124, 'Netaji Nagar'),
(125, 'New Alipore'),
(126, 'New Barrackpur'),
(127, 'New Town'),
(128, 'Nimta'),
(129, 'Paikpara'),
(130, 'Palta'),
(131, 'Park Circus'),
(132, 'Park Street'),
(133, 'Parnasree Palli'),
(134, 'Patuli'),
(135, 'Peerless Hospital'),
(136, 'Phoolbagan'),
(137, 'Prince Anwar Shah Connector'),
(138, 'Prince Anwar Shah More'),
(139, 'Purbachal Kalitala Road'),
(140, 'Rabindra Sadan'),
(141, 'Rahara'),
(142, 'Rajabazar'),
(143, 'Rajarahat'),
(144, 'Rajpur'),
(145, 'Ramlal Bazar'),
(146, 'Ranikuthi'),
(147, 'Rashbehari'),
(148, 'Ruby Hospital'),
(149, 'Salkia'),
(150, 'Salt Lake'),
(151, 'Santoshpur'),
(152, 'Satgachi'),
(153, 'Sealdah'),
(154, 'Selimpur'),
(155, 'Shaker Bazar'),
(156, 'Shibpur'),
(157, 'Shreebhumi'),
(158, 'Shrimani Bazar'),
(159, 'Shyambazar'),
(160, 'Shyamnagar'),
(161, 'Shymbazar'),
(162, 'Silpara'),
(163, 'Singhabari'),
(164, 'Sinthee Road'),
(165, 'Sodepur'),
(166, 'Sonarpur'),
(167, 'South City'),
(168, 'Southern Avenue'),
(169, 'Sova Bazar'),
(170, 'Sreerampore'),
(171, 'Survey Park'),
(172, 'Talla Park Avenue'),
(173, 'Tangra'),
(174, 'Taratala'),
(175, 'Tegharia'),
(176, 'Tetultala'),
(177, 'Thakurpukur'),
(178, 'Theatre Road'),
(179, 'Tiljala'),
(180, 'Tollygunge'),
(181, 'Topsia'),
(182, 'Ultadanga'),
(183, 'Uttarpara'),
(184, 'VIP Road');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`id`, `name`) VALUES
(34, 'Nursery Level'),
(35, 'Class 1 - 5'),
(36, 'Class 6 - 8'),
(37, 'Class 9 - 10'),
(38, 'Special Education'),
(39, 'Class 11 - 12'),
(40, 'College Level'),
(41, 'Engineering Subjects'),
(42, 'Law Subjects'),
(43, 'MBA / BBA'),
(44, 'Engineering Entrance & IITJEE'),
(45, 'Medical Entrance & AIPMT'),
(46, 'CA / CS / CPT'),
(47, 'Competitive Exams'),
(48, 'Test Preparation'),
(49, 'Languages'),
(50, 'English Speaking'),
(51, 'Technology'),
(52, 'Graphics & Multimedia'),
(53, 'Programming Language'),
(54, 'Web Technologies'),
(55, 'Basic Computer / Office'),
(56, 'Application/Enterprise Platform'),
(57, 'Data Science / DBMS'),
(58, 'Certification'),
(59, 'Sports'),
(60, 'Music'),
(61, 'Dance'),
(62, 'Hobby Classes'),
(63, 'Business Training');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`) VALUES
(4, 'All Subjects'),
(5, 'Counting Skills'),
(6, 'Drawing & Painting'),
(7, 'Nursery Rhymes'),
(8, 'Reading Skills'),
(9, 'Story Telling	'),
(10, 'Writing Skills');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `segmentsubject`
--
ALTER TABLE `segmentsubject`
  ADD CONSTRAINT `segmentsubject_ibfk_1` FOREIGN KEY (`segmentId`) REFERENCES `segment` (`id`),
  ADD CONSTRAINT `segmentsubject_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`);

--
-- Constraints for table `teacherarea`
--
ALTER TABLE `teacherarea`
  ADD CONSTRAINT `teacherarea_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teacher_details` (`t_id`),
  ADD CONSTRAINT `teacherarea_ibfk_2` FOREIGN KEY (`areaId`) REFERENCES `area` (`id`);

--
-- Constraints for table `teachersegmentsubject`
--
ALTER TABLE `teachersegmentsubject`
  ADD CONSTRAINT `teachersegmentsubject_ibfk_1` FOREIGN KEY (`teacherId`) REFERENCES `teacher_details` (`t_id`),
  ADD CONSTRAINT `teachersegmentsubject_ibfk_2` FOREIGN KEY (`segmentId`) REFERENCES `segment` (`id`),
  ADD CONSTRAINT `teachersegmentsubject_ibfk_3` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
