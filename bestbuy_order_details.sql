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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `idorder_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`idorder_details_id`),
  KEY `the_order_idx` (`orderID`),
  KEY `the_product_idx` (`productID`),
  CONSTRAINT `the_order` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `the_product` FOREIGN KEY (`productID`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,2160,9,'XS','Red',199),(2,2,2160,9,'XS','Red',199),(3,3,2160,9,'XS','Red',199),(4,4,2160,9,'XS','Red',199),(5,5,2160,9,'XS','Red',199),(6,6,2160,9,'XS','Red',199),(7,7,2160,9,'XS','Red',199),(8,8,2160,9,'XS','Red',199),(9,9,2160,9,'XS','Red',199),(10,10,2160,9,'XS','Red',199),(11,11,0,1,'XS','Red',199),(12,11,1,1,'S','Red',199),(13,12,4352,1,'M','Red',1599),(14,12,8960,1,'M','Green',1599),(15,13,2048,1,'M','Black',1599),(16,13,4352,1,'M','Red',1599),(17,13,13568,1,'M','Black',1599),(18,13,8960,1,'M','Green',1599),(19,13,11264,1,'M','Black',1599),(20,14,0,5,'XS','Red',199),(21,15,2048,1,'M','Black',1599),(22,15,4352,1,'M','Red',1599),(23,15,10,1,'XL','Red',299),(24,16,8960,1,'M','Green',1599),(25,16,6656,1,'M','Red',1599),(26,16,4352,1,'M','Red',1599),(27,16,2048,1,'M','Black',1599),(28,17,18176,1,'M','Red',1599),(29,17,20480,1,'M','Green',1599),(30,17,22784,1,'M','Black',1599),(31,18,4352,4,'M','Red',1599),(32,19,4352,5,'M','Red',1599),(33,20,2048,1,'M','Black',1599),(34,20,4352,1,'M','Red',1599),(35,21,15872,1,'M','Red',1599),(36,21,4352,2,'M','Red',1599),(37,22,4352,3,'M','Red',1599),(38,23,4352,1,'M','Red',1599),(39,23,1,1,'S','Red',199),(40,24,2048,4,'M','Black',1599),(41,25,8960,4,'M','Green',1599),(42,26,1,3,'S','Red',199),(43,27,1,1,'S','Red',199),(44,27,443,1,'XXL','Red',299),(45,28,1,1,'S','Red',199),(46,28,443,1,'XXL','Red',299),(47,29,4352,3,'M','Red',1599),(48,30,2048,4,'M','Black',1599),(49,31,22784,3,'M','Black',1599),(50,31,6656,2,'M','Red',1599),(51,32,22784,3,'M','Black',1599),(52,32,6656,6,'M','Red',1599),(53,33,2048,2,'M','Black',1599),(54,34,6656,4,'M','Red',1599),(55,35,4352,1,'M','Red',1599),(56,35,2048,2,'M','Black',1599),(57,36,4352,4,'M','Red',1599),(58,37,0,1,'XS','Red',199),(59,37,1,3,'S','Red',199),(60,37,4,1,'XL','Red',199),(61,38,1,1,'S','Red',199),(62,39,2048,1,'M','Black',1599),(63,40,2048,2,'M','Black',1599),(64,41,4352,2,'M','Red',1599),(77,42,6656,1,'M','Red',1599),(78,42,22784,2,'M','Black',1599),(79,42,3,5,'L','Red',199);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
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
