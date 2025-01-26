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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `Country_code` varchar(10) NOT NULL,
  `Country` text,
  PRIMARY KEY (`Country_code`),
  UNIQUE KEY `Country_code_UNIQUE` (`Country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES ('ar','Argentina'),('at','Austria'),('au','Australia'),('be','Belgium'),('bg','Bulgaria'),('bo','Bolivia'),('br','Brazil'),('ca','Canada'),('ch','Switzerland'),('cl','Chile'),('co','Colombia'),('cr','Costa Rica'),('cz','Czechia'),('de','Germany'),('dk','Denmark'),('ec','Ecuador'),('ee','Estonia'),('es','Spain'),('fi','Finland'),('fr','France'),('gb','United Kingdom'),('gi','Gibraltar'),('gr','Greece'),('gt','Guatemala'),('hk','Hong Kong'),('hn','Honduras'),('hr','Croatia'),('hu','Hungary'),('id','Indonesia'),('ie','Ireland'),('il','Israel'),('in','India'),('is','Iceland'),('it','Italy'),('jp','Japan'),('kr','South Korea'),('li','Liechtenstein'),('lt','Lithuania'),('lv','Latvia'),('mc','Monaco'),('md','Moldova'),('mx','Mexico'),('my','Malaysia'),('nl','Netherlands'),('no','Norway'),('nz','New Zealand'),('pe','Peru'),('ph','Philippines'),('pl','Poland'),('pt','Portugal'),('py','Paraguay'),('ro','Romania'),('ru','Russia'),('se','Sweden'),('sg','Singapore'),('sk','Slovakia'),('sm','San Marino'),('th','Thailand'),('tr','Turkey'),('tw','Taiwan'),('ua','Ukraine'),('us','United States'),('uy','Uruguay'),('ve','Venezuela'),('za','South Africa');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-24  5:55:26
