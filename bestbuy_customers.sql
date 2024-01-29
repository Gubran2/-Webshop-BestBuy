CREATE DATABASE  IF NOT EXISTS `bestbuy` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bestbuy`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bestbuy
-- ------------------------------------------------------
-- Server version	5.7.31-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `firstname` text,
  `lastname` text,
  `street` varchar(50) DEFAULT NULL,
  `city` text NOT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('öäåasd','asd','asd','asad',123123,'asd',3),('Gubran','Alshekh','kungsmarkenvägen 7 karlskrona','None',37144,'gubran.alshekhali33@gmail.com',4),('Gubran','Alshekh','Ågatan 9B','None',24942,'gubran.@gmail.com',5),('gubran','samir','kungsmarken','None',37144,'fgqfnipajfp@gmail.com',6),('fyifyj','ygiygik','4868','None',796,'khchkhv',7),('klnlkn','uoguigu','7877','None',87087,'ugvouguiogou',8),('majde','ali','222','None',3232,'majde.mail',9),('majdi','ali','222','None',3434,'fwoefm',10),('majdi','alid','22211','None',34324,'fwoefmdqa',11),('Gubranq','wdqwd','wwwwww','None',2222,'qfqwqwfdqwf',12),('John','Doe','123 Main St','Cityville',12345,'john.doe@example.com',13),('Gubran','Alshekh','Broby Ågatan 9B','None',24942,'vöhkvivö-kvbö',14),('Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,'None',15),('fawdfqw','qdq','fawfawf adqw','dwdqad',2222,'afwfa',16);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 22:49:28
