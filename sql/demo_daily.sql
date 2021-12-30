-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `daily`
--

DROP TABLE IF EXISTS `daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `fever` tinyint(1) NOT NULL,
  `headache` tinyint(1) NOT NULL,
  `temperature` double NOT NULL,
  `Isolate` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily`
--

LOCK TABLES `daily` WRITE;
/*!40000 ALTER TABLE `daily` DISABLE KEYS */;
INSERT INTO `daily` VALUES (3,'student1','2021-11-04',1,1,77,0),(4,'student2','2021-11-04',0,0,31,0),(5,'','2021-11-04',0,0,12,0),(6,'student1','2021-11-06',1,1,33,0),(7,'','2021-11-08',0,0,0,0),(8,'student1','2021-11-08',0,0,42,0),(9,'student2','2021-11-08',1,1,123,0),(10,'student1','2021-11-09',1,1,49,0),(11,'student1','2021-11-10',1,1,11,0),(12,'student1','2021-11-16',1,1,41,0),(13,'student1','2021-11-17',1,1,42,0),(14,'student1','2021-11-24',1,1,42,0),(15,'student1','2021-11-29',1,1,12,0),(16,'student1','2021-12-05',0,0,22,0),(17,'student2','2021-12-06',1,0,30.22,0),(18,'student1','2021-12-08',1,1,43,0),(19,'studen','2021-12-08',0,1,43,0),(20,'student2','2021-12-14',1,0,30.22,0),(21,'zxs','2021-12-14',1,1,45,0),(22,'studen','2021-12-17',1,1,34,0),(23,'studen','2021-12-19',1,1,31,0),(24,'123456','2021-12-19',0,0,37,1),(25,'654321','2021-12-19',1,0,39,1),(28,'119008325','2021-12-20',1,1,33,0),(30,'123456','2021-12-20',0,1,37,1),(35,'831903104','2021-12-21',0,0,37,1),(36,'54321','2021-12-21',1,1,43,0),(37,'876543','2021-12-21',0,0,36,1),(38,'1111111','2021-12-22',0,0,36,1),(39,'654321','2021-12-22',1,1,37,1),(40,'123456','2021-12-22',1,1,37,1),(41,'123456','2022-12-30',1,1,42,1),(42,'654321','2022-12-30',1,1,31,0);
/*!40000 ALTER TABLE `daily` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-31  6:51:35
