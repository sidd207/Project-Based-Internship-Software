-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2016 at 08:57 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3-7+squeeze19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test_2013208`
--

-- --------------------------------------------------------

--
-- Table structure for table `CHAIRMAN`
--

CREATE TABLE IF NOT EXISTS `CHAIRMAN` (
  `CNAME` varchar(20) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `C_P_NUMBER` varchar(10) NOT NULL,
  `TENURE` varchar(20) NOT NULL,
  `CH_ID` int(7) NOT NULL,
  PRIMARY KEY (`TENURE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CHAIRMAN`
--

INSERT INTO `CHAIRMAN` (`CNAME`, `EMAIL`, `C_P_NUMBER`, `TENURE`, `CH_ID`) VALUES
('Atul Gupta', '3013001@iiitdmj.ac.in', '7788551242', '2011-2012', 3013001),
('Atul Gupta', '3013001@iiitdmj.ac.in', '7788551242', '2012-2013', 3013001),
('Atul Gupta', '3013001@iiitdmj.ac.in', '7788551242', '2013-2014', 3013001),
('Sunil Agrawal', '3013014@iiitdmj.ac.in', '7788551200', '2014-2015', 3013014),
('Prabin Kumar Padhy', '3013007@iiitdmj.ac.in', '7788551277', '2015-2016', 3013007);

-- --------------------------------------------------------

--
-- Table structure for table `COLLEGE`
--

CREATE TABLE IF NOT EXISTS `COLLEGE` (
  `CNAME` varchar(50) NOT NULL,
  `STATE` varchar(50) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `ZONE` varchar(50) NOT NULL,
  `CODE` int(1) NOT NULL,
  PRIMARY KEY (`CNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `COLLEGE`
--

