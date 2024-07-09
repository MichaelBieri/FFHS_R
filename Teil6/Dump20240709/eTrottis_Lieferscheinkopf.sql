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
-- Table structure for table `Lieferscheinkopf`
--

DROP TABLE IF EXISTS `Lieferscheinkopf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lieferscheinkopf` (
  `idLieferscheinkopf` int NOT NULL,
  `Lieferdatum` date DEFAULT NULL,
  `Lieferant_idLieferant` int NOT NULL,
  PRIMARY KEY (`idLieferscheinkopf`),
  KEY `fk_Lieferscheinkopf_Lieferant1_idx` (`Lieferant_idLieferant`),
  CONSTRAINT `fk_Lieferscheinkopf_Lieferant1` FOREIGN KEY (`Lieferant_idLieferant`) REFERENCES `Lieferant` (`idLieferant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lieferscheinkopf`
--

LOCK TABLES `Lieferscheinkopf` WRITE;
/*!40000 ALTER TABLE `Lieferscheinkopf` DISABLE KEYS */;
INSERT INTO `Lieferscheinkopf` VALUES (40,'2023-06-01',30),(41,'2023-06-02',31),(42,'2023-06-03',32),(43,'2023-06-04',30),(44,'2023-06-05',31),(45,'2023-06-05',32);
/*!40000 ALTER TABLE `Lieferscheinkopf` ENABLE KEYS */;
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
