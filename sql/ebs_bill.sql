-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ebs
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meter_no` int NOT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `units` varchar(20) DEFAULT NULL,
  `totalbill` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`meter_no`),
  KEY `meter_no` (`meter_no`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`meter_no`) REFERENCES `customer` (`meter_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,1,1,2024,'80','2.23999999e18','đã thanh toán','2024-05-29'),(2,1,2,2024,'90','4.9218747e18','chưa thanh toán',NULL),(3,1,3,2024,'95','7.9522701e18','chưa thanh toán',NULL),(4,2,1,2024,'95','2.65999983e18','chưa thanh toán',NULL),(5,2,4,2024,'95','1.4463751e19','chưa thanh toán',NULL),(6,2,2,2024,'95','5.1953128e18','chưa thanh toán',NULL),(7,2,3,2024,'95','7.9522701e18','chưa thanh toán',NULL),(8,3,1,2024,'75','2.09999986e18','chưa thanh toán',NULL),(9,3,2,2024,'76','4.15624989e18','chưa thanh toán',NULL),(10,3,3,2024,'76','6.3618155e18','chưa thanh toán',NULL),(11,3,4,2024,'76','1.1571e19','chưa thanh toán',NULL),(12,4,1,2024,'88','2.46399979e18','chưa thanh toán',NULL),(13,4,2,2024,'88','4.8124997e18','chưa thanh toán',NULL),(14,4,3,2024,'88','7.3663128e18','chưa thanh toán',NULL),(15,4,4,2024,'88','1.3398e19','chưa thanh toán',NULL),(16,5,1,2024,'120','3.35999978e18','đã thanh toán','2024-05-30'),(17,6,1,2024,'134','3.75199987e18','đã thanh toán','2024-05-30'),(18,7,1,2024,'541','1.5147999e19','chưa thanh toán',NULL),(19,8,1,2024,'214','5.9920003e18','chưa thanh toán',NULL),(20,5,2,2024,'214','1.1703125e19','chưa thanh toán',NULL),(21,6,2,2024,'214','1.1703125e19','chưa thanh toán',NULL),(22,8,2,2024,'214','1.1703125e19','chưa thanh toán',NULL);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-30 12:02:13
