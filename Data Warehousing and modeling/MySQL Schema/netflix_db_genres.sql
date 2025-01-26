-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: netflix_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `Mapped_Genre_ID` int NOT NULL,
  `Main_Genre` varchar(100) NOT NULL,
  PRIMARY KEY (`Mapped_Genre_ID`),
  UNIQUE KEY `Mapped_Genre_ID_UNIQUE` (`Mapped_Genre_ID`),
  UNIQUE KEY `Main_Genre_UNIQUE` (`Main_Genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Action & Adventure'),(3,'Action comedy'),(4,'Action thriller'),(6,'Action-thriller'),(7,'Adult'),(8,'Adventure'),(9,'Adventure-romance'),(10,'Aftershow'),(11,'Animated musical comedy'),(12,'Animation'),(13,'Anime'),(14,'Anthology'),(15,'Biographical'),(16,'Biography'),(17,'Biopic'),(18,'Black comedy'),(19,'Christian musical'),(20,'Christmas'),(21,'Christmas comedy'),(22,'Christmas musical'),(23,'Comedy'),(24,'Comedy horror'),(25,'Comedy mystery'),(26,'Comedy-drama'),(27,'Coming-of-age comedy-drama'),(28,'Concert Film'),(29,'Crime'),(30,'Crime drama'),(31,'Crime thriller'),(32,'Dance comedy'),(33,'Dark comedy'),(34,'Documentary'),(35,'Drama'),(36,'Drama-Comedy'),(37,'Family'),(39,'Family film'),(40,'Fantasy'),(41,'Film-Noir'),(42,'Game-Show'),(43,'Heist'),(44,'Heist film'),(45,'Hidden-camera prank comedy'),(46,'Historical drama'),(47,'Historical-epic'),(48,'History'),(49,'Holiday'),(50,'Horror'),(51,'Horror anthology'),(52,'Horror comedy'),(53,'Horror thriller'),(55,'Interview'),(56,'Kids'),(57,'Making-of'),(58,'Mentalism special'),(59,'Mockumentary'),(60,'Music'),(61,'Musical'),(62,'Musical comedy'),(64,'Mystery'),(65,'News'),(66,'One-man show'),(67,'Political thriller'),(68,'Psychological horror'),(69,'Psychological thriller'),(70,'Psychological thriller drama'),(71,'Reality'),(72,'Reality-TV'),(73,'Romance'),(74,'Romance drama'),(75,'Romantic comedy'),(76,'Romantic comedy-drama'),(77,'Romantic drama'),(80,'Romantic thriller'),(81,'Satire'),(82,'Sci-Fi'),(83,'Sci-Fi & Fantasy'),(84,'Science Fiction'),(86,'Science fiction adventure'),(87,'Science fiction thriller'),(88,'Short'),(89,'Soap'),(90,'Sport'),(91,'Sports film'),(92,'Sports-drama'),(93,'Spy thriller'),(94,'Stop Motion'),(95,'Superhero'),(96,'Superhero-Comedy'),(97,'Supernatural drama'),(99,'Talk'),(100,'Talk-Show'),(101,'Teen comedy horror'),(102,'Teen comedy-drama'),(103,'Thriller'),(98,'TV Movie'),(104,'Urban fantasy'),(105,'Variety Show'),(107,'War'),(108,'War & Politics'),(109,'War drama'),(110,'War-Comedy'),(111,'Western'),(112,'Zombie');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-24  5:55:59
