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
-- Table structure for table `covid2`
--

DROP TABLE IF EXISTS `covid2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covid2` (
  `provinceName` varchar(22) NOT NULL,
  `currentConfirmedCount` int DEFAULT NULL,
  `confirmedCount` int DEFAULT NULL,
  `suspectedCount` int DEFAULT NULL,
  `curedCount` int DEFAULT NULL,
  `deadCount` int DEFAULT NULL,
  PRIMARY KEY (`provinceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid2`
--

LOCK TABLES `covid2` WRITE;
/*!40000 ALTER TABLE `covid2` DISABLE KEYS */;
INSERT INTO `covid2` VALUES ('上海',171,3084,393,2906,7),('云南',92,1813,22,1719,2),('内蒙古',83,1186,35,1102,1),('北京',14,1209,164,1186,9),('台湾',2396,16988,485,13742,850),('吉林',6,589,19,580,3),('四川',33,1316,22,1280,3),('天津',48,576,50,525,3),('宁夏',0,122,0,122,0),('安徽',1,1009,2,1002,6),('山东',27,1042,14,1008,7),('山西',0,265,64,265,0),('广东',95,3443,25,3340,8),('广西',249,610,0,359,2),('新疆',0,981,0,978,3),('江苏',5,1625,3,1620,0),('江西',0,959,0,958,1),('河北',0,1458,0,1451,7),('河南',28,1641,1,1591,22),('浙江',512,2015,68,1502,1),('海南',0,190,18,184,6),('湖北',1,68317,25,63804,4512),('湖南',17,1216,2,1195,4),('澳门',1,78,9,77,0),('甘肃',5,356,0,349,2),('福建',35,1358,15,1322,1),('西藏',0,1,0,1,0),('贵州',0,159,0,157,2),('辽宁',4,793,0,787,2),('重庆',2,611,15,603,6),('陕西',1156,1881,4,722,3),('青海',0,30,0,30,0),('香港',226,12630,181,12191,213),('黑龙江',0,2035,394,2022,13);
/*!40000 ALTER TABLE `covid2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-31  6:51:33
