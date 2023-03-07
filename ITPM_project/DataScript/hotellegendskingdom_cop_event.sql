-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: hotellegendskingdom
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
-- Table structure for table `cop_event`
--

DROP TABLE IF EXISTS `cop_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cop_event` (
  `ceid` int NOT NULL AUTO_INCREMENT,
  `f_name` varchar(45) DEFAULT NULL,
  `nic` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `event_type` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `guestno` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ceid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cop_event`
--

LOCK TABLES `cop_event` WRITE;
/*!40000 ALTER TABLE `cop_event` DISABLE KEYS */;
INSERT INTO `cop_event` VALUES (3,'A.Bihash','200100704059','bihash@gmail.com','0756988220','Team Building Events','2022-04-30','500','1st class | Rs.200,000.00'),(15,'S.Duneesha','2000248208','duneesha03@gmail.com','0728403023','Recruiting Events','2022-04-30','1500','1st class | Rs.200,000.00'),(16,'A.Sujanujan ','20020934903','suja29@gmail.com','0720408418','Product Launches','2022-04-29','200','2nd class | Rs.175,000.00'),(21,'M.Koliya sign','9405003959v','koli@yahoo.com','0703804803','Product Launches','2022-04-20','200','1st class | Rs.200,000.00'),(23,'D.sankar','19802300082','san2@outlook.com','0783048034','Product Launches','2022-04-12','300','1st class | Rs.200,000.00'),(24,'K.Loozefer','10380438508','loo43@gmail.com','0729094983','Recruiting Events','2022-04-20','400','1st class | Rs.200,000.00');
/*!40000 ALTER TABLE `cop_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-08 18:57:41
