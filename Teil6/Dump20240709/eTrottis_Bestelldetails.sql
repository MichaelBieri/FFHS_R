CREATE DATABASE  IF NOT EXISTS `eTrottis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eTrottis`;
-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: eTrottis
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `Bestelldetails`
--

DROP TABLE IF EXISTS `Bestelldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bestelldetails` (
  `Bestellung_idBestellung` int NOT NULL,
  `idBestelldetails` int NOT NULL,
  `Menge` int DEFAULT NULL,
  `Artikel_idArtikel` int NOT NULL,
  PRIMARY KEY (`Bestellung_idBestellung`,`idBestelldetails`),
  KEY `fk_Bestelldetails_Bestellung1_idx` (`Bestellung_idBestellung`),
  KEY `fk_Bestelldetails_Artikel1_idx` (`Artikel_idArtikel`),
  CONSTRAINT `fk_Bestelldetails_Artikel1` FOREIGN KEY (`Artikel_idArtikel`) REFERENCES `Artikel` (`idArtikel`),
  CONSTRAINT `fk_Bestelldetails_Bestellung1` FOREIGN KEY (`Bestellung_idBestellung`) REFERENCES `Bestellung` (`idBestellung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bestelldetails`
--

LOCK TABLES `Bestelldetails` WRITE;
/*!40000 ALTER TABLE `Bestelldetails` DISABLE KEYS */;
INSERT INTO `Bestelldetails` VALUES (5,13,100,21),(6,14,150,22),(7,15,200,23),(8,16,170,21),(9,17,270,22),(10,18,300,23),(11,19,220,21),(12,20,190,22);
/*!40000 ALTER TABLE `Bestelldetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 17:06:25
