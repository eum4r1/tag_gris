-- MySQL dump 10.13  Distrib 8.0.19, for Linux (x86_64)
--
-- Host: localhost    Database: ps_gris
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidato`
--

DROP TABLE IF EXISTS `candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidato` (
  `area_de_estudo` varchar(100) NOT NULL,
  `nota_da_prova` int NOT NULL,
  `porque_o_gris` varchar(1000) NOT NULL,
  `tentou_outro_ps` varchar(3) NOT NULL,
  `tempo_disponivel` varchar(50) NOT NULL,
  `hobby` varchar(1000) NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `candidato_ibfk_1` FOREIGN KEY (`id`) REFERENCES `estudante_UFRJ` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidato`
--

LOCK TABLES `candidato` WRITE;
/*!40000 ALTER TABLE `candidato` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante_UFRJ`
--

DROP TABLE IF EXISTS `estudante_UFRJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudante_UFRJ` (
  `nome` varchar(100) NOT NULL,
  `DRE` int NOT NULL,
  `curso` varchar(100) NOT NULL,
  `data_nascimento` date NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante_UFRJ`
--

LOCK TABLES `estudante_UFRJ` WRITE;
/*!40000 ALTER TABLE `estudante_UFRJ` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudante_UFRJ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membro`
--

DROP TABLE IF EXISTS `membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membro` (
  `area_estudo` varchar(100) NOT NULL,
  `palestras_dadas` varchar(1000) NOT NULL,
  `ativo_ou_colaborador` varchar(50) NOT NULL,
  `cursos_dados` varchar(3000) NOT NULL,
  `funcao_no_ps` varchar(1000) NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `membro_ibfk_1` FOREIGN KEY (`id`) REFERENCES `estudante_UFRJ` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membro`
--

LOCK TABLES `membro` WRITE;
/*!40000 ALTER TABLE `membro` DISABLE KEYS */;
/*!40000 ALTER TABLE `membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palestrante`
--

DROP TABLE IF EXISTS `palestrante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palestrante` (
  `nome_palestra` varchar(1000) NOT NULL,
  `tema` varchar(5000) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `TAG` varchar(5000) NOT NULL,
  `local_palestra` varchar(1000) NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `palestrante_ibfk_1` FOREIGN KEY (`id`) REFERENCES `membro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palestrante`
--

LOCK TABLES `palestrante` WRITE;
/*!40000 ALTER TABLE `palestrante` DISABLE KEYS */;
/*!40000 ALTER TABLE `palestrante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-29 20:10:45