INSERT INTO `COLLEGE` (`CNAME`, `STATE`, `CITY`, `ZONE`, `CODE`) VALUES
('Anna University', 'Tamil Nadu', 'Chennai', 'South', 5),
('BBD University', 'Uttar Pradesh', 'Lucknow', 'North', 6),
('BITS PILANI', 'Rajasthan', 'Pilani', 'Central', 6),
('G B Pant', 'Uttarakhand', 'Dehradun', 'North', 5),
('Galgotias', 'Uttar Pradesh', 'Ghaziabad', 'North', 6),
('GGIT JABALPUR', 'Madhya Pradesh', 'Jabalpur', 'Central', 6),
('Goel Institutions', 'Uttar Pradesh', 'Agra', 'North', 6),
('IIIT ALLAHABAD', 'Uttar Pradesh', 'Allahabad', 'North', 3),
('IIITDM', 'Madhya Pradesh', 'Jabalpur', 'Central', 3),
('IIM AHEMDABAD', 'Gujarat', 'Ahmedabad', 'West', 4),
('IIM INDORE', 'Madhya Pradesh', 'Indore', 'Central', 4),
('IIT CHENNAI', 'Tamil Nadu', 'Chennai', 'South', 1),
('IIT DELHI', 'Delhi', 'Delhi', 'North', 1),
('IIT GUWAHATI', 'Assam', 'Guwahati', 'East', 1),
('IIT INDORE', 'Madhya Pradesh', 'Indore', 'Central', 1),
('IIT KANPUR', 'Uttar Pradesh', 'Kanpur', 'North', 1),
('IIT KHARAGPUR', 'West Bengal', 'Kharagpur', 'East', 1),
('IIT MUMBAI', 'Maharashtra', 'Mumbai', 'West', 1),
('IMS College', 'West Bengal', 'Kolkata', 'East', 5),
('JEC JABALPUR', 'Madhya Pradesh', 'Jabalpur', 'Central', 5),
('MANIT', 'Madhya Pradesh', 'Bhopal', 'Central', 2),
('MNIT JAIPUR', 'Rajasthan', 'Jaipur', 'Central', 2),
('MNNIT ALLAHABAD ', 'Uttar Pradesh', 'Allahabad', 'North', 2),
('NIT HAMIRPUR', 'Himachal Pradesh', 'Hamirpur', 'North', 2),
('NIT Kurukshetra', 'Haryana', 'Bhopal', 'North', 2),
('NIT PATNA', 'Bihar', 'Patna', 'North', 2),
('NIT RAIPUR', 'Chhattisgarh', 'Raipur', 'Central', 2),
('NIT SURAT', 'Gujarat', 'Surat', 'West', 2),
('NIT TRICHY', 'Tamil Nadu', 'Trichy', 'South', 2),
('NIT WARANGAL', 'Andhra Pradesh', 'Warangal', 'South', 2),
('raj', 'Lakshadweep', 'Bhuvneshwar', 'East', 4),
('Ramswaroop', 'Uttar Pradesh', 'Lucknow', 'North', 6),
('Rkgit', 'Bihar', 'Ahmedabad', 'South', 6),
('Shanmuga University', 'Tamil Nadu', 'Chennai', 'South', 6),
('SRIT JABALPUR', 'Madhya Pradesh', 'Jabalpur', 'Central', 6);

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TABLE IF NOT EXISTS `EVENTS` (
  `ENAME` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ENAME`,`FNAME`,`CNAME`),
  KEY `FNAME` (`FNAME`),
  KEY `CNAME` (`CNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EVENTS`
--

INSERT INTO `EVENTS` (`ENAME`, `FNAME`, `CNAME`, `TYPE`) VALUES
(' Razzmatazz', 'Culrav', 'MNNIT ALLAHABAD ', 'Entertainment'),
('Aaveg', 'Utkarsh', 'BBD University', 'Entertainment'),
('AD Mad', 'Tarang', 'IIITDM', 'Entertainment'),
('App development', 'Techkriti', 'BBD University', 'Computer Science'),
('Badminton', 'Shaurya', 'IIT KHARAGPUR', 'Sports'),
('Basketball', 'Sportech', 'IIT DELHI', 'Sports'),
('Battle Of The Dances', 'Hillfair', 'NIT HAMIRPUR', 'Entertainment'),
('Battlecity', 'Techkriti', 'IIT KANPUR', 'Computer Science'),
('Beg borrow', 'Revista', 'IIITDM', 'Entertainment'),
('Bonzor', 'Utkarsh', 'BBD University', 'Entertainment'),
('BUSINESS BAZIGAR ', 'Confluence', 'IIM AHEMDABAD', 'Entertainment'),
('Circult Design', 'Technozion', 'NIT Warangal', 'Electronics'),
('Counter Strike', 'Abhikalpan', 'IIITDM', 'Gaming'),
('Cricket', 'Gusto', 'IIITDM', 'Sports'),
('Currents Tech Quiz', 'Currents', 'NIT TRICHY', 'Electronics'),
('D.O.T.A.', 'Encore', 'BBD University', 'Gaming'),
('Dance Show', 'Aaveg', 'G B Pant', 'Entertainment'),
('Debugging', 'Abhikalpan', 'IIITDM', 'Computer Science'),
('FIFA', 'Abhikalpan', 'IIITDM', 'Gaming'),
('Flash Fiction', 'Saarang', 'IIT CHENNAI', 'Entertainment'),
('Footsal', 'Aagaaz', 'JEC JABALPUR', 'Sports '),
('Frag', 'Metacognition', 'Galgotias', 'Computer Science'),
('Freestyle Racing', 'Chakravyuh', 'BBD University', 'Entertainment'),
('Grand prix', 'Techkriti', 'IIITDM', 'Computer Science'),
('Lawn Tennis', 'Sportech', 'IIT DELHI', 'Sports'),
('Lazer Show', 'Tarang', 'IIITDM', 'Entertainment'),
('Mechbot', 'Aparoksha', 'IIIT ALLAHABAD', 'Mechanical'),
('Mesmerize', 'Blitzschlag', 'MNIT JAIPUR', 'Entertainment'),
('Mime', 'Melange', 'NIT PATNA', 'Entertainment'),
('Music Night', 'Threads', 'IMS College', 'Entertainment'),
('Nukkad ', 'Antaragni ', 'IIT KANPUR', 'Entertainment'),
('Obfuscated', 'Corona', 'NIT PATNA', 'Computer Science'),
('One Act', 'Antaragni ', 'IIT KANPUR', 'Entertainment'),
('Pay bills', 'SRASTA', 'BBD University', 'Entertainment'),
('Robowar', 'Abhikalpan', 'IIITDM', 'Electronics'),
('Rock band show', 'Utkarsh', 'BBD University', 'Entertainment'),
('Solo Dance', 'Maffick', 'MANIT', 'Entertainment'),
('Solo dance', 'Utkarsh', 'BBD University', 'Entertainment'),
('Table Tennis', 'Gusto', 'IIITDM', 'Sports'),
('Theatre Night', 'Oasis', 'BITS PILANI', 'Entertainment'),
('Vanity', 'Atharv', 'IIM INDORE', 'Entertainment'),
('Vocaloid', 'Tarang', 'IIITDM', 'Entertainment'),
('Volleyball', 'Udghosh', 'IIT KANPUR', 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `FACULTY`
--

CREATE TABLE IF NOT EXISTS `FACULTY` (
  `FNAME` varchar(20) NOT NULL,
  `FACULTY_ID` int(7) NOT NULL,
  `F_P_NUMBER` varchar(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `DEPARTMENT` varchar(3) NOT NULL,
  PRIMARY KEY (`FACULTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FACULTY`
--

INSERT INTO `FACULTY` (`FNAME`, `FACULTY_ID`, `F_P_NUMBER`, `EMAIL`, `DEPARTMENT`) VALUES
('Atul Gupta', 3013001, '8989777888', '3013001@iiitdmj.ac.in', 'CSE'),
('MKBAJPAI', 3013002, '7788551244', '3013002@iiitdmj.ac.in', 'CSE'),
('PRITEE KHANNA', 3013003, '7788551255', '3013003@iiitdmj.ac.in', 'CSE'),
('Sraban Kumar Mohanty', 3013004, '7788551277', '3013004@iiitdmj.ac.in', 'CSE'),
('VKJAIN', 3013005, '7788551245', '3013005@iiitdmj.ac.in', 'CSE'),
('P. N. Kondekar ', 3013006, '7788551247', '3013006@iiitdmj.ac.in', 'ECE'),
('Prabin Kumar Padhy', 3013007, '7788551277', '3013007@iiitdmj.ac.in', 'ECE'),
('Dinesh Kumar V', 3013008, '7788551202', '3013008@iiitdmj.ac.in', 'ECE'),
('Jawar Singh', 3013009, '7788551200', '3013009@iiitdmj.ac.in', 'ECE'),
('Manoj Singh Parihar', 3013010, '7788551278', '3013010@iiitdmj.ac.in', 'ECE'),
('Puneet Tandon', 3013011, '7788551200', '3013011@iiitdmj.ac.in', 'MEC'),
('Tanuja Sheorey', 3013012, '7788551201', '3013012@iiitdmj.ac.in', 'MEC'),
('Vijay Kumar Gupta', 3013013, '7788551203', '3013013@iiitdmj.ac.in', 'MEC'),
('Sunil Agrawal', 3013014, '7788551204', '3013014@iiitdmj.ac.in', 'MEC'),
('Prashant K. Jain ', 3013015, '7788551205', '3013015@iiitdmj.ac.in', 'MEC');

-- --------------------------------------------------------

--
-- Table structure for table `FEST`
--

CREATE TABLE IF NOT EXISTS `FEST` (
  `FNAME` varchar(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `STARTM` varchar(25) NOT NULL,
  `STARTD` date NOT NULL,
  `ENDM` varchar(25) NOT NULL,
  `ENDD` date NOT NULL,
  `DESCRIPTION` varchar(400) NOT NULL,
  `WEBSITE` varchar(50) NOT NULL,
  `SHOWS` varchar(100) NOT NULL,
  PRIMARY KEY (`FNAME`,`CNAME`),
  KEY `CNAME` (`CNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FEST`
--

INSERT INTO `FEST` (`FNAME`, `CNAME`, `TYPE`, `STARTM`, `STARTD`, `ENDM`, `ENDD`, `DESCRIPTION`, `WEBSITE`, `SHOWS`) VALUES
('Aagaaz', 'JEC JABALPUR', 'Sports Fest', 'January', '2015-01-08', 'January', '2015-01-10', '', '', 'Bike Show'),
('Aakrosh', 'GGIT JABALPUR', 'Sports Fest', 'May', '2015-05-11', 'May', '2015-05-13', '', '', 'Racing'),
('Aavartan', 'NIT RAIPUR', 'Technical Fest', 'March', '2015-03-02', 'March', '2015-03-05', 'An Exhibition Of The Solutions Of The Problem Statements Provided By The Selected Teams', 'www.Aavartan.In', 'Contrahacer'),
('Aaveg', 'G B Pant', 'Cultural Fest', 'November', '2015-11-02', 'November', '2015-11-05', '', '', ''),
('Abhikalpan', 'IIITDM', 'Technical Fest', 'March', '2015-03-22', 'March', '2015-03-24', 'Largest Technical Festival of Central India', 'http://abhikalpan.org/', 'Shouvik Roy lecture'),
('Alcheringa', 'IIT GUWAHATI', 'Cultural Fest', 'Januray', '2015-01-29', 'February', '2015-02-01', 'Alcheringa is by far the largest cultural festival of North-East India and since its inception has entered its 19th edition.', 'https://alcheringa.in/', 'Model United Nations'),
('Antaragni ', 'IIT KANPUR', 'Cultural Fest', 'October', '2014-10-29', 'November', '2014-10-01', 'Antaragni is the Annual Cultural Festival of IIT Kanpur', 'http://www.antaragni.in/2014/', 'Rock Band Show'),
('Anwesha', 'NIT PATNA', 'Management Fest', 'November', '2015-11-17', 'November', '2015-11-20', '', '', 'Guest Lecture '),
('Aparoksha', 'IIIT ALLAHABAD', 'Technical Fest', 'April', '2015-04-12', 'April', '2015-04-15', 'Technical Fest of IIIT A', 'http://aparoksha.iiita.ac.in/', 'Doodle Jump'),
('Atharv', 'IIM INDORE', 'Management Fest', 'September', '2015-09-11', 'September', '2015-09-13', 'Management & Cultural Festival', 'http://atharvthefest.in', 'Avant Garde'),
('Blitzschlag', 'MNIT JAIPUR', 'Cultural Fest', 'May', '2015-05-09', 'May', '2015-05-11', 'Famous fest of MNIT', 'http://www.blitzschlagmnit.in', 'Aaveg'),
('Chakravyuh', 'BBD University', 'Sports Fest', 'March', '2015-03-19', 'March', '2015-03-22', '', '', ''),
('Confluence', 'IIM AHEMDABAD', 'Management Fest', 'November', '2014-11-26', 'November', '2014-11-29', 'Largest Management Festival of Asia', 'http://www.iimaconfluence.com/', 'BULLS & BEARS'),
('Corona', 'NIT PATNA', 'Technical Fest', '2', '2015-02-19', 'February', '2015-02-22', '', 'http://ww2.corona-nitp.in/?folio=7POYGN0G2', ''),
('Culrav', 'MNNIT ALLAHABAD ', 'Cultural Fest', 'April', '2015-04-02', 'April', '2015-04-05', ' The Cultural Rendezvous Of MNNIT Allahabad', 'http://culrav.in/', 'Natya Manch'),
('Currents', 'NIT TRICHY', 'Technical Fest', 'February', '2015-02-14', 'February', '2015-02-15', 'CURRENTS is the annual technical symposium of the Department of Electrical and Electronics Engineering of NIT Tiruchirappalli', 'http://currents.nitt.edu/', ''),
('Eclectika ', 'NIT RAIPUR', 'Cultural Fest', 'February', '2015-02-20', 'February', '2015-02-22', 'Eclectika, The Cultural Festival of National Institute of Technology Raipur, scheduled in Spring every year is considered as the biggest College festival of Central India', 'http://eclectika.org/', 'Comedy  Night'),
('Encore', 'BBD University', 'Technical Fest', 'October', '2014-10-26', 'October', '2014-10-29', '', '', 'Sprint race'),
('Fluxus', 'IIT INDORE', 'Technical Fest', 'April', '2015-04-03', 'April', '2015-04-05', 'Largest Technical Festival of Central India', 'http://fluxus.in/', ''),
('Gusto', 'IIITDM', 'Sports Fest', 'Januray', '2015-01-26', 'Januray', '2015-01-28', 'Largest Sports Festival of Central India', 'http://gusto.iiitdmj.ac.in/', 'Sania Mirza Show'),
('Hillfair', 'NIT HAMIRPUR', 'Cultural Fest', 'November', '2015-11-02', 'November', '2015-11-05', 'HILLâ€™FFAIR is the most anticipated cultural event of the institute, organized at the national level, with the involvement of well known bands, singers, musicians, artist, poets and participants from all across the country', 'http://www.hillffair.in/', 'Rv and Barbie Rajput'),
('Infusion', 'Shanmuga University', 'Cultural Fest', 'June', '2015-06-13', 'June', '2015-06-16', '', '', 'Aaveg'),
('Maffick', 'MANIT', 'Cultural Fest', 'March', '2015-03-11', 'March', '2015-03-13', 'Youth Fest of MANIT', 'http://www.maffick.org', 'Underground Authority'),
('Melange', 'NIT PATNA', 'Cultural Fest', 'December', '2014-12-05', 'December', '2014-12-07', 'Bihar''s well known fest', 'http://melange.nitp.ac.in/', 'SunBurn'),
('Metacognition', 'Galgotias', 'Technical Fest', 'February', '2015-02-21', 'February', '2015-02-23', 'Unifest of galgotias', 'http://www.metacognition.co.in', ''),
('Mood Indigo', 'IIT MUMBAI', 'Cultural Fest', 'December', '2014-12-28', 'December', '2014-12-31', 'Largest Cultural Festival of Asia', 'https://moodi.org/', 'A Talk with Aamir Khan'),
('Oasis', 'BITS PILANI', 'Cultural Fest', 'October', '2014-10-31', 'November', '2014-11-04', 'Largest Cultural Festival of India', 'http://www.bits-oasis.org/', 'Comedy  Night'),
('raj', 'raj', 'Management Fest', 'March', '2015-03-19', 'May', '2015-05-06', '', '', ''),
('Revista', 'Goel Institutions', 'Management Fest', 'January', '2015-01-01', 'January', '2015-01-04', '', '', 'Lecture'),
('Revista', 'IIITDM', 'Management Fest', 'January', '2015-01-01', 'January', '2015-01-04', '', '', 'Lecture'),
('Saarang', 'IIT CHENNAI', 'Cultural Fest', 'January', '2015-01-08', 'January', '2015-01-11', 'Saarang is the annual cultural extravaganza at IIT Madras. ', ' http://www.saarang.org', 'EDM Night'),
('Shaurya', 'IIT KHARAGPUR', 'Sports Fest', 'September', '2015-09-12', 'September', '2015-09-14', 'Annual Inter Collegiate Sports meet of I.I.T Kharagpur.', 'http://shaurya.org.in/shaurya/', ''),
('Sparsh', 'NIT SURAT', 'Cultural Fest', 'February', '2015-02-21', 'February', '2015-02-25', 'The largest of its kind in western region', 'http://svnit.ac.in/events/sparsh/flashback.html', ''),
('Sportech', 'IIT DELHI', 'Sports Fest', 'March', '2015-03-15', 'March', '2015-03-18', 'IITD Annual Sports Fest. Sportech is the ''Annual Sports Festival'' of IIT Delhi', 'http://sportech-iitd.com/', 'A Talk with Sachin Tendulkar'),
('SRASTA', 'BBD University', 'Management Fest', 'July', '2015-07-03', 'July', '2015-07-05', '', '', ''),
('Tarang', 'IIITDM', 'Cultural Fest', 'September', '2015-09-20', 'September', '2015-09-20', 'Largest Cultural Festival of Central India', 'http://tarang.iiitdmj.ac.in/', 'Lazer Show'),
('Techkriti', 'IIT KANPUR', 'Technical Fest', 'March', '2015-03-19', 'March', '2015-03-22', 'Technical Festival IIT Kanpur', 'http://techkriti.org/', ''),
('Techniche', 'IIT GUWAHATI', 'Technical Fest', 'October', '2014-10-27', 'October', '2014-10-30', '', 'http://techniche.org/', ''),
('Technozion ', 'NIT Warangal', 'Technical Fest', 'October', '2014-10-17', 'October', '2014-10-19', '', 'http://www.technozion.org/tz14/', ''),
('Techolothon', 'Anna University', 'Technical Fest', 'May', '2015-05-28', 'May', '2015-05-31', '', '', ''),
('Techzone ', 'SRIT JABALPUR', 'Technical Fest', 'Januray', '2015-01-21', 'Januray', '2015-01-23', '', '', ''),
('Threads', 'IMS College', 'Cultural Fest', 'January', '2015-01-01', 'January', '2015-01-04', 'Popular Cultural Fest in East India', '', ''),
('Tryst', 'IIT DELHI', 'Technical Fest', 'February', '2015-02-27', 'March', '2015-03-02', 'Tryst is the annual science and technology festival of the Indian Institute of Technology Delhi', 'http://tryst-iitd.com/', ''),
('Udghosh', 'IIT KANPUR', 'Sports Fest', 'March', '2015-03-19', 'March', '2015-03-22', ' The Annual Sports Festival of IIT Kanpur.', 'udghosh.org', ''),
('Utkarsh', 'BBD University', 'Cultural Fest', 'May', '2015-05-07', 'May', '2015-05-10', 'Carnival Fest', 'http://bbd-utkarsh.org/', 'Arijit Singh Concert'),
('xddddd', 'BBD', 'Cultural Fest', 'June', '2015-06-03', 'June', '2015-06-05', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `LOGINS`
--

CREATE TABLE IF NOT EXISTS `LOGINS` (
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`EMAIL`,`CNAME`),
  KEY `CNAME` (`CNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOGINS`
--

INSERT INTO `LOGINS` (`EMAIL`, `PASSWORD`, `CNAME`) VALUES
('anu2@gmail.com', 'anu2', 'NIT HAMIRPUR'),
('anu3@gmail.com', 'anu3', 'IIT KHARAGPUR'),
('anu@gmail.com', 'anu', 'Galgotias'),
('avi@gmail.com', 'avinash', 'Shanmuga University'),
('avinash@gmail.com', 'avi', 'Anna University'),
('pkhanna@gmail.com', 'a', 'NIT Kurukshetra'),
('rashi@gmail.com', 'rashi', 'IIM INDORE'),
('sameer@gmail.com', 'sam', 'IMS College'),
('somil10@gmail.com', 'somil10', 'NIT PATNA'),
('somil11@gmail.com', 'somil11', 'MNNIT ALLAHABAD '),
('somil12@gmail.com', 'somil12', 'MNIT JAIPUR'),
('somil13@gmail.com', 'somil13', 'SRIT JABALPUR'),
('somil14@gmail.com', 'somil14', 'NIT SURAT'),
('somil15@gmail.com', 'somil15', 'IIIT ALLAHABAD'),
('somil16@gmail.com', 'somil16', 'BITS PILANI'),
('somil17@gmail.com', 'somil17', 'NIT WARANGAL'),
('somil18@gmail.com', 'somil18', 'JEC JABALPUR'),
('somil19@gmail.com', 'somil19', 'GGIT JABALPUR'),
('somil1@gmail.com', 'somil1', 'IIITDM'),
('somil20@gmail.com', 'somil20', 'IIT GUWAHATI'),
('somil21@gmail.com', 'somil21', 'NIT TRICHY'),
('somil2@gmail.com', 'somil2', 'IIT DELHI'),
('somil3@gmail.com', 'somil3', 'IIT KANPUR'),
('somil4@gmail.com', 'somil4', 'IIT MUMBAI'),
('somil5@gmail.com', 'somil5', 'IIT CHENNAI'),
('somil6@gmail.com', 'somil6', 'MANIT'),
('somil7@gmail.com', 'somil7', 'IIT INDORE'),
('somil8@gmail.com', 'somil8', 'IIM AHEMDABAD'),
('somil9@gmail.com', 'somil9', 'NIT RAIPUR'),
('ssduvesh@gmail.com', 'ssd', 'BBD University'),
('ujjwal@gmail.com', 'abc', 'G B Pant');

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN_PBI`
--

CREATE TABLE IF NOT EXISTS `LOGIN_PBI` (
  `USER_ID` int(7) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOGIN_PBI`
--

INSERT INTO `LOGIN_PBI` (`USER_ID`, `PASSWORD`, `TYPE`) VALUES
(2013001, '2013001', 'STUDENT'),
(2013002, '2013002', 'STUDENT'),
(2013003, '2013003', 'STUDENT'),
(2013004, '2013004', 'STUDENT'),
(2013005, '2013005', 'STUDENT'),
(2013006, '2013006', 'STUDENT'),
(2013007, '2013007', 'STUDENT'),
(2013008, '2013008', 'STUDENT'),
(2013009, '2013009', 'STUDENT'),
(2013010, '2013010', 'STUDENT'),
(2013011, '2013011', 'STUDENT'),
(2013012, '2013012', 'STUDENT'),
(2013013, '2013013', 'STUDENT'),
(2013014, '2013014', 'STUDENT'),
(2013015, '2013015', 'STUDENT'),
(2013016, '2013016', 'STUDENT'),
(2013017, '2013017', 'STUDENT'),
(2013018, '2013018', 'STUDENT'),
(2013019, '2013019', 'STUDENT'),
(2013020, '2013020', 'STUDENT'),
(2013021, '2013021', 'STUDENT'),
(2013022, '2013022', 'STUDENT'),
(2013023, '2013023', 'STUDENT'),
(2013024, '2013024', 'STUDENT'),
(2013025, '2013025', 'STUDENT'),
(2013026, '2013026', 'STUDENT'),
(2013027, '2013027', 'STUDENT'),
(2013028, '2013028', 'STUDENT'),
(2013029, '2013029', 'STUDENT'),
(2013030, '2013030', 'STUDENT'),
(2013031, '2013031', 'STUDENT'),
(2013032, '2013032', 'STUDENT'),
(2013033, '2013033', 'STUDENT'),
(2013034, '2013034', 'STUDENT'),
(2013035, '2013035', 'STUDENT'),
(2013036, '2013036', 'STUDENT'),
(2013037, '2013037', 'STUDENT'),
(2013038, '2013038', 'STUDENT'),
(2013039, '2013039', 'STUDENT'),
(2013040, '2013040', 'STUDENT'),
(2013041, '2013041', 'STUDENT'),
(2013042, '2013042', 'STUDENT'),
(2013043, '2013043', 'STUDENT'),
(2013044, '2013044', 'STUDENT'),
(2013045, '2013045', 'STUDENT'),
(2013046, '2013046', 'STUDENT'),
(2013047, '2013047', 'STUDENT'),
(2013048, '2013048', 'STUDENT'),
(3013001, '3013001', 'FACULTY'),
(3013002, '3013002', 'FACULTY'),
(3013003, '3013003', 'FACULTY'),
(3013004, '3013004', 'FACULTY'),
(3013005, '3013005', 'FACULTY'),
(3013006, '3013006', 'FACULTY'),
(3013007, '3013007', 'CHAIRMAN'),
(3013008, '3013008', 'FACULTY'),
(3013009, '3013009', 'FACULTY'),
(3013010, '3013010', 'FACULTY'),
(3013011, '3013011', 'FACULTY'),
(3013012, '3013012', 'FACULTY'),
(3013013, '3013013', 'FACULTY'),
(3013014, '3013014', 'FACULTY'),
(3013015, '3013015', 'FACULTY');

-- --------------------------------------------------------

--
-- Table structure for table `PBI`
--

CREATE TABLE IF NOT EXISTS `PBI` (
  `TOPIC_NAME` varchar(300) NOT NULL,
  `PBI_ID` int(7) NOT NULL,
  `DESCRIPTION` mediumtext NOT NULL,
  `R_NO` int(7) NOT NULL,
  `FA_ID` int(7) NOT NULL,
  PRIMARY KEY (`PBI_ID`,`R_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PBI`
--

INSERT INTO `PBI` (`TOPIC_NAME`, `PBI_ID`, `DESCRIPTION`, `R_NO`, `FA_ID`) VALUES
('Software Engineering', 4014001, 'As a Software Engineering Intern at IIITDMJ, you’ll... engineering organization.', 2013002, 3013001),
('Software Engineering', 4014001, 'As a Software Engineering Intern at IIITDMJ, you’ll... engineering organization.', 2013017, 3013001),
('Software Engineering', 4014001, 'As a Software Engineering Intern at IIITDMJ, you’ll... engineering organization.', 2013032, 3013001),
('Operating System', 4014002, 'The OS internship gives students the opportunity of implementing theoretical knowledge while working with computers. Key areas include evaluating thread and process performance, and interprocess communication in processes running simultaneously on modern operating systems. ', 2013001, 3013002),
('Operating System', 4014002, 'The OS internship gives students the opportunity of implementing theoretical knowledge while working with computers. Key areas include evaluating thread and process performance, and interprocess communication in processes running simultaneously on modern operating systems. ', 2013016, 3013002),
('Operating System', 4014002, 'The OS internship gives students the opportunity of implementing theoretical knowledge while working with computers. Key areas include evaluating thread and process performance, and interprocess communication in processes running simultaneously on modern operating systems. ', 2013031, 3013002),
('Computer Graphics', 4014003, ' Internship is a six-month long position in the IIITDMJ. You will get to work with a small design team within a fun and vibrant atmosphere. Your colleagues will include designers, videographers, social media and web specialists, and writers.  The internship provides an opportunity to work on a wide range of design and layout projects. Our ideal candidate will have a strong sense of design, attention to detail, enthusiasm, and the ability to communicate in an effective and lively manner. You''ll be an integral part of creating printed pieces from conception to layout to press. The intern will also have the opportunity to learn about UX (user experience) design and help create online marketing campaigns, all while adding new and professional pieces to his or her portfolio.', 2013003, 3013003),
('Computer Graphics', 4014003, ' Internship is a six-month long position in the IIITDMJ. You will get to work with a small design team within a fun and vibrant atmosphere. Your colleagues will include designers, videographers, social media and web specialists, and writers.  The internship provides an opportunity to work on a wide range of design and layout projects. Our ideal candidate will have a strong sense of design, attention to detail, enthusiasm, and the ability to communicate in an effective and lively manner. You''ll be an integral part of creating printed pieces from conception to layout to press. The intern will also have the opportunity to learn about UX (user experience) design and help create online marketing campaigns, all while adding new and professional pieces to his or her portfolio.', 2013018, 3013003),
('Computer Graphics', 4014003, ' Internship is a six-month long position in the IIITDMJ. You will get to work with a small design team within a fun and vibrant atmosphere. Your colleagues will include designers, videographers, social media and web specialists, and writers.  The internship provides an opportunity to work on a wide range of design and layout projects. Our ideal candidate will have a strong sense of design, attention to detail, enthusiasm, and the ability to communicate in an effective and lively manner. You''ll be an integral part of creating printed pieces from conception to layout to press. The intern will also have the opportunity to learn about UX (user experience) design and help create online marketing campaigns, all while adding new and professional pieces to his or her portfolio.', 2013033, 3013003),
('Cryptography', 4014004, 'Every summer, IIITDMJ offers a dedicated research internship program in Cryptology and Security to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013004, 3013004),
('Cryptography', 4014004, 'Every summer, IIITDMJ offers a dedicated research internship program in Cryptology and Security to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013019, 3013004),
('Cryptography', 4014004, 'Every summer, IIITDMJ offers a dedicated research internship program in Cryptology and Security to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013034, 3013004),
('COMPUTER NETWORKING', 4014005, 'Every summer, IIITDMJ offers a dedicated research internship program in Computer Networks to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013005, 3013005),
('COMPUTER NETWORKING', 4014005, 'Every summer, IIITDMJ offers a dedicated research internship program in Computer Networks to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013020, 3013005),
('COMPUTER NETWORKING', 4014005, 'Every summer, IIITDMJ offers a dedicated research internship program in Computer Networks to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013035, 3013005),
('Nano electronic devices and Semiconductor power devices,', 4014006, 'Every summer, IIITDMJ offers a dedicated research internship program in Nano electronic devices and Semiconductor power devices,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013006, 3013006),
('Nano electronic devices and Semiconductor power devices,', 4014006, 'Every summer, IIITDMJ offers a dedicated research internship program in Nano electronic devices and Semiconductor power devices,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013021, 3013006),
('Nano electronic devices and Semiconductor power devices,', 4014006, 'Every summer, IIITDMJ offers a dedicated research internship program in Nano electronic devices and Semiconductor power devices,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013036, 3013006),
('Automatic Controller Tuning', 4014007, 'Every summer, IIITDMJ offers a dedicated research internship program in Automatic Controller Tuning,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013007, 3013007),
('Automatic Controller Tuning', 4014007, 'Every summer, IIITDMJ offers a dedicated research internship program in Automatic Controller Tuning,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013022, 3013007),
('Automatic Controller Tuning', 4014007, 'Every summer, IIITDMJ offers a dedicated research internship program in Automatic Controller Tuning,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013037, 3013007),
('Microwave Engineering', 4014008, 'Every summer, IIITDMJ offers a dedicated research internship program in Microwave Engineering,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013008, 3013008),
('Microwave Engineering', 4014008, 'Every summer, IIITDMJ offers a dedicated research internship program in Microwave Engineering,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013023, 3013008),
('Microwave Engineering', 4014008, 'Every summer, IIITDMJ offers a dedicated research internship program in Microwave Engineering,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013038, 3013008),
('Electronics & Communication Engineering low power VLSI Design & SRAM Design .', 4014009, 'Every summer, IIITDMJ offers a dedicated research internship program in Electronics & CommunicationEngineering low power VLSI Design & SRAM Design,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013009, 3013009),
('Electronics & Communication Engineering low power VLSI Design & SRAM Design .', 4014009, 'Every summer, IIITDMJ offers a dedicated research internship program in Electronics & CommunicationEngineering low power VLSI Design & SRAM Design,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013024, 3013009),
('Electronics & Communication Engineering low power VLSI Design & SRAM Design .', 4014009, 'Every summer, IIITDMJ offers a dedicated research internship program in Electronics & CommunicationEngineering low power VLSI Design & SRAM Design,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 2013039, 3013009),
('Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images', 4014010, 'Every summer, IIITDMJ offers a dedicated research internship program in Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.\r\n\r\nThe selection for Internship is ongoing now. \r\n\r\n\r\n', 2013010, 3013010),
('Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images', 4014010, 'Every summer, IIITDMJ offers a dedicated research internship program in Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.\r\n\r\nThe selection for Internship is ongoing now. \r\n\r\n\r\n', 2013025, 3013010),
('Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images', 4014010, 'Every summer, IIITDMJ offers a dedicated research internship program in Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.\r\n\r\nThe selection for Internship is ongoing now. \r\n\r\n\r\n', 2013040, 3013010),
('Geometric Modeling for Design, Engineering & Manufacturing; ', 4014011, 'Every summer, IIITDMJ offers a dedicated research internship program in Geometric Modeling for Design, Engineering & Manufacturing; ,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013011, 3013011),
('Geometric Modeling for Design, Engineering & Manufacturing; ', 4014011, 'Every summer, IIITDMJ offers a dedicated research internship program in Geometric Modeling for Design, Engineering & Manufacturing; ,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013026, 3013011),
('Geometric Modeling for Design, Engineering & Manufacturing; ', 4014011, 'Every summer, IIITDMJ offers a dedicated research internship program in Geometric Modeling for Design, Engineering & Manufacturing; ,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013041, 3013011),
('Computational Fluid Dynamics,Micro-Fluidic devices', 4014012, 'Every summer, IIITDMJ offers a dedicated research internship program in Computational Fluid Dynamics,Micro-Fluidic devices ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013012, 3013012),
('Computational Fluid Dynamics,Micro-Fluidic devices', 4014012, 'Every summer, IIITDMJ offers a dedicated research internship program in Computational Fluid Dynamics,Micro-Fluidic devices ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013027, 3013012),
('Computational Fluid Dynamics,Micro-Fluidic devices', 4014012, 'Every summer, IIITDMJ offers a dedicated research internship program in Computational Fluid Dynamics,Micro-Fluidic devices ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013042, 3013012),
('Smart Structures, MEMS, Finite Element Analysis, Robotics', 4014013, 'Every summer, IIITDMJ offers a dedicated research internship program in Smart Structures, MEMS, Finite Element Analysis, Robotics,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013013, 3013013),
('Smart Structures, MEMS, Finite Element Analysis, Robotics', 4014013, 'Every summer, IIITDMJ offers a dedicated research internship program in Smart Structures, MEMS, Finite Element Analysis, Robotics,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013028, 3013013),
('Smart Structures, MEMS, Finite Element Analysis, Robotics', 4014013, 'Every summer, IIITDMJ offers a dedicated research internship program in Smart Structures, MEMS, Finite Element Analysis, Robotics,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013043, 3013013),
('Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ', 4014014, 'Every summer, IIITDMJ offers a dedicated research internship program in Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013014, 3013014),
('Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ', 4014014, 'Every summer, IIITDMJ offers a dedicated research internship program in Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013029, 3013014),
('Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ', 4014014, 'Every summer, IIITDMJ offers a dedicated research internship program in Production and Operations Management, Probability and Statistics, Time series analysis, and Quality control. ,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013044, 3013014),
('Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.', 4014015, 'Every summer, IIITDMJ offers a dedicated research internship program in Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013015, 3013015),
('Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.', 4014015, 'Every summer, IIITDMJ offers a dedicated research internship program in Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013030, 3013015),
('Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.', 4014015, 'Every summer, IIITDMJ offers a dedicated research internship program in Rapid Prototyping & Tooling, CNC machining, Geometric Modeling, CAD/CAM Integration, Computational geometry, Design automation, Nano Technologies in Manufacturing.,  to senior undergraduate and fresh post-graduate in campus students. Applications for the internship program are sought from eligible students of Mechanical Engineering background.\r\n\r\nThe selection for Internship is ongoing now. \r\n', 2013045, 3013015);

-- --------------------------------------------------------

--
-- Table structure for table `PBI_UPLOAD`
--

CREATE TABLE IF NOT EXISTS `PBI_UPLOAD` (
  `TOPIC_NAME` varchar(50) NOT NULL,
  `PBI_ID` int(7) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `FAC_ID` int(7) NOT NULL,
  PRIMARY KEY (`PBI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PBI_UPLOAD`
--

INSERT INTO `PBI_UPLOAD` (`TOPIC_NAME`, `PBI_ID`, `DESCRIPTION`, `FAC_ID`) VALUES
('Computer Graphics', 4014031, 'It tells us about everything related to PBI', 3013001),
('Software Engineering', 4014032, 'As a Software Engineering Intern at IIITDMJ, you’ll... engineering organization.', 3013002),
('Operating System', 4014033, 'The OS internship gives students the opportunity of implementing theoretical knowledge while working with computers. Key areas include evaluating thread and process performance, and interprocess communication in processes running simultaneously on modern operating systems. ', 3013003),
('Cryptography', 4014034, 'Every summer, IIITDMJ offers a dedicated research internship program in Cryptology and Security to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013004),
('COMPUTER NETWORKING', 4014035, 'Every summer, IIITDMJ offers a dedicated research internship program in Computer Networks to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013005),
('Nano electronic devices ', 4014036, 'Every summer, IIITDMJ offers a dedicated research internship program in Nano electronic devices and Semiconductor power devices,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013006),
('Automatic Controller Tuning', 4014037, 'Every summer, IIITDMJ offers a dedicated research internship program in Automatic Controller Tuning,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013007),
('Microwave Engineering', 4014038, 'Every summer, IIITDMJ offers a dedicated research internship program in Microwave Engineering,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013008),
('Electronics & Communication Engineering low power ', 4014039, 'Every summer, IIITDMJ offers a dedicated research internship program in Electronics & CommunicationEngineering low power VLSI Design & SRAM Design,  to senior undergraduate and fresh post-graduate in campus students from. Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013009),
('Video indexing, Motion detection using optical flo', 4014040, 'Every summer, IIITDMJ offers a dedicated research internship program in Video indexing, Motion detection using optical flow, Image watermarking, Steagnography, Stochastic Resonance for images,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Computer Science, Electronics (ECE/EE), Mathematics and Statistics background.  The selection for Internship is ongoing now. ', 3013010),
('Geometric Modeling for Design, Engineering & Manuf', 4014041, 'Every summer, IIITDMJ offers a dedicated research internship program in Geometric Modeling for Design, Engineering & Manufacturing; ,  to senior undergraduate and fresh post-graduate in campus students . Applications for the internship program are sought from eligible students of Mechanical Engineering background.  The selection for Internship is ongoing now. ', 3013011);

-- --------------------------------------------------------

--
-- Table structure for table `REPORT`
--

CREATE TABLE IF NOT EXISTS `REPORT` (
  `REPORT_ID` int(7) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `FAC_ID` int(7) NOT NULL,
  `RO_NO` int(7) NOT NULL,
  `REPORT_NAME` varchar(20) DEFAULT NULL,
  `MARKS` float NOT NULL,
  PRIMARY KEY (`REPORT_ID`,`RO_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `REPORT`
--

INSERT INTO `REPORT` (`REPORT_ID`, `TYPE`, `FAC_ID`, `RO_NO`, `REPORT_NAME`, `MARKS`) VALUES
(5015001, 'MID TERM', 3013001, 2013001, 'lab_1.docx', 45),
(5015001, 'MID TERM', 3013001, 2013016, 'lab_2.docx', 15),
(5015001, 'MID TERM', 3013001, 2013031, 'lab_3.docx', 18),
(5015002, 'MID TERM', 3013002, 2013002, 'lab_4.docx', 22),
(5015002, 'MID TERM', 3013002, 2013017, 'lab_1.docx', 28),
(5015002, 'MID TERM', 3013002, 2013032, 'lab_6.docx', 24),
(5015003, 'MID TERM', 3013003, 2013003, 'lab_7.docx', 27),
(5015003, 'MID TERM', 3013003, 2013018, 'lab_8.docx', 30),
(5015003, 'MID TERM', 3013003, 2013033, 'lab_9.docx', 31),
(5015004, 'MID TERM', 3013004, 2013004, 'lab_10.docx', 33),
(5015004, 'MID TERM', 3013004, 2013019, 'lab_15.docx', 37),
(5015004, 'MID TERM', 3013004, 2013034, 'lab_16.docx', 42),
(5015005, 'MID TERM', 3013005, 2013005, 'lab_17.docx', 34),
(5015005, 'MID TERM', 3013005, 2013020, 'lab_18.docx', 38),
(5015005, 'MID TERM', 3013005, 2013035, 'lab_19.docx', 39),
(5015006, 'MID TERM', 3013006, 2013006, 'lab_20.docx', 41),
(5015006, 'MID TERM', 3013006, 2013021, 'lab_21.docx', 44),
(5015006, 'MID TERM', 3013006, 2013036, 'lab_22.docx', 37),
(5015007, 'MID TERM', 3013007, 2013007, 'lab_23.docx', 33),
(5015007, 'MID TERM', 3013007, 2013022, 'lab_1.docx', 31),
(5015007, 'MID TERM', 3013007, 2013037, 'lab_2.docx', 28),
(5015008, 'MID TERM', 3013008, 2013008, 'lab_3.docx', 22),
(5015008, 'MID TERM', 3013008, 2013023, 'lab_4.docx', 24),
(5015008, 'MID TERM', 3013008, 2013038, 'lab_5.docx', 28),
(5015009, 'MID TERM', 3013009, 2013009, 'lab_6.docx', 29),
(5015009, 'MID TERM', 3013009, 2013024, 'lab_7.docx', 45),
(5015009, 'MID TERM', 3013009, 2013039, 'lab_8.docx', 41),
(5015010, 'MID TERM', 3013010, 2013010, 'lab_9.docx', 42),
(5015010, 'MID TERM', 3013010, 2013025, 'lab_10.docx', 44),
(5015010, 'MID TERM', 3013010, 2013040, 'lab_11.docx', 34),
(5015011, 'MID TERM', 3013011, 2013011, 'lab_15.docx', 22),
(5015011, 'MID TERM', 3013011, 2013026, 'lab_16.docx', 23),
(5015011, 'MID TERM', 3013011, 2013041, 'lab_17.docx', 42),
(5015012, 'MID TERM', 3013012, 2013012, 'lab_18.docx', 43),
(5015012, 'MID TERM', 3013012, 2013027, 'lab_19.docx', 37),
(5015012, 'MID TERM', 3013012, 2013042, 'lab_20.docx', 36),
(5015013, 'MID TERM', 3013013, 2013013, 'lab_21.docx', 31),
(5015013, 'MID TERM', 3013013, 2013028, 'lab_22.docx', 32),
(5015013, 'MID TERM', 3013013, 2013043, 'lab_23.docx', 22),
(5015014, 'MID TERM', 3013014, 2013014, 'lab_1.docx', 25),
(5015014, 'MID TERM', 3013014, 2013044, 'lab_2.docx', 45),
(5015014, 'MID TERM', 3013014, 20130129, 'lab_3.docx', 21);

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR`
--

CREATE TABLE IF NOT EXISTS `SPONSOR` (
  `SNAME` varchar(50) NOT NULL,
  `DETAILS` varchar(50) NOT NULL,
  PRIMARY KEY (`SNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SPONSOR`
--

INSERT INTO `SPONSOR` (`SNAME`, `DETAILS`) VALUES
('abc', ''),
('Allahabad Bank', ''),
('Classmate', ''),
('Coca-cola', ''),
('Denim', ''),
('Hero', ''),
('Honda', ''),
('IBM', 'International Business Machine'),
('Infosys', 'Biggest IT firm of India'),
('Know a Fest', ''),
('Lava', ''),
('MRF', 'Tyre Manufacturer'),
('Nike', ''),
('Nostrum', ''),
('Ola cabs', ''),
('Paper Boat', ''),
('Parle', ''),
('Pepsi', 'Pepsico India'),
('Puma', ''),
('TCS', ''),
('XEN mobiles', ''),
('Yonex', ''),
('ZNET', '');

-- --------------------------------------------------------

--
-- Table structure for table `SPONSORED`
--

CREATE TABLE IF NOT EXISTS `SPONSORED` (
  `SNAME` varchar(50) NOT NULL,
  `CNAME` varchar(50) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  PRIMARY KEY (`SNAME`,`CNAME`,`FNAME`),
  KEY `CNAME` (`CNAME`),
  KEY `FNAME` (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SPONSORED`
--

INSERT INTO `SPONSORED` (`SNAME`, `CNAME`, `FNAME`) VALUES
('TCS', 'Anna University', 'Techolothon'),
('IBM', 'BBD University', 'Utkarsh'),
('Yonex', 'BITS PILANI', 'Oasis'),
('Infosys', 'Galgotias', 'Metacognition'),
('MRF', 'GGIT JABALPUR', 'Aakrosh'),
('Classmate', 'IIIT ALLAHABAD', 'Aparoksha'),
('Allahabad Bank', 'IIITDM', 'Abhikalpan'),
('Coca-cola', 'IIITDM', 'Gusto'),
('Nostrum', 'IIITDM', 'Tarang'),
('XEN mobiles', 'IIITDM', 'Revista'),
('Allahabad Bank', 'IIM AHEMDABAD', 'Confluence'),
('ZNET', 'IIM INDORE', 'Atharv'),
('Know a Fest', 'IIT CHENNAI', 'Saarang'),
('Hero', 'IIT DELHI', 'Tryst'),
('Puma', 'IIT DELHI', 'Sportech'),
('Lava', 'IIT GUWAHATI', 'Alcheringa'),
('Ola cabs', 'IIT INDORE', 'Fluxus'),
('Denim', 'IIT KANPUR', 'Techkriti'),
('Nike', 'IIT KANPUR', 'Antaragni '),
('Yonex', 'IIT KHARAGPUR', 'Shaurya'),
('Puma', 'IIT MUMBAI', 'Mood Indigo'),
('Coca-cola', 'IMS College', 'Threads'),
('IBM', 'JEC JABALPUR', 'Aagaaz'),
('Paper Boat', 'MANIT', 'Maffick'),
('Honda', 'MNIT JAIPUR', 'Blitzschlag'),
('Classmate', 'MNNIT ALLAHABAD ', 'Culrav'),
('Pepsi', 'NIT HAMIRPUR', 'Hillfair'),
('Parle', 'NIT PATNA', 'Melange'),
('Coca-cola', 'NIT RAIPUR', 'Eclectika '),
('Ola cabs', 'NIT RAIPUR', 'Aavartan'),
('Lava', 'NIT SURAT', 'Sparsh'),
('Ola cabs', 'NIT TRICHY', 'Currents'),
('Hero', 'NIT Warangal', 'Technozion'),
('abc', 'raj', 'raj'),
('IBM', 'Shanmuga University', 'Infusion');

-- --------------------------------------------------------

--
-- Table structure for table `STUDENT`
--

CREATE TABLE IF NOT EXISTS `STUDENT` (
  `SNAME` varchar(20) NOT NULL,
  `ROLL_NO` int(7) NOT NULL,
  `BRANCH` varchar(3) NOT NULL,
  `SEX` varchar(1) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `S_P_NUMBER` varchar(10) NOT NULL,
  `F_ID` int(7) NOT NULL,
  `P_ID` int(7) NOT NULL,
  PRIMARY KEY (`ROLL_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `STUDENT`
--

INSERT INTO `STUDENT` (`SNAME`, `ROLL_NO`, `BRANCH`, `SEX`, `EMAIL`, `S_P_NUMBER`, `F_ID`, `P_ID`) VALUES
('somil', 2013001, 'CSE', 'M', 'somil.jain656', '8989777800', 3013001, 4014001),
('AARUSHI', 2013002, 'CSE', 'F', '2013002@iiitdmj.ac.in', '9632587412', 3013002, 4014002),
('AASHIMA GOYAL', 2013003, 'ECE', 'F', '2013003@iiitdmj.ac.in', '8958665588', 3013003, 4014003),
('AAYUSH ', 2013004, 'CSE', 'M', '2013004@iiitdmj.ac.in', '8787985865', 3013004, 4014004),
('ABHISHEK', 2013005, 'MEC', 'M', '2013005@iiitdmj.ac.in', '8987546458', 3013005, 4014005),
('ABHISHEK KUMAR', 2013006, 'CSE', 'M', '2013006@iiitdmj.ac.in', '8754126548', 3013006, 4014006),
('ABHISHEK AGRAWAL', 2013007, 'CSE', 'M', '2013007@iiitdmj.ac.in', '7898789789', 3013007, 4014007),
('ABHISHEK RAI', 2013008, 'MEC', 'M', '2013008@iiitdmj.ac.in', '8987546457', 3013008, 4014008),
('ABHISHEK ', 2013009, 'MEC', 'M', '2013009@iiitdmj.ac.in', '8989789878', 3013009, 4014009),
('ABHISHEK SINGH', 2013010, 'MEC', 'M', '2013010@iiitdmj.ac.in', '8989534547', 3013010, 4014010),
('ABHISHEK RAJPOOT', 2013011, 'MEC', 'M', '2013011@iiitdmj.ac.in', '7879897896', 3013011, 4014011),
('ADITI SHARMA', 2013012, 'ECE', 'F', '2013012@iiitdmj.ac.in', '8989787879', 3013012, 4014012),
('ADITYA NAIDU', 2013013, 'CSE', 'M', '2013013@iiitdmj.ac.in', '9966556655', 3013013, 4014013),
('AJAY ', 2013014, 'CSE', 'M', '2013014@iiitdmj.ac.in', '8989789878', 3013014, 4014014),
('AKSHAT JAIN', 2013015, 'MEC', 'M', '2013015@iiitdmj.ac.in', '8754214565', 3013015, 4014015),
('AKSHAY DIXIT', 2013016, 'CSE', 'M', '2013016@iiitdmj.ac.in', '8985465855', 3013001, 4014001),
('AKSHIT', 2013017, 'CSE', 'M', '2013017@iiitdmj.ac.in', '7898655522', 3013002, 4014002),
('AMAN', 2013018, 'MEC', 'M', '2013018@iiitdmj.ac.in', '8565452545', 3013003, 4014003),
('AMAN SRIVASTAVA', 2013019, 'CSE', 'M', '2013019@iiitdmj.ac.in', '8827920366', 3013004, 4014004),
('ANAND', 2013020, 'MEC', 'M', '2013020@iiitdmj.ac.in', '8685245465', 3013005, 4014005),
('ANCHALA PRIYA', 2013021, 'CSE', 'M', '2013021@iiitdmj.ac.in', '8754658578', 3013006, 4014006),
('ANCHALAI PAL', 2013022, 'ECE', 'F', '2013022@iiitdmj.ac.in', '7454521144', 3013007, 4014007),
('ANIL SHAKYAWAL', 2013023, 'MEC', 'M', '2013023@iiitdmj.ac.in', '8877887788', 3013008, 4014008),
('ANKA LAXMAN ', 2013024, 'MEC', 'M', '2013024@iiitdmj.ac.in', '8956556858', 3013009, 4014009),
('ANKAM LAXMAN KUMAR', 2013025, 'ECE', 'M', '2013025@iiitdmj.ac.in', '8822335566', 3013010, 4014010),
('ANKIT KUMAR', 2013026, 'MEC', 'F', '2013026@iiitdmj.ac.in', '8214545478', 3013011, 4014011),
('ANKUSH CHITOSIA', 2013027, 'MEC', 'M', '2013027@iiitdmj.ac.in', '9988778855', 3013012, 4014012),
('ANMOL GUPTA', 2013028, 'CSE', 'M', '2013028@iiitdmj.ac.in', '8745212548', 3013013, 4014013),
('ANSHUL KUMAR', 2013029, 'MEC', 'F', '2013029@iiitdmj.ac.in', '8822114455', 3013014, 4014014),
('ANUJ GULATI', 2013030, 'MEC', 'M', '2013030@iiitdmj.ac.in', '9356887548', 3013015, 4014015),
('ANUP SINGH', 2013031, 'ECE', 'M', '2013031@iiitdmj.ac.in', '9825663345', 3013001, 4014001),
('ANURA SINGH', 2013032, 'CSE', 'M', '2013032@iiitdmj.ac.in', '9898658922', 3013002, 4014002),
('ANURAG SINGH', 2013033, 'MEC', 'M', '2013033@iiitdmj.ac.in', '8787985832', 3013003, 4014003),
('ANURAJ EKKA', 2013034, 'ECE', 'M', '2013034@iiitdmj.ac.in', '9632587400', 3013004, 4014004),
('ANUROOP SHRIVASTAVA', 2013035, 'MEC', 'M', '2013035@iiitdmj.ac.in', '9632587401', 3013005, 4014005),
('ARCOT YESHWANTH', 2013036, 'CSE', 'M', '2013036@iiitdmj.ac.in', '9632587402', 3013006, 4014006),
('ARPITA GARG', 2013037, 'ECE', 'F', '2013037@iiitdmj.ac.in', '9632587403', 3013007, 4014007),
('ARPIT AGARWAL', 2013038, 'CSE', 'M', '2013038@iiitdmj.ac.in', '9632587404', 3013008, 4014008),
('ARPIT BHARGAV', 2013039, 'MEC', 'M', '2013039@iiitdmj.ac.in', '9878525445', 3013009, 4014009),
('ARUN VERMA', 2013040, 'MEC', 'M', '2013040@iiitdmj.ac.in', '8787985877', 3013010, 4014010),
('ASHISH JAIN', 2013041, 'CSE', 'M', '2013041@iiitdmj.ac.in', '8956556877', 3013011, 4014011),
('ASHISH KUMAR', 2013042, 'ECE', 'M', '2013042@iiitdmj.ac.in', '8754126533', 3013012, 4014012),
('ASHUTOSH KHATHTALIA', 2013043, 'CSE', 'M', '2013043@iiitdmj.ac.in', '7898789755', 3013013, 4014013),
('ASHUTOSH KUMAR', 2013044, 'MEC', 'M', '2013044@iiitdmj.ac.in', '9988778877', 3013014, 4014014),
('ATUL GUPTA', 2013045, 'CSE', 'M', '2013045@iiitdmj.ac.in', '8877885222', 3013015, 4014015),
('AVASHESH ', 2013046, 'MEC', 'M', '2013046@iiitdmj.ac.in', '8989534545', 3013001, 4014001),
('AVINASH ANAND', 2013047, 'CSE', 'M', '2013047@iiitdmj.ac.in', '9356887521', 3013002, 4014002),
('AVINASH MEENA', 2013048, 'MEC', 'M', '2013048@iiitdmj.ac.in', '8989787833', 3013003, 4014003);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `LOGINS`
--
ALTER TABLE `LOGINS`
  ADD CONSTRAINT `LOGINS_ibfk_1` FOREIGN KEY (`CNAME`) REFERENCES `COLLEGE` (`CNAME`);

--
-- Constraints for table `SPONSORED`
--
ALTER TABLE `SPONSORED`
  ADD CONSTRAINT `SPONSORED_ibfk_1` FOREIGN KEY (`CNAME`) REFERENCES `COLLEGE` (`CNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_10` FOREIGN KEY (`CNAME`) REFERENCES `COLLEGE` (`CNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_11` FOREIGN KEY (`SNAME`) REFERENCES `SPONSOR` (`SNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_12` FOREIGN KEY (`FNAME`) REFERENCES `FEST` (`FNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_13` FOREIGN KEY (`CNAME`) REFERENCES `FEST` (`CNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_14` FOREIGN KEY (`FNAME`) REFERENCES `FEST` (`FNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_15` FOREIGN KEY (`SNAME`) REFERENCES `SPONSOR` (`SNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_16` FOREIGN KEY (`CNAME`) REFERENCES `COLLEGE` (`CNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_17` FOREIGN KEY (`FNAME`) REFERENCES `FEST` (`FNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_18` FOREIGN KEY (`SNAME`) REFERENCES `SPONSOR` (`SNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_2` FOREIGN KEY (`SNAME`) REFERENCES `SPONSOR` (`SNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_3` FOREIGN KEY (`FNAME`) REFERENCES `FEST` (`FNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_4` FOREIGN KEY (`CNAME`) REFERENCES `COLLEGE` (`CNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_5` FOREIGN KEY (`SNAME`) REFERENCES `SPONSOR` (`SNAME`),
  ADD CONSTRAINT `SPONSORED_ibfk_6` FOREIGN KEY (`FNAME`) REFERENCES `FEST` (`FNAME`);
