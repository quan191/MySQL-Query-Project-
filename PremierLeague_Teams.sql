-- MySQL dump 10.13  Distrib 5.6.45, for Win64 (x86_64)
--
-- Host: relational.fit.cvut.cz    Database: PremierLeague
-- ------------------------------------------------------
-- Server version	5.5.5-10.3.15-MariaDB-log

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
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `TeamID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES (1,'Manchester United'),(3,'Arsenal'),(4,'Newcastle United'),(5,'Blackburn Rovers'),(6,'Tottenham Hotspur'),(7,'Aston Villa'),(8,'Chelsea'),(11,'Everton'),(14,'Liverpool'),(30,'Bolton Wanderers'),(35,'West Bromwich Albion'),(39,'Wolverhampton Wanderers'),(43,'Manchester City'),(45,'Norwich City'),(52,'Queens Park Rangers'),(54,'Fulham'),(56,'Sunderland'),(80,'Swansea City'),(110,'Stoke City'),(111,'Wigan Athletic');
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-16  8:06:05
