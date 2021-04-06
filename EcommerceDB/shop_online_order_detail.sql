-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_online
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `order_id_detail` bigint NOT NULL,
  `prod_id_detail` bigint NOT NULL,
  `shop_id_detail` bigint NOT NULL,
  `payment_id_detail` bigint NOT NULL,
  `user_id_detail` bigint NOT NULL,
  `message` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `createdBy` varchar(45) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `modifiedBy` varchar(45) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `modifiedDate` date DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `prod_id_detail_idx` (`prod_id_detail`),
  KEY `shop_id_detail_idx` (`shop_id_detail`),
  KEY `payment_id_detail_idx` (`payment_id_detail`),
  KEY `user_id_detail_idx` (`user_id_detail`),
  KEY `order_id_detail_idx` (`order_id_detail`),
  CONSTRAINT `order_id_detail` FOREIGN KEY (`order_id_detail`) REFERENCES `order` (`order_id`),
  CONSTRAINT `payment_id_detail` FOREIGN KEY (`payment_id_detail`) REFERENCES `payment` (`payment_id`),
  CONSTRAINT `prod_id_detail` FOREIGN KEY (`prod_id_detail`) REFERENCES `product` (`prod_id`),
  CONSTRAINT `shop_id_detail` FOREIGN KEY (`shop_id_detail`) REFERENCES `shop` (`shop_id`),
  CONSTRAINT `user_id_detail` FOREIGN KEY (`user_id_detail`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-06 10:47:33
