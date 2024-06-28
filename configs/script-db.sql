-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: megamedia_schema
-- ------------------------------------------------------
-- Server version	8.0.36

DROP schema IF EXISTS `megamedia_schema`;
CREATE schema megamedia_schema;
USE megamedia_schema;

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text,
  `information` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `id_video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_user_idx` (`user_id`),
  KEY `fk_article_category1_idx` (`category_id`),
  CONSTRAINT `fk_article_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_article_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'Heladas en la zona central: Emiten advertencia agrometeorológica para cuatro regiones','La Dirección Meteorológica de Chile(DMC) emitió este martes una advertencia agrometeorológica por heladas que se registrarán entre las regiones de Valparaíso y Maule. En detalle, este miércoles 26 de junio los termómetros llegarán a marcar mínimas entre -3° y 0°C, números que variarán dependiendo de la zona.','2024-06-26 15:54:06','2024-06-26 15:54:06',2,2,NULL),(2,'Intentaron robar un auto Tesla, pero la alta tecnología del vehículo les impidió llevárselo','Por primera vez en Chile, delincuentes intentaron robar un automóvil marca Tesla. Sin embargo, no lograron concretar el delito en vista de la alta tecnología de estos vehículos. l atraco se remonta al pasado martes, cuando un grupo de al menos cinco asaltantes cometieron una violenta encerrona en la comuna de Colina, Región Metropolitana.','2024-06-26 15:54:06','2024-06-27 22:49:16',1,2,'aM5H3QMG6zI'),(3,'Julian Assange queda libre bajo fianza tras un acuerdo con el gobierno de EE.UU.','El Tribunal Superior de Londres dejó este lunes en libertad bajo fianza al fundador de Wikileaks, Julian Assange, quien pasó más de cinco años encarcelado en una prisión de máxima seguridad en virtud de una orden de arresto emitida desde Estados Unidos por difusión de documentos secretos.','2024-06-26 15:54:06','2024-06-26 15:54:06',4,3,NULL),(4,'El recado que Arturo Vidal le manda a Gareca y que involucra a Gary Medel','El agónico empate 2-2 de Colo Colo ante O\'Higgins en el estadio El Teniente de Rancagua, por la ida de los cuartos de final de la fase regional de Copa Chile, estuvo marcado por la expulsión de Arturo Vidal. El experimentado volante del Cacique recibió la segunda tarjeta amarilla a los 89 minutos producto de una dudosa infracción sobre Antonio Díaz. Por eso, tras el cotejo, manifestó toda su molestia.','2024-06-26 15:54:06','2024-06-27 22:45:27',3,5,'v2jKVI49wR4');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'portada','2024-06-26 15:54:06','2024-06-26 15:54:06'),(2,'nacional','2024-06-26 15:54:06','2024-06-26 15:54:06'),(3,'mundo','2024-06-26 15:54:06','2024-06-26 15:54:06'),(4,'tendencias','2024-06-26 15:54:06','2024-06-26 15:54:06'),(5,'deportes','2024-06-26 15:54:06','2024-06-26 15:54:06');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Macarena','Silva','macarena_silva@gmail.com','2024-06-26 15:54:06','2024-06-26 15:54:06'),(2,'Rodrigo','Lopez','rodigo_lopez@gmail.com','2024-06-26 15:54:06','2024-06-26 15:54:06'),(3,'Victor','Reyes','victor_reyes@gmail.com','2024-06-26 15:54:06','2024-06-26 15:54:06'),(4,'Marcela','Campos','marcela_campos@gmail.com','2024-06-26 15:54:06','2024-06-26 15:54:06');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 23:28:20
