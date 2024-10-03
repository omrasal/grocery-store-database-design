-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `Purchase`
--

DROP TABLE IF EXISTS `Purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Purchase` (
  `purchase_id` int NOT NULL AUTO_INCREMENT,
  `purchase_date` date DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `vendor` varchar(2555) DEFAULT NULL,
  `Items_item_id` int NOT NULL,
  PRIMARY KEY (`purchase_id`),
  UNIQUE KEY `purchase_id_UNIQUE` (`purchase_id`),
  KEY `fk_Purchase_Items_idx` (`Items_item_id`),
  CONSTRAINT `fk_Purchase_Items` FOREIGN KEY (`Items_item_id`) REFERENCES `Items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Purchase`
--

LOCK TABLES `Purchase` WRITE;
/*!40000 ALTER TABLE `Purchase` DISABLE KEYS */;
INSERT INTO `Purchase` VALUES (1,'2022-02-01',2.35,'Bennet Farms, Rt. 17 Evansville, IL 55446',1000),(2,'2022-02-02',0.69,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678',1100),(3,'2022-02-10',0.59,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678',1000),(4,'2022-02-10',1.75,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678',1000),(5,'2022-02-10',0.65,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678',1000),(6,'2022-02-12',1.29,'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567',1000),(7,'2022-02-12',2.19,'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567',1000),(8,'2022-02-15',1.8,'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678',1000);
/*!40000 ALTER TABLE `Purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 19:36:46
