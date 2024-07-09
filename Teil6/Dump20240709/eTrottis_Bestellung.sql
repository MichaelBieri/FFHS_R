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
-- Table structure for table `Bestellung`
--

DROP TABLE IF EXISTS `Bestellung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bestellung` (
  `idBestellung` int NOT NULL,
  `Datum` date DEFAULT NULL,
  `Kunde_idKunde` int NOT NULL,
  PRIMARY KEY (`idBestellung`),
  KEY `fk_Bestellung_Kunde_idx` (`Kunde_idKunde`),
  CONSTRAINT `fk_Bestellung_Kunde` FOREIGN KEY (`Kunde_idKunde`) REFERENCES `Kunde` (`idKunde`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bestellung`
--

LOCK TABLES `Bestellung` WRITE;
/*!40000 ALTER TABLE `Bestellung` DISABLE KEYS */;
INSERT INTO `Bestellung` VALUES (5,'2024-02-01',1),(6,'2024-03-02',2),(7,'2024-03-03',3),(8,'2024-04-04',1),(9,'2024-01-05',2),(10,'2024-02-06',3),(11,'2024-02-07',1),(12,'2024-05-08',2);
/*!40000 ALTER TABLE `Bestellung` ENABLE KEYS */;
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
