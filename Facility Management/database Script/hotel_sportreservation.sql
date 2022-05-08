-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `sportreservation`
--

DROP TABLE IF EXISTS `sportreservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sportreservation` (
  `name` varchar(20) NOT NULL,
  `contact` char(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `members` int NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `ground` varchar(3) NOT NULL,
  `other` varchar(100) DEFAULT NULL,
  `pool` varchar(3) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportreservation`
--

LOCK TABLES `sportreservation` WRITE;
/*!40000 ALTER TABLE `sportreservation` DISABLE KEYS */;
INSERT INTO `sportreservation` VALUES ('','0778596145','2022-05-10','13:35:00',2,'','no','','no'),('abc','0778596145','2022-05-10','15:46:00',2,'','no','','yes'),('kamal','0742356145','2022-05-16','22:11:00',2,'','yes','','no'),('kamani','0775623311','2022-04-16','11:20:00',3,'','no','squash','yes'),('nimal','0773695483','2022-04-14','08:00:00',4,'','no','squash','yes'),('saman','0714562356','2022-04-12','02:10:00',2,NULL,'1',NULL,'0'),('sith','0742356145','2022-05-18','09:21:00',2,'135','no','','no'),('sithmi','0745612369','2022-04-15','12:00:00',3,'','no','','yes');
/*!40000 ALTER TABLE `sportreservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 10:00:45
