-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: datascraper
-- ------------------------------------------------------
-- Server version	5.7.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `AccountID` int(11) NOT NULL AUTO_INCREMENT,
  `AccountName` varchar(255) DEFAULT NULL,
  `AccountType` int(11) DEFAULT NULL,
  PRIMARY KEY (`AccountID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutions`
--

DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutions` (
  `InstitutionID` int(11) NOT NULL AUTO_INCREMENT,
  `NameOfInstitution` varchar(255) DEFAULT NULL,
  `TypeOfInstitution` varchar(255) DEFAULT NULL,
  `LocationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`InstitutionID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutions`
--

LOCK TABLES `institutions` WRITE;
/*!40000 ALTER TABLE `institutions` DISABLE KEYS */;
INSERT INTO `institutions` VALUES (5,'ITB','Institusi',1);
/*!40000 ALTER TABLE `institutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `AddressCity` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Zip` int(11) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personaccounts`
--

DROP TABLE IF EXISTS `personaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personaccounts` (
  `PersonID` int(11) DEFAULT NULL,
  `AccountID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personaccounts`
--

LOCK TABLES `personaccounts` WRITE;
/*!40000 ALTER TABLE `personaccounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `personaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personinstitutions`
--

DROP TABLE IF EXISTS `personinstitutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personinstitutions` (
  `PersonInstitutionID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) DEFAULT NULL,
  `InstitutionID` int(11) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`PersonInstitutionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personinstitutions`
--

LOCK TABLES `personinstitutions` WRITE;
/*!40000 ALTER TABLE `personinstitutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `personinstitutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personlocations`
--

DROP TABLE IF EXISTS `personlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personlocations` (
  `PersonLocationID` int(11) NOT NULL AUTO_INCREMENT,
  `PersonID` int(11) DEFAULT NULL,
  `LocationID` int(11) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`PersonLocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personlocations`
--

LOCK TABLES `personlocations` WRITE;
/*!40000 ALTER TABLE `personlocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `personlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `PersonID` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (25,'Kamarisima -','tes','tes',NULL),(26,'Sulistiyowati - -','tes','tes',NULL),(27,'Alvina --','tes','tes',NULL),(28,'Avrionesti --','tes','tes',NULL),(29,'Fadhil mubarhak --','tes','tes',NULL),(30,'Fitriani --','tes','tes',NULL),(31,'Kasmawati --','tes','tes',NULL),(32,'Suwidi --','tes','tes',NULL),(33,'Kamarisima -','tes','tes',NULL),(34,'Sulistiyowati - -','tes','tes',NULL),(35,'Alvina --','tes','tes',NULL),(36,'Avrionesti --','tes','tes',NULL),(37,'Fadhil mubarhak --','tes','tes',NULL),(38,'Fitriani --','tes','tes',NULL),(39,'Kasmawati --','tes','tes',NULL),(40,'Suwidi --','tes','tes',NULL),(41,'Triyanta --','tes','tes',NULL),(42,'Derin Nur\'aini .','tes','tes',NULL),(43,'Yudi Pratama .','tes','tes',NULL),(44,'Halilintar ..','tes','tes',NULL),(45,'Agustinus Abadi','tes','tes',NULL),(46,'Sarosa Castrena Abadi','tes','tes',NULL),(47,'Ainun Mawaddah Abdal','tes','tes',NULL),(48,'Faris Abdala','tes','tes',NULL),(49,'Najib Mahfuzh Abdallah','tes','tes',NULL),(50,'Bagus Abdani','tes','tes',NULL),(51,'Satrio muhammad Abdilah','tes','tes',NULL),(52,'Danang Choirul Abdillah','tes','tes',NULL),(53,'Farkhan Abdillah','tes','tes',NULL),(54,'Ichsan Abdillah','tes','tes',NULL),(55,'Ivan Abdillah','tes','tes',NULL),(56,'Muhammad Fakhrun Abdillah','tes','tes',NULL),(57,'Muhammad Nur Abdillah','tes','tes',NULL),(58,'Irham Ilmanel Abdinni','tes','tes',NULL),(59,'Zeus Abdiwijaya','tes','tes',NULL),(60,'Iqbal Pratama Abdi Zay','tes','tes',NULL),(61,'Lalu Abdrahman','tes','tes',NULL),(62,'Muhamad Abduh','tes','tes',NULL),(63,'Muhamad Abduh','tes','tes',NULL),(64,'Yusuf Abduh','tes','tes',NULL),(65,'Dhani Abdul','tes','tes',NULL),(66,'Fakhri Abdul','tes','tes',NULL),(67,'Rival Abdul Aziz','tes','tes',NULL),(68,'Muhammad Nizar Abdul Basith','tes','tes',NULL),(69,'Dzaky abdul hanif','tes','tes',NULL),(70,'Rizqi Abdulharis','tes','tes',NULL),(71,'Iftitah Abdulkadir','tes','tes',NULL),(72,'Adib Abdullah','tes','tes',NULL),(73,'Faizal Ade Rahmahuddin Abdullah','tes','tes',NULL),(74,'Irhas Santika Abdullah','tes','tes',NULL),(75,'Jundi Abdullah','tes','tes',NULL),(76,'Mikrajuddin Abdullah','tes','tes',NULL),(77,'Muhammad Abdullah','tes','tes',NULL),(78,'Muhammad Sihwan Abdullah','tes','tes',NULL),(79,'Nurhayati Abdullah','tes','tes',NULL),(80,'Rega Renata Abdullah','tes','tes',NULL),(81,'Taufik akbar Abdullah','tes','tes',NULL),(82,'Sudrajat Harris Abdulloh','tes','tes',NULL),(83,'Amrullah Abdul Qadir','tes','tes',NULL),(84,'Ziad Abdul Rozaq','tes','tes',NULL),(85,'Husein Abdulsalam','tes','tes',NULL),(86,'Mirzam Abdurrachman','tes','tes',NULL),(87,'Muhammad Syarif Abdurrachman','tes','tes',NULL),(88,'Nadya Rizkita Putri Abdurrachman','tes','tes',NULL),(89,'Rayhan Bintang Abdurrahim','tes','tes',NULL),(90,'Ahmad Dzulfikar Abdurrahman','tes','tes',NULL),(91,'Dadi Abdurrahman','tes','tes',NULL),(92,'Muhammad Abdurrahman','tes','tes',NULL),(93,'Novrizal Syarif Abdurrahman','tes','tes',NULL),(94,'Reyhan Abdurrahman','tes','tes',NULL),(95,'Ridwan Abdurrahman','tes','tes',NULL),(96,'Saad Abdurrahman','tes','tes',NULL),(97,'Syauqi Abdurrahman','tes','tes',NULL),(98,'Muhamad Gidry Abdurrazak','tes','tes',NULL),(99,'Zahid abdush shomad','tes','tes',NULL),(100,'Hifdhi Abdussalam','tes','tes',NULL),(101,'Joshua Abednego','tes','tes',NULL),(102,'Muhammad Sonny Abfertiawan','tes','tes',NULL),(103,'Akhmad Zainal Abidin','tes','tes',NULL),(104,'Hasanuddin Z. Abidin','tes','tes',NULL),(105,'Alfred Abidondifu','tes','tes',NULL),(106,'Theodorus Felix Darpieto Abik','tes','tes',NULL),(107,'Wanita Subadra Abioso','tes','tes',NULL),(108,'Pratikto Abiseno','tes','tes',NULL),(109,'Windunoto Abisetyo','tes','tes',NULL),(110,'Abdullah Abiyyu','tes','tes',NULL),(111,'Ricardo Abraham','tes','tes',NULL),(112,'Said Abdullah Abri','tes','tes',NULL),(113,'Nazar Abrory','tes','tes',NULL),(114,'Novan A. B. Saputra','tes','tes',NULL),(115,'Adlina Abtaliana','tes','tes',NULL),(116,'Rufayda Abudan','tes','tes',NULL),(117,'Alkilany salem Abuzaid','tes','tes',NULL),(118,'Hendra Achiari','tes','tes',NULL),(119,'Inzak Achirudin','tes','tes',NULL),(120,'Andi Muhammad Fiqri Achmad','tes','tes',NULL),(121,'Arizal Achmad','tes','tes',NULL),(122,'Bagas Nurseno Achmad','tes','tes',NULL),(123,'Fauzi Achmad','tes','tes',NULL),(124,'Haikal Achmad','tes','tes',NULL),(125,'Hilman Achmad','tes','tes',NULL),(126,'Sjamsul A Achmad','tes','tes',NULL),(127,'Tria Laksana Achmad','tes','tes',NULL),(128,'Husnan Achmad Samhany','tes','tes',NULL),(129,'Dini Achnafani','tes','tes',NULL),(130,'Rizky Amalia Achsani','tes','tes',NULL),(131,'Afifatul Achyar','tes','tes',NULL),(132,'Arness Adabi','tes','tes',NULL);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-26  9:44:25
