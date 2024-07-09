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
-- Table structure for table `Lieferdetails`
--

DROP TABLE IF EXISTS `Lieferdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lieferdetails` (
  `Lieferscheinkopf_idLieferscheinkopf` int NOT NULL,
  `idLieferdetails` int NOT NULL,
  `Menge` int DEFAULT NULL,
  `Artikel_idArtikel` int NOT NULL,
  PRIMARY KEY (`Lieferscheinkopf_idLieferscheinkopf`,`idLieferdetails`),
  KEY `fk_Lieferdetails_Lieferscheinkopf1_idx` (`Lieferscheinkopf_idLieferscheinkopf`),
  KEY `fk_Lieferdetails_Artikel1_idx` (`Artikel_idArtikel`),
  CONSTRAINT `fk_Lieferdetails_Artikel1` FOREIGN KEY (`Artikel_idArtikel`) REFERENCES `Artikel` (`idArtikel`),
  CONSTRAINT `fk_Lieferdetails_Lieferscheinkopf1` FOREIGN KEY (`Lieferscheinkopf_idLieferscheinkopf`) REFERENCES `Lieferscheinkopf` (`idLieferscheinkopf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lieferdetails`
--

LOCK TABLES `Lieferdetails` WRITE;
/*!40000 ALTER TABLE `Lieferdetails` DISABLE KEYS */;
INSERT INTO `Lieferdetails` VALUES (40,50,100,21),(41,51,150,22),(42,52,200,23),(43,53,170,21),(44,54,270,22),(45,55,300,23);
/*!40000 ALTER TABLE `Lieferdetails` ENABLE KEYS */;
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
