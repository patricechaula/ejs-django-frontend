-- MySQL dump 10.13  Distrib 5.7.22, for osx10.13 (x86_64)
--
-- Host: localhost    Database: ejs
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `deploys`
--

DROP TABLE IF EXISTS `deploys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deploys` (
  `RecordNum` int(11) DEFAULT NULL,
  `VerTag` varchar(25) DEFAULT NULL,
  `HostName` varchar(25) DEFAULT NULL,
  `PDB` varchar(25) DEFAULT NULL,
  `DIR` varchar(25) DEFAULT NULL,
  `OSUser` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deploys`
--

LOCK TABLES `deploys` WRITE;
/*!40000 ALTER TABLE `deploys` DISABLE KEYS */;
INSERT INTO `deploys` VALUES (1231,'tag','host','dir','pdb','ej','2018-01-01','00:09:00'),(1221,'tag','host','dir','pdb','ej','2018-01-01','00:09:00'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:00'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1224,'tag','host','dir','pdb','ej','2018-01-01','00:09:21'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1224,'tag','host','dir','pdb','ej','2018-01-01','00:09:21'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1224,'tag','host','dir','pdb','ej','2018-01-01','00:09:21'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1224,'tag','host','dir','pdb','ej','2018-01-01','00:09:21'),(1223,'tag','host','dir','pdb','ej','2018-01-01','00:09:20'),(1224,'tag','host','dir','pdb','ej','2018-01-01','00:09:21'),(1234,'MYTAX_1.0','APACHE','MYTAX','MYTAX','ej','2018-05-07','14:00:00'),(12345,'TAXING_1.2.3.4','APACHE','TAXING','/VOL1','EJ','2018-05-08','10:57:42'),(55,'TAXING_1.2.3.4','APACHE','TAXING','/VOL1','EJ','2018-05-08','11:01:21'),(55,'TAXING_1.2.3.4','APACHE','TAXING','/VOL1','EJ','2018-05-08','13:48:33');
/*!40000 ALTER TABLE `deploys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `RecordNum` int(11) DEFAULT NULL,
  `VerTag` varchar(25) DEFAULT NULL,
  `Platform` varchar(25) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12  8:32:04
