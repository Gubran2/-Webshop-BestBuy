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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `firstname` text,
  `lastname` text,
  `street` text,
  `city` text,
  `zipcode` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `brand` text,
  `type` text,
  `subtype` text,
  `color` text,
  `gender` text,
  `price` int(11) DEFAULT NULL,
  `size` text,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `customerid_idx` (`id`),
  KEY `gubran_idx` (`orderid`),
  CONSTRAINT `Foreign_key` FOREIGN KEY (`id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'öäåasd','asd','asd','asad',123123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Gubran','Alshekh','kungsmarkenvägen 7 karlskrona','None',37144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Gubran','Alshekh','kungsmarkenvägen 7 karlskrona','karlskorna',37144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Gubran','Alshekh','kungsmarkenvägen 7 karlskrona','None',37144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Gubran','Alshekh','kungsmarkenvägen 7 karlskrona','None',37144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Gubran','Alshekh','Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'gubran','samir','kungsmarken','None',37144,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Gubran','Alshekh','bbasss','None',452463,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'fyifyj','ygiygik','4868','None',796,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'klnlkn','uoguigu','7877','None',87087,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Gubranq','wdqwd','wwwwww','None',2222,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'moh','ali','bbsssww','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'John','Doe','123 Main St','Cityville',12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'John','Doe','123 Main St','Cityville',12345,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'Gubran','Alshekh','Broby Ågatan 9B','None',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'Gubran','Alshekh','Broby Ågatan 9B','Broby',24942,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
