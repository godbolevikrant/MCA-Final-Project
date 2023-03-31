-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.47


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema odas
--

CREATE DATABASE IF NOT EXISTS odas;
USE odas;

--
-- Definition of table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctorname` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `emergencycontact` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `maritalstatus` varchar(50) DEFAULT NULL,
  `speciality` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `qual` varchar(50) DEFAULT NULL,
  `exp` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal` varchar(50) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` (`id`,`doctorname`,`mobile`,`emergencycontact`,`email`,`dob`,`maritalstatus`,`speciality`,`license`,`qual`,`exp`,`state`,`city`,`postal`,`address`,`password`,`entry_date`) VALUES 
 (1,'sanket','9552070680','9552070680','sanketborkar@gmail.com','1980-11-22','Single','Gynaecologist','11111111','MD','15','Maharashtra',' Pune ','411009','shivajinagar','sanket1','2022-05-21'),
 (2,'nikhil','1111111111','2222222222','nikhil@gmail.com','1985-11-11','Married','Gynaecologist','111111','MBBS','10','Maharashtra',' Ahmednagar ','411003','Noble Hospital,Ahmednagar','nikhil','2022-05-23'),
 (3,'sumit','7758980332','7758980332','sumit@gmail.com','1980-01-01','Married','Neurologist','1111111111','MBBS,MS','10','Maharashtra',' Latur ','414141','sahyadri hospital shivaji chowk latur.','sumit1','2022-05-23');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;


--
-- Definition of table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
CREATE TABLE `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctorname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `from_date` varchar(45) DEFAULT NULL,
  `to_date` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` (`id`,`doctorname`,`email`,`from_date`,`to_date`,`reason`,`entry_date`) VALUES 
 (1,'Abhay Rameshrao Panchal','abhayrpanchal@gmail.com','2022-05-23','2022-05-23','xyz','2022-05-20'),
 (2,'xyz','sss@gmail.com','2022-05-22','2022-05-23','family','2022-05-20'),
 (3,'sanket','sanketborkar@gmail.com','2022-05-23','2022-05-25','family','2022-05-21');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`fname`,`dob`,`email`,`mobile`,`gender`,`state`,`city`,`address`,`password`,`entry_date`) VALUES 
 (1,'sanku','1998-11-25','sanketbborkar@gmail.com','9999999999','male','Maharashtra',' Ahmednagar ','ahmednagar','sanket@123','2022-05-23'),
 (2,'Somnath Mahajan','1998-03-23','somnath@gmail.com','8087992028','male','Maharashtra',' Latur ','Ambajogai Road, Ltr ','Somnath@123','2022-08-05');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `queries`
--

DROP TABLE IF EXISTS `queries`;
CREATE TABLE `queries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `topic` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queries`
--

/*!40000 ALTER TABLE `queries` DISABLE KEYS */;
INSERT INTO `queries` (`id`,`name`,`email`,`topic`,`mobile`,`message`) VALUES 
 (1,'Bablu','bablu143@gmail.com','TP','9850800961','Add some features\r\n');
/*!40000 ALTER TABLE `queries` ENABLE KEYS */;


--
-- Definition of table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE `receptionist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recname` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `docemail` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` (`id`,`recname`,`mobile`,`email`,`docemail`,`address`,`password`,`entry_date`) VALUES 
 (1,'Manoj','','manoj@gmail.com','nikhil@gmail.com','asndkjashdkj','abhay1','2022-08-07'),
 (2,'yuvraj kshrisagar','9845622455','Yuvraj121@gmail.com','nikhil@gmail.com','jayshree orthopedic hospital,latur','Yuvi123','2022-08-07');
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;


--
-- Definition of table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE `requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `doctorname` varchar(45) DEFAULT NULL,
  `speciality` varchar(45) DEFAULT NULL,
  `docemail` varchar(45) DEFAULT NULL,
  `docaddress` varchar(70) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `timeslot` varchar(45) DEFAULT NULL,
  `bill` varchar(45) DEFAULT NULL,
  `entry_date` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'Un-Approved',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` (`id`,`doctorname`,`speciality`,`docemail`,`docaddress`,`fname`,`gender`,`mobile`,`email`,`address`,`date`,`timeslot`,`bill`,`entry_date`,`status`) VALUES 
 (1,'nikhil','Gynaecologist','nikhil@gmail.com','Noble Hospital,Ahmednagar','Somnath Mahajan','male','8087992028','somnath@gmail.com','Ambajogai Road, Ltr ','2022-08-18','12:30 PM - 1 PM','500','2022-08-07','Approved'),
 (2,'nikhil','Gynaecologist','nikhil@gmail.com','Noble Hospital,Ahmednagar','Somnath Mahajan','male','8087992028','somnath@gmail.com','Ambajogai Road, Ltr ','2022-08-03','11:30 AM - 12 PM','500','2022-08-07','Approved');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
