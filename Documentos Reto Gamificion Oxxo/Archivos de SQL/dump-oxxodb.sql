-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: mysql-2d1bc452-salvadoraancer-2d76.b.aivencloud.com    Database: oxxodb
-- ------------------------------------------------------
-- Server version	8.0.30

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1b5160a7-9c66-11ef-aee1-069b5a05fa35:1-118,
1bcd1514-0e71-11f0-b5ab-965c007445cf:1-719';

--
-- Table structure for table `Empleado`
--

DROP TABLE IF EXISTS `Empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Empleado` (
  `id_empleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nac` date NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Empleado`
--

LOCK TABLES `Empleado` WRITE;
/*!40000 ALTER TABLE `Empleado` DISABLE KEYS */;
INSERT INTO `Empleado` VALUES (1,'Juan','Pérez','1990-05-15','Asesor de Tienda','juan.perez@oxxo.com'),(2,'María','Gómez','1985-09-22','Asesor de Tienda','maria.gomez@oxxo.com'),(3,'Carlos','Ramírez','1993-07-30','Asesor de Tienda','carlos.ramirez@oxxo.com'),(4,'Ana','López','1998-12-10','Gerente','ana.lopez@oxxo.com'),(5,'Luis','Hernández','1989-04-03','Asesor de Tienda','luis.hernandez@oxxo.com'),(6,'Diego','Martínez','1995-06-21','Asesor de Tienda','diego.martinez@oxxo.com'),(7,'Sofía','Reyes','1991-11-11','Gerente','sofia.reyes@oxxo.com'),(8,'Pedro','Ortega','1996-03-25','Asesor de Tienda','pedro.ortega@oxxo.com'),(9,'Elena','Castro','1987-08-14','Gerente','elena.castro@oxxo.com'),(10,'Fernando','Santos','1992-01-05','Asesor de Tienda','fernando.santos@oxxo.com'),(11,'Santiago','Paredes','2004-05-07','Asesor de Tienda','a01178449@tec.mx'),(12,'Gaya','Gaya','2004-10-01','Asesor de Tienda','a01722922@tec.mx'),(13,'Valeria','Morales','1990-07-15','Cajera','vmorales@oxxo.com'),(14,'Gerardo','Navarro','1985-11-02','Supervisor de Turno','gnavarro@oxxo.com'),(15,'Ricardo','Salinas','1998-03-28','Auxiliar de Piso','rsalinas@oxxo.com');
/*!40000 ALTER TABLE `Empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpPendCandidato`
--

DROP TABLE IF EXISTS `ExpPendCandidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ExpPendCandidato` (
  `id_candidato` int NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `domicilio` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `nombre_uni` varchar(100) DEFAULT NULL,
  `carrera` varchar(150) DEFAULT NULL,
  `llamada_recomendacion` text,
  `trabajos` text,
  `contratar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_candidato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpPendCandidato`
--

LOCK TABLES `ExpPendCandidato` WRITE;
/*!40000 ALTER TABLE `ExpPendCandidato` DISABLE KEYS */;
INSERT INTO `ExpPendCandidato` VALUES (1,'Valeria Hernández Soto','Calle Sol 234','1999-05-12','Universidad Autónoma','Administración','Valeria fue muy puntual y trabajó bien en equipo. Siempre tuvo buena actitud con los clientes y nunca dio problemas. La recomendaríamos sin duda para atención al cliente.','Cajera / MiniSuper El Sol / May 2022 - May 2023\nVoluntaria en evento / Carrera 5K Local / Aug 2021 - Sep 2021',1),(2,'Diego Martínez Paredes','Av. Reforma 1020','1998-11-03','Preparatoria Técnica','Bachillerato','Diego cumplía, pero tuvimos varios problemas de actitud. Discutía a veces con clientes y llegó tarde en varias ocasiones. Le faltaba compromiso.','Ayudante de cocina / Tacos Don Pepe / Jan 2023 - Jun 2023\nRepartidor / Farmacia San José / Jul 2023 - Nov 2023',0),(3,'Jimena Lozano Ruíz','Calle Lago Azul 15','2000-07-28','Universidad Metropolitana','Contabilidad','Jimena era buena con los clientes, pero faltaba sin avisar y llegaba tarde seguido. Eso afectaba al equipo, aunque en ventas era muy capaz.','Vendedora / Tienda de Ropa B Fashion / Mar 2022 - Nov 2022\nAsistente administrativa / Oficina Contable Martínez / Jan 2023 - Apr 2023',0),(4,'Rafael Aguilar Mendoza','Av. Insurgentes 300','1995-02-19','Instituto Tecnológico','Ingeniería Industrial','Rafael fue muy responsable y manejó bien a su equipo. Nunca faltaba, resolvía problemas rápido y lo contrataríamos de nuevo sin pensarlo.','Supervisor de turno / Gasolinera FastFuel / Feb 2021 - Feb 2023\nCoordinador de inventario / Bodega Local Centro / Mar 2023 - Mar 2024',1),(5,'Mariana Torres Cordero','Calle Olmo 45','2001-09-17','Preparatoria Nacional','Bachillerato','Mariana era amable y cumplida. Solo a veces se distraía con el celular, pero en general, hacía bien su trabajo y atendía bien a los clientes.','Auxiliar de ventas / Tienda de Conveniencia Express / Jun 2023 - Jan 2024\nAyudante de mostrador / Pastelería Dulce Amor / Mar 2022 - Aug 2022',1),(6,'Pablo Flores Nava','Privada Cedros 67','1997-01-08','Universidad Central','Mercadotecnia','Pablo era respetuoso y cumplido. Sin embargo, bajo presión se ponía nervioso y bajaba su rendimiento, sobre todo en momentos de mucho movimiento.','Cajero / Cafetería Express Café / May 2022 - Mar 2023\nAsistente de ventas / Tienda de Deportes SportGo / Apr 2023 - Aug 2023',0),(7,'Ana Laura González Piña','Calle Río 212','1999-10-25','Universidad del Valle','Administración','Ana Laura era muy atenta y precisa en caja. Siempre mantenía la calma, incluso con clientes complicados. Excelente para atención al público.','Cajera / Supermercado MaxiDespensa / Feb 2022 - Feb 2023\nAtención a clientes / CineCity / Nov 2021 - Jan 2022',1),(8,'Jorge Ramírez Salinas','Boulevard Norte 101','1996-04-03','Escuela Técnica Regional','Técnico en Logística','Jorge era responsable en entregas y cuidadoso. Su trabajo era independiente, así que no interactuaba mucho con clientes, no puedo opinar de eso.','Chofer repartidor / Abarrotes El Centro / Jan 2021 - Jan 2023\nAuxiliar de almacén / Distribuidora Norte / Feb 2023 - Feb 2024',0),(9,'Fernanda Ortega Beltrán','Av. Jardines 90','2002-02-13','Universidad Popular','Contabilidad','Fernanda era puntual, muy precisa en caja y honesta. Sabía resolver problemas sola. Es muy confiable para cualquier puesto de ventas o caja.','Cajera / Panadería La Espiga / Mar 2022 - Nov 2022\nEncargada de turno / Tienda El Buen Vecino / Dec 2022 - Jun 2023',1);
/*!40000 ALTER TABLE `ExpPendCandidato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Foro`
--

DROP TABLE IF EXISTS `Foro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Foro` (
  `id_interaccion` int NOT NULL AUTO_INCREMENT,
  `id_pregunta` int DEFAULT NULL,
  `id_respuesta` int DEFAULT NULL,
  PRIMARY KEY (`id_interaccion`),
  KEY `Foro_Pregunta_FK` (`id_pregunta`),
  KEY `Foro_Respuesta_FK` (`id_respuesta`),
  CONSTRAINT `Foro_Pregunta_FK` FOREIGN KEY (`id_pregunta`) REFERENCES `Pregunta` (`id_pregunta`),
  CONSTRAINT `Foro_Respuesta_FK` FOREIGN KEY (`id_respuesta`) REFERENCES `Respuesta` (`id_respuesta`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Foro`
--

LOCK TABLES `Foro` WRITE;
/*!40000 ALTER TABLE `Foro` DISABLE KEYS */;
INSERT INTO `Foro` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,4,6),(7,7,7);
/*!40000 ALTER TABLE `Foro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Indicador`
--

DROP TABLE IF EXISTS `Indicador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Indicador` (
  `id_indicador` int NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`id_indicador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Indicador`
--

LOCK TABLES `Indicador` WRITE;
/*!40000 ALTER TABLE `Indicador` DISABLE KEYS */;
INSERT INTO `Indicador` VALUES (1,'Equipos entrenados'),(2,'Ejecución de promociones'),(3,'Venta por hora'),(4,'Efectividad de horarios'),(5,'Faltante de inventario'),(6,'Merma');
/*!40000 ALTER TABLE `Indicador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Indicadores`
--

DROP TABLE IF EXISTS `Indicadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Indicadores` (
  `id` int NOT NULL,
  `id_indicador` int DEFAULT NULL,
  `valor` int DEFAULT NULL,
  `tipo` text,
  `id_usuario` int DEFAULT NULL,
  `semana` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_indicador` (`id_indicador`),
  KEY `fk_usuario` (`id_usuario`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`),
  CONSTRAINT `Indicadores_ibfk_1` FOREIGN KEY (`id_indicador`) REFERENCES `Indicador` (`id_indicador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Indicadores`
--

LOCK TABLES `Indicadores` WRITE;
/*!40000 ALTER TABLE `Indicadores` DISABLE KEYS */;
INSERT INTO `Indicadores` VALUES (1,1,85,'porcentaje',1,'2025-01-11'),(2,2,78,'porcentaje',1,'2025-01-11'),(3,3,450,'divisa',1,'2025-01-11'),(4,4,88,'porcentaje',1,'2025-01-11'),(5,5,5,'porcentaje',1,'2025-01-11'),(6,6,2,'porcentaje',1,'2025-01-11'),(7,1,90,'porcentaje',2,'2025-01-11'),(8,2,82,'porcentaje',2,'2025-01-11'),(9,3,470,'divisa',2,'2025-01-11'),(10,4,85,'porcentaje',2,'2025-01-11'),(11,5,4,'porcentaje',2,'2025-01-11'),(12,6,3,'porcentaje',2,'2025-01-11'),(13,1,88,'porcentaje',3,'2025-01-11'),(14,2,80,'porcentaje',3,'2025-01-11'),(15,3,430,'divisa',3,'2025-01-11'),(16,4,87,'porcentaje',3,'2025-01-11'),(17,5,6,'porcentaje',3,'2025-01-11'),(18,6,1,'porcentaje',3,'2025-01-11'),(19,1,92,'porcentaje',5,'2025-01-11'),(20,2,85,'porcentaje',5,'2025-01-11'),(21,3,480,'divisa',5,'2025-01-11'),(22,4,90,'porcentaje',5,'2025-01-11'),(23,5,3,'porcentaje',5,'2025-01-11'),(24,6,2,'porcentaje',5,'2025-01-11'),(25,1,87,'porcentaje',6,'2025-01-11'),(26,2,79,'porcentaje',6,'2025-01-11'),(27,3,460,'divisa',6,'2025-01-11'),(28,4,89,'porcentaje',6,'2025-01-11'),(29,5,5,'porcentaje',6,'2025-01-11'),(30,6,3,'porcentaje',6,'2025-01-11'),(31,1,85,'porcentaje',8,'2025-01-11'),(32,2,77,'porcentaje',8,'2025-01-11'),(33,3,420,'divisa',8,'2025-01-11'),(34,4,86,'porcentaje',8,'2025-01-11'),(35,5,4,'porcentaje',8,'2025-01-11'),(36,6,2,'porcentaje',8,'2025-01-11'),(37,1,89,'porcentaje',10,'2025-01-11'),(38,2,83,'porcentaje',10,'2025-01-11'),(39,3,440,'divisa',10,'2025-01-11'),(40,4,88,'porcentaje',10,'2025-01-11'),(41,5,3,'porcentaje',10,'2025-01-11'),(42,6,1,'porcentaje',10,'2025-01-11'),(43,1,89,'porcentaje',1,'2025-01-18'),(44,2,82,'porcentaje',1,'2025-01-18'),(45,3,375,'divisa',1,'2025-01-18'),(46,4,91,'porcentaje',1,'2025-01-18'),(47,5,4,'porcentaje',1,'2025-01-18'),(48,6,3,'porcentaje',1,'2025-01-18'),(49,1,91,'porcentaje',2,'2025-01-18'),(50,2,82,'porcentaje',2,'2025-01-18'),(51,3,375,'divisa',2,'2025-01-18'),(52,4,92,'porcentaje',2,'2025-01-18'),(53,5,3,'porcentaje',2,'2025-01-18'),(54,6,4,'porcentaje',2,'2025-01-18'),(55,1,91,'porcentaje',3,'2025-01-18'),(56,2,87,'porcentaje',3,'2025-01-18'),(57,3,410,'divisa',3,'2025-01-18'),(58,4,92,'porcentaje',3,'2025-01-18'),(59,5,5,'porcentaje',3,'2025-01-18'),(60,6,2,'porcentaje',3,'2025-01-18'),(61,1,91,'porcentaje',5,'2025-01-18'),(62,2,81,'porcentaje',5,'2025-01-18'),(63,3,422,'divisa',5,'2025-01-18'),(64,4,90,'porcentaje',5,'2025-01-18'),(65,5,5,'porcentaje',5,'2025-01-18'),(66,6,3,'porcentaje',5,'2025-01-18'),(67,1,91,'porcentaje',6,'2025-01-18'),(68,2,85,'porcentaje',6,'2025-01-18'),(69,3,383,'divisa',6,'2025-01-18'),(70,4,94,'porcentaje',6,'2025-01-18'),(71,5,3,'porcentaje',6,'2025-01-18'),(72,6,4,'porcentaje',6,'2025-01-18'),(73,1,91,'porcentaje',8,'2025-01-18'),(74,2,83,'porcentaje',8,'2025-01-18'),(75,3,399,'divisa',8,'2025-01-18'),(76,4,90,'porcentaje',8,'2025-01-18'),(77,5,5,'porcentaje',8,'2025-01-18'),(78,6,2,'porcentaje',8,'2025-01-18'),(79,1,89,'porcentaje',10,'2025-01-18'),(80,2,82,'porcentaje',10,'2025-01-18'),(81,3,425,'divisa',10,'2025-01-18'),(82,4,90,'porcentaje',10,'2025-01-18'),(83,5,3,'porcentaje',10,'2025-01-18'),(84,6,3,'porcentaje',10,'2025-01-18'),(85,1,90,'porcentaje',1,'2025-01-25'),(86,2,88,'porcentaje',1,'2025-01-25'),(87,3,420,'divisa',1,'2025-01-25'),(88,4,92,'porcentaje',1,'2025-01-25'),(89,5,4,'porcentaje',1,'2025-01-25'),(90,6,2,'porcentaje',1,'2025-01-25'),(91,1,91,'porcentaje',2,'2025-01-25'),(92,2,87,'porcentaje',2,'2025-01-25'),(93,3,430,'divisa',2,'2025-01-25'),(94,4,91,'porcentaje',2,'2025-01-25'),(95,5,3,'porcentaje',2,'2025-01-25'),(96,6,3,'porcentaje',2,'2025-01-25'),(97,1,89,'porcentaje',3,'2025-01-25'),(98,2,86,'porcentaje',3,'2025-01-25'),(99,3,415,'divisa',3,'2025-01-25'),(100,4,93,'porcentaje',3,'2025-01-25'),(101,5,2,'porcentaje',3,'2025-01-25'),(102,6,1,'porcentaje',3,'2025-01-25'),(103,1,92,'porcentaje',5,'2025-01-25'),(104,2,89,'porcentaje',5,'2025-01-25'),(105,3,440,'divisa',5,'2025-01-25'),(106,4,94,'porcentaje',5,'2025-01-25'),(107,5,3,'porcentaje',5,'2025-01-25'),(108,6,2,'porcentaje',5,'2025-01-25'),(109,1,90,'porcentaje',6,'2025-01-25'),(110,2,85,'porcentaje',6,'2025-01-25'),(111,3,435,'divisa',6,'2025-01-25'),(112,4,92,'porcentaje',6,'2025-01-25'),(113,5,4,'porcentaje',6,'2025-01-25'),(114,6,1,'porcentaje',6,'2025-01-25'),(115,1,91,'porcentaje',8,'2025-01-25'),(116,2,88,'porcentaje',8,'2025-01-25'),(117,3,410,'divisa',8,'2025-01-25'),(118,4,93,'porcentaje',8,'2025-01-25'),(119,5,3,'porcentaje',8,'2025-01-25'),(120,6,2,'porcentaje',8,'2025-01-25'),(121,1,89,'porcentaje',10,'2025-01-25'),(122,2,87,'porcentaje',10,'2025-01-25'),(123,3,425,'divisa',10,'2025-01-25'),(124,4,91,'porcentaje',10,'2025-01-25'),(125,5,2,'porcentaje',10,'2025-01-25'),(126,6,1,'porcentaje',10,'2025-01-25'),(127,1,89,'porcentaje',1,'2025-02-01'),(128,2,87,'porcentaje',1,'2025-02-01'),(129,3,438,'divisa',1,'2025-02-01'),(130,4,91,'porcentaje',1,'2025-02-01'),(131,5,3,'porcentaje',1,'2025-02-01'),(132,6,3,'porcentaje',1,'2025-02-01'),(133,1,89,'porcentaje',2,'2025-02-01'),(134,2,82,'porcentaje',2,'2025-02-01'),(135,3,435,'divisa',2,'2025-02-01'),(136,4,90,'porcentaje',2,'2025-02-01'),(137,5,3,'porcentaje',2,'2025-02-01'),(138,6,3,'porcentaje',2,'2025-02-01'),(139,1,92,'porcentaje',3,'2025-02-01'),(140,2,87,'porcentaje',3,'2025-02-01'),(141,3,401,'divisa',3,'2025-02-01'),(142,4,91,'porcentaje',3,'2025-02-01'),(143,5,2,'porcentaje',3,'2025-02-01'),(144,6,2,'porcentaje',3,'2025-02-01'),(145,1,91,'porcentaje',5,'2025-02-01'),(146,2,87,'porcentaje',5,'2025-02-01'),(147,3,418,'divisa',5,'2025-02-01'),(148,4,94,'porcentaje',5,'2025-02-01'),(149,5,3,'porcentaje',5,'2025-02-01'),(150,6,3,'porcentaje',5,'2025-02-01'),(151,1,89,'porcentaje',6,'2025-02-01'),(152,2,85,'porcentaje',6,'2025-02-01'),(153,3,436,'divisa',6,'2025-02-01'),(154,4,94,'porcentaje',6,'2025-02-01'),(155,5,1,'porcentaje',6,'2025-02-01'),(156,6,3,'porcentaje',6,'2025-02-01'),(157,1,91,'porcentaje',8,'2025-02-01'),(158,2,84,'porcentaje',8,'2025-02-01'),(159,3,409,'divisa',8,'2025-02-01'),(160,4,91,'porcentaje',8,'2025-02-01'),(161,5,1,'porcentaje',8,'2025-02-01'),(162,6,2,'porcentaje',8,'2025-02-01'),(163,1,88,'porcentaje',10,'2025-02-01'),(164,2,84,'porcentaje',10,'2025-02-01'),(165,3,434,'divisa',10,'2025-02-01'),(166,4,91,'porcentaje',10,'2025-02-01'),(167,5,3,'porcentaje',10,'2025-02-01'),(168,6,1,'porcentaje',10,'2025-02-01'),(169,1,89,'porcentaje',1,'2025-02-08'),(170,2,89,'porcentaje',1,'2025-02-08'),(171,3,428,'divisa',1,'2025-02-08'),(172,4,92,'porcentaje',1,'2025-02-08'),(173,5,3,'porcentaje',1,'2025-02-08'),(174,6,4,'porcentaje',1,'2025-02-08'),(175,1,92,'porcentaje',2,'2025-02-08'),(176,2,88,'porcentaje',2,'2025-02-08'),(177,3,408,'divisa',2,'2025-02-08'),(178,4,91,'porcentaje',2,'2025-02-08'),(179,5,3,'porcentaje',2,'2025-02-08'),(180,6,4,'porcentaje',2,'2025-02-08'),(181,1,91,'porcentaje',3,'2025-02-08'),(182,2,85,'porcentaje',3,'2025-02-08'),(183,3,408,'divisa',3,'2025-02-08'),(184,4,93,'porcentaje',3,'2025-02-08'),(185,5,1,'porcentaje',3,'2025-02-08'),(186,6,4,'porcentaje',3,'2025-02-08'),(187,1,88,'porcentaje',5,'2025-02-08'),(188,2,89,'porcentaje',5,'2025-02-08'),(189,3,421,'divisa',5,'2025-02-08'),(190,4,92,'porcentaje',5,'2025-02-08'),(191,5,1,'porcentaje',5,'2025-02-08'),(192,6,4,'porcentaje',5,'2025-02-08'),(193,1,90,'porcentaje',6,'2025-02-08'),(194,2,85,'porcentaje',6,'2025-02-08'),(195,3,405,'divisa',6,'2025-02-08'),(196,4,91,'porcentaje',6,'2025-02-08'),(197,5,3,'porcentaje',6,'2025-02-08'),(198,6,3,'porcentaje',6,'2025-02-08'),(199,1,92,'porcentaje',8,'2025-02-08'),(200,2,89,'porcentaje',8,'2025-02-08'),(201,3,392,'divisa',8,'2025-02-08'),(202,4,94,'porcentaje',8,'2025-02-08'),(203,5,3,'porcentaje',8,'2025-02-08'),(204,6,3,'porcentaje',8,'2025-02-08'),(205,1,89,'porcentaje',10,'2025-02-08'),(206,2,86,'porcentaje',10,'2025-02-08'),(207,3,417,'divisa',10,'2025-02-08'),(208,4,92,'porcentaje',10,'2025-02-08'),(209,5,1,'porcentaje',10,'2025-02-08'),(210,6,3,'porcentaje',10,'2025-02-08'),(211,1,91,'porcentaje',1,'2025-02-15'),(212,2,87,'porcentaje',1,'2025-02-15'),(213,3,393,'divisa',1,'2025-02-15'),(214,4,90,'porcentaje',1,'2025-02-15'),(215,5,2,'porcentaje',1,'2025-02-15'),(216,6,1,'porcentaje',1,'2025-02-15'),(217,1,91,'porcentaje',2,'2025-02-15'),(218,2,90,'porcentaje',2,'2025-02-15'),(219,3,397,'divisa',2,'2025-02-15'),(220,4,90,'porcentaje',2,'2025-02-15'),(221,5,3,'porcentaje',2,'2025-02-15'),(222,6,3,'porcentaje',2,'2025-02-15'),(223,1,89,'porcentaje',3,'2025-02-15'),(224,2,91,'porcentaje',3,'2025-02-15'),(225,3,401,'divisa',3,'2025-02-15'),(226,4,91,'porcentaje',3,'2025-02-15'),(227,5,2,'porcentaje',3,'2025-02-15'),(228,6,3,'porcentaje',3,'2025-02-15'),(229,1,90,'porcentaje',5,'2025-02-15'),(230,2,86,'porcentaje',5,'2025-02-15'),(231,3,439,'divisa',5,'2025-02-15'),(232,4,92,'porcentaje',5,'2025-02-15'),(233,5,2,'porcentaje',5,'2025-02-15'),(234,6,2,'porcentaje',5,'2025-02-15'),(235,1,92,'porcentaje',6,'2025-02-15'),(236,2,85,'porcentaje',6,'2025-02-15'),(237,3,445,'divisa',6,'2025-02-15'),(238,4,93,'porcentaje',6,'2025-02-15'),(239,5,2,'porcentaje',6,'2025-02-15'),(240,6,2,'porcentaje',6,'2025-02-15'),(241,1,88,'porcentaje',8,'2025-02-15'),(242,2,87,'porcentaje',8,'2025-02-15'),(243,3,450,'divisa',8,'2025-02-15'),(244,4,92,'porcentaje',8,'2025-02-15'),(245,5,2,'porcentaje',8,'2025-02-15'),(246,6,1,'porcentaje',8,'2025-02-15'),(247,1,91,'porcentaje',10,'2025-02-15'),(248,2,90,'porcentaje',10,'2025-02-15'),(249,3,413,'divisa',10,'2025-02-15'),(250,4,94,'porcentaje',10,'2025-02-15'),(251,5,3,'porcentaje',10,'2025-02-15'),(252,6,1,'porcentaje',10,'2025-02-15'),(253,1,90,'porcentaje',1,'2025-02-22'),(254,2,90,'porcentaje',1,'2025-02-22'),(255,3,419,'divisa',1,'2025-02-22'),(256,4,92,'porcentaje',1,'2025-02-22'),(257,5,1,'porcentaje',1,'2025-02-22'),(258,6,1,'porcentaje',1,'2025-02-22'),(259,1,90,'porcentaje',2,'2025-02-22'),(260,2,90,'porcentaje',2,'2025-02-22'),(261,3,444,'divisa',2,'2025-02-22'),(262,4,94,'porcentaje',2,'2025-02-22'),(263,5,2,'porcentaje',2,'2025-02-22'),(264,6,3,'porcentaje',2,'2025-02-22'),(265,1,88,'porcentaje',3,'2025-02-22'),(266,2,90,'porcentaje',3,'2025-02-22'),(267,3,405,'divisa',3,'2025-02-22'),(268,4,94,'porcentaje',3,'2025-02-22'),(269,5,2,'porcentaje',3,'2025-02-22'),(270,6,3,'porcentaje',3,'2025-02-22'),(271,1,89,'porcentaje',5,'2025-02-22'),(272,2,91,'porcentaje',5,'2025-02-22'),(273,3,454,'divisa',5,'2025-02-22'),(274,4,93,'porcentaje',5,'2025-02-22'),(275,5,1,'porcentaje',5,'2025-02-22'),(276,6,2,'porcentaje',5,'2025-02-22'),(277,1,92,'porcentaje',6,'2025-02-22'),(278,2,91,'porcentaje',6,'2025-02-22'),(279,3,408,'divisa',6,'2025-02-22'),(280,4,94,'porcentaje',6,'2025-02-22'),(281,5,2,'porcentaje',6,'2025-02-22'),(282,6,3,'porcentaje',6,'2025-02-22'),(283,1,92,'porcentaje',8,'2025-02-22'),(284,2,87,'porcentaje',8,'2025-02-22'),(285,3,456,'divisa',8,'2025-02-22'),(286,4,91,'porcentaje',8,'2025-02-22'),(287,5,2,'porcentaje',8,'2025-02-22'),(288,6,1,'porcentaje',8,'2025-02-22'),(289,1,89,'porcentaje',10,'2025-02-22'),(290,2,86,'porcentaje',10,'2025-02-22'),(291,3,456,'divisa',10,'2025-02-22'),(292,4,93,'porcentaje',10,'2025-02-22'),(293,5,2,'porcentaje',10,'2025-02-22'),(294,6,2,'porcentaje',10,'2025-02-22'),(295,1,90,'porcentaje',1,'2025-03-01'),(296,2,85,'porcentaje',1,'2025-03-01'),(297,3,460,'divisa',1,'2025-03-01'),(298,4,94,'porcentaje',1,'2025-03-01'),(299,5,4,'porcentaje',1,'2025-03-01'),(300,6,0,'porcentaje',1,'2025-03-01'),(301,1,91,'porcentaje',2,'2025-03-01'),(302,2,85,'porcentaje',2,'2025-03-01'),(303,3,452,'divisa',2,'2025-03-01'),(304,4,93,'porcentaje',2,'2025-03-01'),(305,5,4,'porcentaje',2,'2025-03-01'),(306,6,1,'porcentaje',2,'2025-03-01'),(307,1,92,'porcentaje',3,'2025-03-01'),(308,2,85,'porcentaje',3,'2025-03-01'),(309,3,412,'divisa',3,'2025-03-01'),(310,4,94,'porcentaje',3,'2025-03-01'),(311,5,4,'porcentaje',3,'2025-03-01'),(312,6,1,'porcentaje',3,'2025-03-01'),(313,1,89,'porcentaje',5,'2025-03-01'),(314,2,86,'porcentaje',5,'2025-03-01'),(315,3,425,'divisa',5,'2025-03-01'),(316,4,93,'porcentaje',5,'2025-03-01'),(317,5,3,'porcentaje',5,'2025-03-01'),(318,6,0,'porcentaje',5,'2025-03-01'),(319,1,88,'porcentaje',6,'2025-03-01'),(320,2,89,'porcentaje',6,'2025-03-01'),(321,3,432,'divisa',6,'2025-03-01'),(322,4,91,'porcentaje',6,'2025-03-01'),(323,5,3,'porcentaje',6,'2025-03-01'),(324,6,2,'porcentaje',6,'2025-03-01'),(325,1,88,'porcentaje',8,'2025-03-01'),(326,2,87,'porcentaje',8,'2025-03-01'),(327,3,449,'divisa',8,'2025-03-01'),(328,4,93,'porcentaje',8,'2025-03-01'),(329,5,3,'porcentaje',8,'2025-03-01'),(330,6,1,'porcentaje',8,'2025-03-01'),(331,1,91,'porcentaje',10,'2025-03-01'),(332,2,88,'porcentaje',10,'2025-03-01'),(333,3,437,'divisa',10,'2025-03-01'),(334,4,91,'porcentaje',10,'2025-03-01'),(335,5,2,'porcentaje',10,'2025-03-01'),(336,6,1,'porcentaje',10,'2025-03-01'),(337,1,89,'porcentaje',1,'2025-03-08'),(338,2,88,'porcentaje',1,'2025-03-08'),(339,3,426,'divisa',1,'2025-03-08'),(340,4,93,'porcentaje',1,'2025-03-08'),(341,5,2,'porcentaje',1,'2025-03-08'),(342,6,3,'porcentaje',1,'2025-03-08'),(343,1,89,'porcentaje',2,'2025-03-08'),(344,2,90,'porcentaje',2,'2025-03-08'),(345,3,464,'divisa',2,'2025-03-08'),(346,4,94,'porcentaje',2,'2025-03-08'),(347,5,2,'porcentaje',2,'2025-03-08'),(348,6,3,'porcentaje',2,'2025-03-08'),(349,1,89,'porcentaje',3,'2025-03-08'),(350,2,84,'porcentaje',3,'2025-03-08'),(351,3,416,'divisa',3,'2025-03-08'),(352,4,90,'porcentaje',3,'2025-03-08'),(353,5,3,'porcentaje',3,'2025-03-08'),(354,6,3,'porcentaje',3,'2025-03-08'),(355,1,92,'porcentaje',5,'2025-03-08'),(356,2,88,'porcentaje',5,'2025-03-08'),(357,3,438,'divisa',5,'2025-03-08'),(358,4,93,'porcentaje',5,'2025-03-08'),(359,5,2,'porcentaje',5,'2025-03-08'),(360,6,1,'porcentaje',5,'2025-03-08'),(361,1,90,'porcentaje',6,'2025-03-08'),(362,2,85,'porcentaje',6,'2025-03-08'),(363,3,449,'divisa',6,'2025-03-08'),(364,4,94,'porcentaje',6,'2025-03-08'),(365,5,2,'porcentaje',6,'2025-03-08'),(366,6,2,'porcentaje',6,'2025-03-08'),(367,1,88,'porcentaje',8,'2025-03-08'),(368,2,86,'porcentaje',8,'2025-03-08'),(369,3,425,'divisa',8,'2025-03-08'),(370,4,91,'porcentaje',8,'2025-03-08'),(371,5,2,'porcentaje',8,'2025-03-08'),(372,6,2,'porcentaje',8,'2025-03-08'),(373,1,90,'porcentaje',10,'2025-03-08'),(374,2,88,'porcentaje',10,'2025-03-08'),(375,3,463,'divisa',10,'2025-03-08'),(376,4,94,'porcentaje',10,'2025-03-08'),(377,5,3,'porcentaje',10,'2025-03-08'),(378,6,2,'porcentaje',10,'2025-03-08'),(379,1,89,'porcentaje',1,'2025-03-15'),(380,2,89,'porcentaje',1,'2025-03-15'),(381,3,433,'divisa',1,'2025-03-15'),(382,4,93,'porcentaje',1,'2025-03-15'),(383,5,3,'porcentaje',1,'2025-03-15'),(384,6,1,'porcentaje',1,'2025-03-15'),(385,1,91,'porcentaje',2,'2025-03-15'),(386,2,88,'porcentaje',2,'2025-03-15'),(387,3,470,'divisa',2,'2025-03-15'),(388,4,93,'porcentaje',2,'2025-03-15'),(389,5,1,'porcentaje',2,'2025-03-15'),(390,6,3,'porcentaje',2,'2025-03-15'),(391,1,90,'porcentaje',3,'2025-03-15'),(392,2,86,'porcentaje',3,'2025-03-15'),(393,3,461,'divisa',3,'2025-03-15'),(394,4,93,'porcentaje',3,'2025-03-15'),(395,5,1,'porcentaje',3,'2025-03-15'),(396,6,2,'porcentaje',3,'2025-03-15'),(397,1,89,'porcentaje',5,'2025-03-15'),(398,2,83,'porcentaje',5,'2025-03-15'),(399,3,417,'divisa',5,'2025-03-15'),(400,4,90,'porcentaje',5,'2025-03-15'),(401,5,3,'porcentaje',5,'2025-03-15'),(402,6,2,'porcentaje',5,'2025-03-15'),(403,1,89,'porcentaje',6,'2025-03-15'),(404,2,83,'porcentaje',6,'2025-03-15'),(405,3,453,'divisa',6,'2025-03-15'),(406,4,94,'porcentaje',6,'2025-03-15'),(407,5,1,'porcentaje',6,'2025-03-15'),(408,6,3,'porcentaje',6,'2025-03-15'),(409,1,91,'porcentaje',8,'2025-03-15'),(410,2,88,'porcentaje',8,'2025-03-15'),(411,3,437,'divisa',8,'2025-03-15'),(412,4,91,'porcentaje',8,'2025-03-15'),(413,5,1,'porcentaje',8,'2025-03-15'),(414,6,2,'porcentaje',8,'2025-03-15'),(415,1,89,'porcentaje',10,'2025-03-15'),(416,2,89,'porcentaje',10,'2025-03-15'),(417,3,434,'divisa',10,'2025-03-15'),(418,4,94,'porcentaje',10,'2025-03-15'),(419,5,2,'porcentaje',10,'2025-03-15'),(420,6,1,'porcentaje',10,'2025-03-15'),(421,1,89,'porcentaje',1,'2025-03-22'),(422,2,88,'porcentaje',1,'2025-03-22'),(423,3,426,'divisa',1,'2025-03-22'),(424,4,93,'porcentaje',1,'2025-03-22'),(425,5,2,'porcentaje',1,'2025-03-22'),(426,6,3,'porcentaje',1,'2025-03-22'),(427,1,91,'porcentaje',2,'2025-03-22'),(428,2,89,'porcentaje',2,'2025-03-22'),(429,3,462,'divisa',2,'2025-03-22'),(430,4,92,'porcentaje',2,'2025-03-22'),(431,5,2,'porcentaje',2,'2025-03-22'),(432,6,1,'porcentaje',2,'2025-03-22'),(433,1,92,'porcentaje',3,'2025-03-22'),(434,2,91,'porcentaje',3,'2025-03-22'),(435,3,437,'divisa',3,'2025-03-22'),(436,4,90,'porcentaje',3,'2025-03-22'),(437,5,2,'porcentaje',3,'2025-03-22'),(438,6,3,'porcentaje',3,'2025-03-22'),(439,1,91,'porcentaje',5,'2025-03-22'),(440,2,86,'porcentaje',5,'2025-03-22'),(441,3,472,'divisa',5,'2025-03-22'),(442,4,93,'porcentaje',5,'2025-03-22'),(443,5,2,'porcentaje',5,'2025-03-22'),(444,6,3,'porcentaje',5,'2025-03-22'),(445,1,91,'porcentaje',6,'2025-03-22'),(446,2,85,'porcentaje',6,'2025-03-22'),(447,3,424,'divisa',6,'2025-03-22'),(448,4,91,'porcentaje',6,'2025-03-22'),(449,5,0,'porcentaje',6,'2025-03-22'),(450,6,3,'porcentaje',6,'2025-03-22'),(451,1,91,'porcentaje',8,'2025-03-22'),(452,2,91,'porcentaje',8,'2025-03-22'),(453,3,438,'divisa',8,'2025-03-22'),(454,4,93,'porcentaje',8,'2025-03-22'),(455,5,1,'porcentaje',8,'2025-03-22'),(456,6,2,'porcentaje',8,'2025-03-22'),(457,1,88,'porcentaje',10,'2025-03-22'),(458,2,86,'porcentaje',10,'2025-03-22'),(459,3,431,'divisa',10,'2025-03-22'),(460,4,91,'porcentaje',10,'2025-03-22'),(461,5,0,'porcentaje',10,'2025-03-22'),(462,6,3,'porcentaje',10,'2025-03-22'),(463,1,91,'porcentaje',1,'2025-03-29'),(464,2,90,'porcentaje',1,'2025-03-29'),(465,3,443,'divisa',1,'2025-03-29'),(466,4,91,'porcentaje',1,'2025-03-29'),(467,5,1,'porcentaje',1,'2025-03-29'),(468,6,0,'porcentaje',1,'2025-03-29'),(469,1,91,'porcentaje',2,'2025-03-29'),(470,2,88,'porcentaje',2,'2025-03-29'),(471,3,481,'divisa',2,'2025-03-29'),(472,4,90,'porcentaje',2,'2025-03-29'),(473,5,2,'porcentaje',2,'2025-03-29'),(474,6,0,'porcentaje',2,'2025-03-29'),(475,1,90,'porcentaje',3,'2025-03-29'),(476,2,92,'porcentaje',3,'2025-03-29'),(477,3,446,'divisa',3,'2025-03-29'),(478,4,92,'porcentaje',3,'2025-03-29'),(479,5,2,'porcentaje',3,'2025-03-29'),(480,6,0,'porcentaje',3,'2025-03-29'),(481,1,90,'porcentaje',5,'2025-03-29'),(482,2,86,'porcentaje',5,'2025-03-29'),(483,3,468,'divisa',5,'2025-03-29'),(484,4,91,'porcentaje',5,'2025-03-29'),(485,5,1,'porcentaje',5,'2025-03-29'),(486,6,1,'porcentaje',5,'2025-03-29'),(487,1,89,'porcentaje',6,'2025-03-29'),(488,2,87,'porcentaje',6,'2025-03-29'),(489,3,430,'divisa',6,'2025-03-29'),(490,4,92,'porcentaje',6,'2025-03-29'),(491,5,2,'porcentaje',6,'2025-03-29'),(492,6,1,'porcentaje',6,'2025-03-29'),(493,1,92,'porcentaje',8,'2025-03-29'),(494,2,90,'porcentaje',8,'2025-03-29'),(495,3,463,'divisa',8,'2025-03-29'),(496,4,94,'porcentaje',8,'2025-03-29'),(497,5,0,'porcentaje',8,'2025-03-29'),(498,6,2,'porcentaje',8,'2025-03-29'),(499,1,89,'porcentaje',10,'2025-03-29'),(500,2,89,'porcentaje',10,'2025-03-29'),(501,3,456,'divisa',10,'2025-03-29'),(502,4,91,'porcentaje',10,'2025-03-29'),(503,5,1,'porcentaje',10,'2025-03-29'),(504,6,0,'porcentaje',10,'2025-03-29'),(505,1,90,'porcentaje',1,'2025-04-05'),(506,2,87,'porcentaje',1,'2025-04-05'),(507,3,444,'divisa',1,'2025-04-05'),(508,4,90,'porcentaje',1,'2025-04-05'),(509,5,1,'porcentaje',1,'2025-04-05'),(510,6,2,'porcentaje',1,'2025-04-05'),(511,1,88,'porcentaje',2,'2025-04-05'),(512,2,88,'porcentaje',2,'2025-04-05'),(513,3,500,'divisa',2,'2025-04-05'),(514,4,94,'porcentaje',2,'2025-04-05'),(515,5,1,'porcentaje',2,'2025-04-05'),(516,6,1,'porcentaje',2,'2025-04-05'),(517,1,91,'porcentaje',3,'2025-04-05'),(518,2,92,'porcentaje',3,'2025-04-05'),(519,3,494,'divisa',3,'2025-04-05'),(520,4,94,'porcentaje',3,'2025-04-05'),(521,5,1,'porcentaje',3,'2025-04-05'),(522,6,1,'porcentaje',3,'2025-04-05'),(523,1,91,'porcentaje',5,'2025-04-05'),(524,2,91,'porcentaje',5,'2025-04-05'),(525,3,476,'divisa',5,'2025-04-05'),(526,4,92,'porcentaje',5,'2025-04-05'),(527,5,2,'porcentaje',5,'2025-04-05'),(528,6,2,'porcentaje',5,'2025-04-05'),(529,1,89,'porcentaje',6,'2025-04-05'),(530,2,87,'porcentaje',6,'2025-04-05'),(531,3,481,'divisa',6,'2025-04-05'),(532,4,92,'porcentaje',6,'2025-04-05'),(533,5,2,'porcentaje',6,'2025-04-05'),(534,6,1,'porcentaje',6,'2025-04-05'),(535,1,92,'porcentaje',8,'2025-04-05'),(536,2,93,'porcentaje',8,'2025-04-05'),(537,3,448,'divisa',8,'2025-04-05'),(538,4,91,'porcentaje',8,'2025-04-05'),(539,5,3,'porcentaje',8,'2025-04-05'),(540,6,1,'porcentaje',8,'2025-04-05'),(541,1,92,'porcentaje',10,'2025-04-05'),(542,2,89,'porcentaje',10,'2025-04-05'),(543,3,473,'divisa',10,'2025-04-05'),(544,4,93,'porcentaje',10,'2025-04-05'),(545,5,2,'porcentaje',10,'2025-04-05'),(546,6,3,'porcentaje',10,'2025-04-05'),(547,1,89,'porcentaje',1,'2025-04-12'),(548,2,89,'porcentaje',1,'2025-04-12'),(549,3,466,'divisa',1,'2025-04-12'),(550,4,91,'porcentaje',1,'2025-04-12'),(551,5,2,'porcentaje',1,'2025-04-12'),(552,6,2,'porcentaje',1,'2025-04-12'),(553,1,89,'porcentaje',2,'2025-04-12'),(554,2,89,'porcentaje',2,'2025-04-12'),(555,3,463,'divisa',2,'2025-04-12'),(556,4,93,'porcentaje',2,'2025-04-12'),(557,5,2,'porcentaje',2,'2025-04-12'),(558,6,1,'porcentaje',2,'2025-04-12'),(559,1,91,'porcentaje',3,'2025-04-12'),(560,2,93,'porcentaje',3,'2025-04-12'),(561,3,465,'divisa',3,'2025-04-12'),(562,4,90,'porcentaje',3,'2025-04-12'),(563,5,2,'porcentaje',3,'2025-04-12'),(564,6,0,'porcentaje',3,'2025-04-12'),(565,1,90,'porcentaje',5,'2025-04-12'),(566,2,92,'porcentaje',5,'2025-04-12'),(567,3,499,'divisa',5,'2025-04-12'),(568,4,92,'porcentaje',5,'2025-04-12'),(569,5,2,'porcentaje',5,'2025-04-12'),(570,6,0,'porcentaje',5,'2025-04-12'),(571,1,88,'porcentaje',6,'2025-04-12'),(572,2,94,'porcentaje',6,'2025-04-12'),(573,3,484,'divisa',6,'2025-04-12'),(574,4,90,'porcentaje',6,'2025-04-12'),(575,5,2,'porcentaje',6,'2025-04-12'),(576,6,2,'porcentaje',6,'2025-04-12'),(577,1,88,'porcentaje',8,'2025-04-12'),(578,2,90,'porcentaje',8,'2025-04-12'),(579,3,503,'divisa',8,'2025-04-12'),(580,4,92,'porcentaje',8,'2025-04-12'),(581,5,2,'porcentaje',8,'2025-04-12'),(582,6,0,'porcentaje',8,'2025-04-12'),(583,1,88,'porcentaje',10,'2025-04-12'),(584,2,88,'porcentaje',10,'2025-04-12'),(585,3,489,'divisa',10,'2025-04-12'),(586,4,90,'porcentaje',10,'2025-04-12'),(587,5,1,'porcentaje',10,'2025-04-12'),(588,6,1,'porcentaje',10,'2025-04-12'),(589,1,92,'porcentaje',1,'2025-04-19'),(590,2,95,'porcentaje',1,'2025-04-19'),(591,3,528,'divisa',1,'2025-04-19'),(592,4,91,'porcentaje',1,'2025-04-19'),(593,5,2,'porcentaje',1,'2025-04-19'),(594,6,2,'porcentaje',1,'2025-04-19'),(595,1,88,'porcentaje',2,'2025-04-19'),(596,2,91,'porcentaje',2,'2025-04-19'),(597,3,498,'divisa',2,'2025-04-19'),(598,4,90,'porcentaje',2,'2025-04-19'),(599,5,1,'porcentaje',2,'2025-04-19'),(600,6,2,'porcentaje',2,'2025-04-19'),(601,1,88,'porcentaje',3,'2025-04-19'),(602,2,91,'porcentaje',3,'2025-04-19'),(603,3,540,'divisa',3,'2025-04-19'),(604,4,94,'porcentaje',3,'2025-04-19'),(605,5,0,'porcentaje',3,'2025-04-19'),(606,6,0,'porcentaje',3,'2025-04-19'),(607,1,92,'porcentaje',5,'2025-04-19'),(608,2,91,'porcentaje',5,'2025-04-19'),(609,3,513,'divisa',5,'2025-04-19'),(610,4,93,'porcentaje',5,'2025-04-19'),(611,5,2,'porcentaje',5,'2025-04-19'),(612,6,2,'porcentaje',5,'2025-04-19'),(613,1,92,'porcentaje',6,'2025-04-19'),(614,2,91,'porcentaje',6,'2025-04-19'),(615,3,536,'divisa',6,'2025-04-19'),(616,4,92,'porcentaje',6,'2025-04-19'),(617,5,1,'porcentaje',6,'2025-04-19'),(618,6,1,'porcentaje',6,'2025-04-19'),(619,1,91,'porcentaje',8,'2025-04-19'),(620,2,89,'porcentaje',8,'2025-04-19'),(621,3,494,'divisa',8,'2025-04-19'),(622,4,90,'porcentaje',8,'2025-04-19'),(623,5,0,'porcentaje',8,'2025-04-19'),(624,6,2,'porcentaje',8,'2025-04-19'),(625,1,89,'porcentaje',10,'2025-04-19'),(626,2,92,'porcentaje',10,'2025-04-19'),(627,3,531,'divisa',10,'2025-04-19'),(628,4,92,'porcentaje',10,'2025-04-19'),(629,5,1,'porcentaje',10,'2025-04-19'),(630,6,1,'porcentaje',10,'2025-04-19'),(631,1,92,'porcentaje',1,'2025-04-26'),(632,2,91,'porcentaje',1,'2025-04-26'),(633,3,505,'divisa',1,'2025-04-26'),(634,4,91,'porcentaje',1,'2025-04-26'),(635,5,2,'porcentaje',1,'2025-04-26'),(636,6,1,'porcentaje',1,'2025-04-26'),(637,1,91,'porcentaje',2,'2025-04-26'),(638,2,90,'porcentaje',2,'2025-04-26'),(639,3,481,'divisa',2,'2025-04-26'),(640,4,93,'porcentaje',2,'2025-04-26'),(641,5,2,'porcentaje',2,'2025-04-26'),(642,6,2,'porcentaje',2,'2025-04-26'),(643,1,90,'porcentaje',3,'2025-04-26'),(644,2,91,'porcentaje',3,'2025-04-26'),(645,3,498,'divisa',3,'2025-04-26'),(646,4,90,'porcentaje',3,'2025-04-26'),(647,5,2,'porcentaje',3,'2025-04-26'),(648,6,3,'porcentaje',3,'2025-04-26'),(649,1,91,'porcentaje',5,'2025-04-26'),(650,2,94,'porcentaje',5,'2025-04-26'),(651,3,482,'divisa',5,'2025-04-26'),(652,4,94,'porcentaje',5,'2025-04-26'),(653,5,3,'porcentaje',5,'2025-04-26'),(654,6,3,'porcentaje',5,'2025-04-26'),(655,1,88,'porcentaje',6,'2025-04-26'),(656,2,93,'porcentaje',6,'2025-04-26'),(657,3,451,'divisa',6,'2025-04-26'),(658,4,93,'porcentaje',6,'2025-04-26'),(659,5,2,'porcentaje',6,'2025-04-26'),(660,6,1,'porcentaje',6,'2025-04-26'),(661,1,91,'porcentaje',8,'2025-04-26'),(662,2,91,'porcentaje',8,'2025-04-26'),(663,3,450,'divisa',8,'2025-04-26'),(664,4,92,'porcentaje',8,'2025-04-26'),(665,5,3,'porcentaje',8,'2025-04-26'),(666,6,1,'porcentaje',8,'2025-04-26'),(667,1,89,'porcentaje',10,'2025-04-26'),(668,2,91,'porcentaje',10,'2025-04-26'),(669,3,471,'divisa',10,'2025-04-26'),(670,4,94,'porcentaje',10,'2025-04-26'),(671,5,3,'porcentaje',10,'2025-04-26'),(672,6,3,'porcentaje',10,'2025-04-26'),(673,1,91,'porcentaje',1,'2025-05-03'),(674,2,88,'porcentaje',1,'2025-05-03'),(675,3,461,'divisa',1,'2025-05-03'),(676,4,94,'porcentaje',1,'2025-05-03'),(677,5,3,'porcentaje',1,'2025-05-03'),(678,6,3,'porcentaje',1,'2025-05-03'),(679,1,90,'porcentaje',2,'2025-05-03'),(680,2,93,'porcentaje',2,'2025-05-03'),(681,3,465,'divisa',2,'2025-05-03'),(682,4,91,'porcentaje',2,'2025-05-03'),(683,5,1,'porcentaje',2,'2025-05-03'),(684,6,2,'porcentaje',2,'2025-05-03'),(685,1,90,'porcentaje',3,'2025-05-03'),(686,2,89,'porcentaje',3,'2025-05-03'),(687,3,488,'divisa',3,'2025-05-03'),(688,4,91,'porcentaje',3,'2025-05-03'),(689,5,2,'porcentaje',3,'2025-05-03'),(690,6,1,'porcentaje',3,'2025-05-03'),(691,1,89,'porcentaje',5,'2025-05-03'),(692,2,87,'porcentaje',5,'2025-05-03'),(693,3,470,'divisa',5,'2025-05-03'),(694,4,93,'porcentaje',5,'2025-05-03'),(695,5,3,'porcentaje',5,'2025-05-03'),(696,6,3,'porcentaje',5,'2025-05-03'),(697,1,92,'porcentaje',6,'2025-05-03'),(698,2,89,'porcentaje',6,'2025-05-03'),(699,3,468,'divisa',6,'2025-05-03'),(700,4,91,'porcentaje',6,'2025-05-03'),(701,5,1,'porcentaje',6,'2025-05-03'),(702,6,2,'porcentaje',6,'2025-05-03'),(703,1,92,'porcentaje',8,'2025-05-03'),(704,2,93,'porcentaje',8,'2025-05-03'),(705,3,458,'divisa',8,'2025-05-03'),(706,4,91,'porcentaje',8,'2025-05-03'),(707,5,3,'porcentaje',8,'2025-05-03'),(708,6,2,'porcentaje',8,'2025-05-03'),(709,1,89,'porcentaje',10,'2025-05-03'),(710,2,89,'porcentaje',10,'2025-05-03'),(711,3,471,'divisa',10,'2025-05-03'),(712,4,92,'porcentaje',10,'2025-05-03'),(713,5,3,'porcentaje',10,'2025-05-03'),(714,6,2,'porcentaje',10,'2025-05-03');
/*!40000 ALTER TABLE `Indicadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LikesPreguntas`
--

DROP TABLE IF EXISTS `LikesPreguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LikesPreguntas` (
  `id_pregunta` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `LikesPreguntas_Usuario_FK` (`id_usuario`),
  KEY `LikesPreguntas_Pregunta_FK` (`id_pregunta`),
  CONSTRAINT `LikesPreguntas_Pregunta_FK` FOREIGN KEY (`id_pregunta`) REFERENCES `Pregunta` (`id_pregunta`),
  CONSTRAINT `LikesPreguntas_Usuario_FK` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LikesPreguntas`
--

LOCK TABLES `LikesPreguntas` WRITE;
/*!40000 ALTER TABLE `LikesPreguntas` DISABLE KEYS */;
INSERT INTO `LikesPreguntas` VALUES (4,2,1),(6,8,1);
/*!40000 ALTER TABLE `LikesPreguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LikesRespuestas`
--

DROP TABLE IF EXISTS `LikesRespuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LikesRespuestas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_respuesta` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `LikesRespuestas_Respuesta_FK` (`id_respuesta`),
  KEY `LikesRespuestas_Usuario_FK` (`id_usuario`),
  CONSTRAINT `LikesRespuestas_Respuesta_FK` FOREIGN KEY (`id_respuesta`) REFERENCES `Respuesta` (`id_respuesta`),
  CONSTRAINT `LikesRespuestas_Usuario_FK` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LikesRespuestas`
--

LOCK TABLES `LikesRespuestas` WRITE;
/*!40000 ALTER TABLE `LikesRespuestas` DISABLE KEYS */;
INSERT INTO `LikesRespuestas` VALUES (1,1,4),(2,1,7);
/*!40000 ALTER TABLE `LikesRespuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mapa`
--

DROP TABLE IF EXISTS `Mapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Mapa` (
  `id_mapa` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_mapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mapa`
--

LOCK TABLES `Mapa` WRITE;
/*!40000 ALTER TABLE `Mapa` DISABLE KEYS */;
INSERT INTO `Mapa` VALUES (1,'Tienda Express'),(2,'Inventario OXXO'),(3,'Atención al Cliente'),(4,'Caja Registradora'),(5,'Promociones y Descuentos');
/*!40000 ALTER TABLE `Mapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Minijuego`
--

DROP TABLE IF EXISTS `Minijuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Minijuego` (
  `id_minijuego` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_mapa` int DEFAULT NULL,
  `id_metrica` int DEFAULT NULL,
  PRIMARY KEY (`id_minijuego`),
  KEY `id_mapa` (`id_mapa`),
  KEY `fk_minijuego_metrica` (`id_metrica`),
  CONSTRAINT `fk_minijuego_metrica` FOREIGN KEY (`id_metrica`) REFERENCES `Indicador` (`id_indicador`),
  CONSTRAINT `Minijuego_ibfk_1` FOREIGN KEY (`id_mapa`) REFERENCES `Mapa` (`id_mapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Minijuego`
--

LOCK TABLES `Minijuego` WRITE;
/*!40000 ALTER TABLE `Minijuego` DISABLE KEYS */;
INSERT INTO `Minijuego` VALUES (1,'Reposición Rápida',1,NULL),(2,'Control de Stock',2,NULL),(3,'Cliente Difícil',3,NULL),(4,'Cobro Exacto',4,NULL),(5,'Promociones en Acción',5,NULL);
/*!40000 ALTER TABLE `Minijuego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NotasIrregularidades`
--

DROP TABLE IF EXISTS `NotasIrregularidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NotasIrregularidades` (
  `id_notas` int NOT NULL AUTO_INCREMENT,
  `tienda` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `tipo_irregularidad` varchar(50) NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `NotasIrregularidades_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NotasIrregularidades`
--

LOCK TABLES `NotasIrregularidades` WRITE;
/*!40000 ALTER TABLE `NotasIrregularidades` DISABLE KEYS */;
INSERT INTO `NotasIrregularidades` VALUES (15,'Tienda 1','Productos faltantes','2025-04-28 22:32:32','Producto',1),(16,'Tienda 4','Esto es para la documentacion','2025-04-29 00:10:35','Otro',1),(17,'Tienda 2','Productos no en orden','2025-04-29 02:04:01','Producto',1),(18,'Tienda 1','ahora si hay','2025-04-29 18:10:35','Limpieza',1),(19,'Tienda 1','ahora si hay mas','2025-04-29 18:36:01','Limpieza',1);
/*!40000 ALTER TABLE `NotasIrregularidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pregunta`
--

DROP TABLE IF EXISTS `Pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pregunta` (
  `id_pregunta` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `texto_pregunta` varchar(200) NOT NULL,
  `likes` int DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `Pregunta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pregunta`
--

LOCK TABLES `Pregunta` WRITE;
/*!40000 ALTER TABLE `Pregunta` DISABLE KEYS */;
INSERT INTO `Pregunta` VALUES (1,1,'¿Cómo manejar a un cliente enojado en la tienda?',10,'2023-04-17 00:00:00'),(2,2,'¿Cuál es la mejor estrategia para reponer mercancía rápido?',15,'2023-03-30 00:00:00'),(3,3,'¿Cómo evitar errores en el cobro de productos?',8,'2023-05-02 00:00:00'),(4,4,'¿Qué promociones suelen atraer más clientes?',22,'2023-12-10 00:00:00'),(5,5,'¿Cómo manejar un alto flujo de clientes en horas pico?',12,'2023-09-16 00:00:00'),(6,1,'Cómo despido a alguien?',1,'2025-04-09 19:26:42'),(7,1,'como desppido a alguien',0,'2025-04-10 11:44:25');
/*!40000 ALTER TABLE `Pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Respuesta`
--

DROP TABLE IF EXISTS `Respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Respuesta` (
  `id_respuesta` int NOT NULL AUTO_INCREMENT,
  `texto_respuesta` varchar(200) NOT NULL,
  `likes` int DEFAULT '0',
  `id_usuario` int NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id_respuesta`),
  KEY `Respuesta_Usuario_FK` (`id_usuario`),
  CONSTRAINT `Respuesta_Usuario_FK` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Respuesta`
--

LOCK TABLES `Respuesta` WRITE;
/*!40000 ALTER TABLE `Respuesta` DISABLE KEYS */;
INSERT INTO `Respuesta` VALUES (1,'Escucha al cliente con calma y ofrécele una solución rápida.',5,1,'2023-09-17 00:00:00'),(2,'Clasifica los productos y colócalos en las áreas correctas.',10,2,'2023-06-07 00:00:00'),(3,'Revisa dos veces los códigos de barras antes de cobrar.',7,3,'2023-01-08 00:00:00'),(4,'Ofrece combos y descuentos en productos populares.',16,4,'2023-10-24 00:00:00'),(5,'Agiliza el proceso de pago y ten cambio suficiente.',6,5,'2023-12-31 00:00:00'),(6,'2x1 definitivamente',0,1,'2025-04-09 19:27:06'),(7,'no se',1,1,'2025-04-10 11:44:36');
/*!40000 ALTER TABLE `Respuesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tienda`
--

DROP TABLE IF EXISTS `Tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tienda` (
  `id_tienda` int NOT NULL,
  `nombre_tienda` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tienda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tienda`
--

LOCK TABLES `Tienda` WRITE;
/*!40000 ALTER TABLE `Tienda` DISABLE KEYS */;
INSERT INTO `Tienda` VALUES (1,'OXXO Centro'),(2,'OXXO Este'),(3,'OXXO Norte'),(4,'OXXO Sur'),(5,'OXXO Oeste'),(6,'OXXO Nsqk');
/*!40000 ALTER TABLE `Tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tiendas`
--

DROP TABLE IF EXISTS `Tiendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tiendas` (
  `id_franquicia` int NOT NULL AUTO_INCREMENT,
  `id_tienda` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id_franquicia`),
  KEY `fk_tiendas_id_tienda` (`id_tienda`),
  KEY `fk_tiendas_id_usuario` (`id_usuario`),
  CONSTRAINT `fk_tiendas_id_tienda` FOREIGN KEY (`id_tienda`) REFERENCES `Tienda` (`id_tienda`),
  CONSTRAINT `fk_tiendas_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tiendas`
--

LOCK TABLES `Tiendas` WRITE;
/*!40000 ALTER TABLE `Tiendas` DISABLE KEYS */;
INSERT INTO `Tiendas` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,2,2),(8,4,2),(9,1,3),(10,5,3),(11,3,4),(12,6,4),(13,2,5),(14,3,5),(15,5,5),(16,1,6),(17,4,7),(18,6,7),(19,1,8),(20,2,8),(21,3,8),(22,5,9),(23,3,10),(24,6,10),(79,1,2);
/*!40000 ALTER TABLE `Tiendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id_usuario` int NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `monedas` int DEFAULT NULL,
  `nivel` float DEFAULT '1',
  `retos_completados` int DEFAULT '0',
  `correo` varchar(100) NOT NULL,
  `id_empleado` int DEFAULT NULL,
  `imagen` varchar(5000) DEFAULT NULL,
  `rol` varchar(200) DEFAULT NULL,
  `quote` varchar(1000) DEFAULT NULL,
  `ubicacion` varchar(1000) DEFAULT NULL,
  `telefono` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo` (`correo`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `Empleado` (`id_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (1,'jPerez','hashed_password1',4558,2,3,'jPerez@oxxo.com',1,'https://static.vecteezy.com/system/resources/previews/006/090/662/non_2x/user-icon-or-logo-isolated-sign-symbol-illustration-free-vector.jpg','Asesor de Tienda','\"La lógica guía mis pasos, pero la pasión enciende mi.\"','Monterrey','8182709876'),(2,'mGomez','hashed_password2',700,3,5,'mgomez@oxxo.com',2,'https://oxxo-com.s3.amazonaws.com/media-library/415f9bff93446f33e5d10530c98f209f.png','Asesor de Tienda','\"Veo posibilidades donde otros solo ven errores.\"','Guadalajara, Jalisco','+52 33 8765 4321'),(3,'cRamirez','hashed_password3',107,1,2,'cramirez@oxxo.com',3,'https://png.pngtree.com/png-clipart/20250207/original/pngtree-full-body-man-in-navy-formal-suit-png-image_20380499.png','Asesor de Tienda','\"Mi mente compila ideas antes de que el mundo las entienda.\"\n','Monterrey, Nuevo León','+52 81 1122 3344'),(4,'aLopez','hashed_password4',0,0,7,'alopez@oxxo.com',4,'https://educacionejecutivablog.wordpress.com/wp-content/uploads/2011/05/shutterstock_157278947.jpg','Gerente','\"Diseño sistemas como quien escribe poesía: con intención y ritmo.\"','Mérida, Yucatán','+52 999 9988 7766'),(5,'lHernandez','hashed_password5',120,2,4,'lhernandez@oxxo.com',5,'https://s3-us-west-2.amazonaws.com/bfxpublicos/salesupblog/100009978259.png','Asesor de Tienda','\"No hay desafío demasiado grande cuando tienes curiosidad infinita.\"','Puebla, Puebla','+52 55 4433 2211'),(6,'dMartinez','hashed_password6',300,5,10,'dmartinez@oxxo.com',6,'https://media.istockphoto.com/id/1830126474/es/foto/retrato-de-un-hombre-de-negocios-sentado-en-una-oficina.jpg?s=612x612&w=0&k=20&c=ptP_MDeq1Ouccx7XhQRnMj453Nk5kZiIrgs8-ovb77g=','Asesor de Tienda','\"Fallé mil veces antes de crear algo que realmente importa.\"','Acapulco, Guerrero','+52 744 5566 7788'),(7,'sReyes','hashed_password7',0,0,6,'sreyes@oxxo.com',7,'https://previews.123rf.com/images/luismolinero/luismolinero1602/luismolinero160206342/52648959-el-hombre-jugando-al-f%C3%BAtbol.jpg','Gerente','\"La creatividad no tiene bugs, solo nuevas formas de ver el mundo.\"','Irapuato, Guanajuato','+52 462 1122 3344'),(8,'pOrtega','hashed_password8',90,1,2,'portega@oxxo.com',8,'https://media.istockphoto.com/id/1165435796/es/foto/hombre-jugando-al-cricket.jpg?s=612x612&w=0&k=20&c=KXvETSoqJXwBRnDAbQScx5rueJNnA8X3FHPQJcbTG24=','Asesor de Tienda','\"Trabajo en silencio, pero mi código habla fuerte.\"','Veracruz, Veracruz','+52 229 8877 6655'),(9,'eCastro','hashed_password9',0,0,9,'ecastro@oxxo.com',9,'https://media.istockphoto.com/id/1094475872/es/foto/media-de-mujer-en-parque-de-la-ciudad.jpg?s=612x612&w=0&k=20&c=zjOnEbEYxJfGgeKXIMQ0uIV4zNINDbFKnAUGt-YwFHo=','Gerente','\"El detalle hace la diferencia; yo busco la perfección en cada línea.\"','Torreón, Coahuila','+52 871 2233 4455'),(10,'fSantos','hashed_password10',160,2,5,'fsantos@oxxo.com',10,'https://thumbs.dreamstime.com/b/mujer-joven-que-se-sienta-en-banco-de-parque-usando-una-tableta-o-un-tel%C3%A9fono-109947000.jpg','Asesor de Tienda','\"Entre ceros y unos encontré mi voz.\"','León, Guanajuato','+52 477 8899 0011'),(11,'santipa','hashed_password45',10000,4,3,'a01178449@tec.mx',11,'https://i1.sndcdn.com/artworks-YDQOy2Pru5CA2rhs-x1uzgA-t500x500.jpg','Asesor de Tienda','\"Me gusta trabajar en equipo\"','Monterrey,  Nuevo León','+52 81 2570 0320'),(12,'paoloGaya','hashed_password20',100,6,3,'a01722922@tec.mx',1,'https://media.istockphoto.com/id/1477780233/vector/trophy-icon-vector-design-template-simple-and-modern.jpg?s=612x612&w=0&k=20&c=n2appnG8M5pJmroqLxzU6EiWj-kpaDbfIH43zJ4OKEg=','Asesor de Tienda','¡Hola mundo!','San Pedro Garza Garcia, Nuevo León','555-123-4567'),(13,'vMorales','$2a$12$J1exampleHashV',180,4,15,'vmorales@example.com',13,'https://previews.123rf.com/images/luismolinero/luismolinero1602/luismolinero160206342/52648959-el-hombre-jugando-al-f%C3%BAtbol.jpg','Asesor de Tienda','Hazlo con pasión o no lo hagas','Puebla','555-1111'),(14,'gNavarro','$2a$12$K2exampleHashG',210,5.2,30,'gnavarro@example.com',14,'https://educacionejecutivablog.wordpress.com/wp-content/uploads/2011/05/shutterstock_157278947.jpg','Asesor de Tienda','Nunca pares de aprender','Querétaro','555-2222'),(15,'rSalinas','$2a$12$L3exampleHashR',75,1.8,5,'rsalinas@example.com',15,'https://media.istockphoto.com/id/1094475872/es/foto/media-de-mujer-en-parque-de-la-ciudad.jpg?s=612x612&w=0&k=20&c=zjOnEbEYxJfGgeKXIMQ0uIV4zNINDbFKnAUGt-YwFHo=','Asesor de Tienda','Cada día es una nueva oportunidad','Toluca','555-3333');
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controles`
--

DROP TABLE IF EXISTS `controles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `videojuego_id` int NOT NULL,
  `accion` varchar(100) DEFAULT NULL,
  `tecla` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videojuego_id` (`videojuego_id`),
  CONSTRAINT `controles_ibfk_1` FOREIGN KEY (`videojuego_id`) REFERENCES `videojuegos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controles`
--

LOCK TABLES `controles` WRITE;
/*!40000 ALTER TABLE `controles` DISABLE KEYS */;
INSERT INTO `controles` VALUES (1,1,'Comprar OXXO','Seleccionar un terreno vacío y presionar el botón \'Comprar\'.'),(2,2,'Seleccionar respuesta','Presionar la opción de respuesta deseada.'),(3,3,'Mover hacia la izquierda','Flecha izquierda del teclado.'),(4,3,'Mover hacia la derecha','Flecha derecha del teclado.'),(5,3,'Soltar bolsas','Moverse hacia el lado izquierdo de la pantalla.'),(6,4,'Contratar o rechazar','Presionar el botón correspondiente a la acción deseada.');
/*!40000 ALTER TABLE `controles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creditos`
--

DROP TABLE IF EXISTS `creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creditos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `videojuego_id` int NOT NULL,
  `nombre_persona` varchar(100) DEFAULT NULL,
  `rol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `videojuego_id` (`videojuego_id`),
  CONSTRAINT `creditos_ibfk_1` FOREIGN KEY (`videojuego_id`) REFERENCES `videojuegos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creditos`
--

LOCK TABLES `creditos` WRITE;
/*!40000 ALTER TABLE `creditos` DISABLE KEYS */;
INSERT INTO `creditos` VALUES (1,1,'Santiago Paredes','Diseñador'),(2,2,'Gabriel Peres','Diseñador'),(3,2,'Paolo Gaya','Programador'),(4,3,'Salvador Ancer','Diseñador'),(5,3,'Diego Guadiana','Programador'),(6,3,'Diego Guadiana','Programador'),(8,4,'Santiago Paredes','Diseñador'),(9,4,'Luis Garza','Programador');
/*!40000 ALTER TABLE `creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licencias`
--

DROP TABLE IF EXISTS `licencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_recurso` varchar(200) NOT NULL,
  `tipo` enum('imagen','sonido') NOT NULL,
  `fuente_url` text,
  `atribucion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licencias`
--

LOCK TABLES `licencias` WRITE;
/*!40000 ALTER TABLE `licencias` DISABLE KEYS */;
INSERT INTO `licencias` VALUES (1,'Sprites videojuego','imagen','https://assetstore.unity.com/','ysingx'),(2,'Música videojuego','sonido','https://pixabay.com/es/','Chelly01');
/*!40000 ALTER TABLE `licencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metricasUsuario`
--

DROP TABLE IF EXISTS `metricasUsuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metricasUsuario` (
  `idmetricasUsuario` int NOT NULL,
  `id_usuario` int NOT NULL,
  `ingresos` float NOT NULL,
  `ganancias` float NOT NULL,
  `ordenes` int NOT NULL,
  `visitas` int NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idmetricasUsuario`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `metricasUsuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metricasUsuario`
--

LOCK TABLES `metricasUsuario` WRITE;
/*!40000 ALTER TABLE `metricasUsuario` DISABLE KEYS */;
INSERT INTO `metricasUsuario` VALUES (1,1,15000.5,5000.75,120,300,'2025-01-15'),(2,2,18000.8,6000.4,150,350,'2025-01-20'),(3,3,12000.3,4000.1,90,250,'2025-02-05'),(4,4,20000.9,7000.6,180,400,'2025-02-12'),(5,5,13000.5,4500.2,100,280,'2025-02-18'),(6,6,14000.5,4700.75,115,310,'2025-02-25'),(7,7,19000.2,6700.3,155,360,'2025-03-03'),(8,8,11000.9,3800.5,80,230,'2025-03-10'),(9,9,21000.8,7500.1,190,420,'2025-03-15'),(10,10,12500.6,4200.9,95,270,'2025-03-20');
/*!40000 ALTER TABLE `metricasUsuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetivos`
--

DROP TABLE IF EXISTS `objetivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objetivos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `videojuego_id` int NOT NULL,
  `tipo` enum('ganar','perder') DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `videojuego_id` (`videojuego_id`),
  CONSTRAINT `objetivos_ibfk_1` FOREIGN KEY (`videojuego_id`) REFERENCES `videojuegos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetivos`
--

LOCK TABLES `objetivos` WRITE;
/*!40000 ALTER TABLE `objetivos` DISABLE KEYS */;
INSERT INTO `objetivos` VALUES (1,1,'ganar','Obtener todas las tiendas OXXO disponibles mediante decisiones estratégicas exitosas.'),(2,2,'ganar','Responder correctamente todas las preguntas dentro del tiempo límite para maximizar el rendimiento de las tiendas.'),(3,2,'perder','Responder una o más preguntas de forma incorrecta, afectando negativamente las métricas del negocio.'),(4,2,'perder','No responder a una pregunta dentro del tiempo límite, ocasionando una penalización en el desempeño de la tienda.'),(5,3,'ganar','Mantener al menos una vida hasta que finalice el tiempo del juego, evitando errores en la descarga de productos.'),(6,3,'perder','Perder las tres vidas al dejar caer bolsas de hielo o al intentar cargar más de tres simultáneamente.'),(7,4,'ganar','Evaluar correctamente a los candidatos y tomar decisiones acertadas de contratación.'),(8,4,'perder','Contratar a un candidato no apto, lo cual impactará negativamente en los recursos del jugador.');
/*!40000 ALTER TABLE `objetivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntasmariposa`
--

DROP TABLE IF EXISTS `preguntasmariposa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preguntasmariposa` (
  `idpregunta` int NOT NULL,
  `pregunta` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `respuesta1` varchar(300) DEFAULT NULL,
  `respuesta2` varchar(300) DEFAULT NULL,
  `respuesta3` varchar(300) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  `indicadorsubir` int DEFAULT NULL,
  `indicadorbajar` int DEFAULT NULL,
  PRIMARY KEY (`idpregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntasmariposa`
--

LOCK TABLES `preguntasmariposa` WRITE;
/*!40000 ALTER TABLE `preguntasmariposa` DISABLE KEYS */;
INSERT INTO `preguntasmariposa` VALUES (1,'El equipo de una tienda tiene problemas para registrar correctamente las devoluciones en sistema. ¿Qué haces como asesor?','Les das tiempo para que se adapten solos','Realizas una capacitación práctica con todo el equipo','Informas al supervisor y te retiras',2,1,6),(2,'Notas que una tienda tiene ventas muy bajas entre las 2 y las 4 pm. ¿Qué sugerencia harías?','Reducir el personal durante ese horario','Implementar una promoción específica para ese horario','Ignorar el dato y enfocarse en el turno de la mañana',2,2,5),(3,'Una tienda presenta faltantes frecuentes de productos clave. ¿Cuál sería tu mejor acción?','Revisar con el equipo las rutinas de conteo y abastecimiento','Recomendar hacer pedidos más grandes sin verificar datos','Esperar a que el sistema de abasto lo resuelva solo',1,3,6),(4,'Detectas que una promoción activa no está visible para los clientes. ¿Cómo respondes?','Capacitas al equipo para ubicar bien la señalización y explicarla','Esperas a que el proveedor venga a revisar','Solo haces una nota en tu reporte',1,4,2),(5,'Al revisar los horarios del personal, notas muchas ausencias y cambios sin justificación. ¿Qué haces?','Propones un control más estricto de horarios y coordinación con el líder de tienda','Ignoras el tema, ya que los turnos están cubiertos','Recomiendas contratar más gente para evitar huecos',1,5,1),(6,'Encuentras productos vencidos en estantería. ¿Qué acción es la más adecuada?','Dejas que el equipo lo resuelva después','Revisas el sistema para ver si están registrados correctamente','Solicitas su retiro inmediato y validas su registro en merma',3,6,3),(7,'Notas que la tienda baja sus ventas entre 4 y 6 p.m. ¿Qué estrategia propones?','Disminuir personal en ese horario','Revisar si hay promociones activas y visibilidad de productos clave','Cancelar turnos de la tarde para ahorrar costos',2,2,5),(8,'Una promoción nacional no se encuentra visible en la tienda. ¿Qué haces?','Revisas con el equipo la correcta colocación de materiales promocionales','Lo reportas en tu checklist sin intervenir','Esperas a que el proveedor lo resuelva',1,4,2),(9,'El equipo nuevo no sabe registrar mermas. ¿Cuál es tu mejor acción?','Esperas que lo aprendan con la práctica','Pides al líder que los capacite eventualmente','Realizas una mini capacitación con enfoque práctico',3,1,6),(10,'Una tienda muestra constantemente faltantes de productos básicos. ¿Cómo actúas?','Revisas los hábitos de pedido y almacenamiento con el equipo','Ignoras el tema porque el sistema hará ajustes','Recomiendas pedir más inventario del necesario',1,3,6),(11,'Detectas rotación constante de horarios sin justificación. ¿Qué haces?','Elaboras una estrategia junto con el líder de tienda para optimizarlos','Ignoras el cambio ya que el servicio continúa','Solicitas al área de RH que lo resuelva',1,5,2),(12,'Hay productos dañados por mal acomodo. ¿Qué propones?','Capacitar al equipo en el manejo adecuado y registro de daños','Venderlos con descuento','Ocultarlos para evitar mermas reportadas',1,6,4),(13,'Los empleados no saben aplicar una nueva política de precios. ¿Qué haces?','Esperas a que el líder los capacite luego','Enseñas tú mismo con ejemplos reales y simulaciones','Dejas un memo y te retiras',2,1,2),(14,'El análisis muestra que hay pocas ventas antes de las 9 a.m. ¿Qué medida tomas?','Reducir el personal en ese horario','Ofrecer promociones dirigidas a quienes compran en la mañana','Cerrar la tienda más tarde para compensar',2,2,5),(15,'Una tienda no registra correctamente las devoluciones. ¿Cómo actúas?','Capacitas al personal para hacer correctamente la operación en sistema','Ignoras el tema porque se compensará en la siguiente entrega','Pides que lo hagan manual y se regularice luego',1,3,6),(16,'La promoción del mes no ha generado impacto. ¿Qué haces?','Revisas el acomodo y la comunicación del equipo con los clientes','Esperas a que finalice el periodo de promoción','Desactivas la promo por baja efectividad',1,4,2),(17,'Hay ausencias frecuentes del mismo colaborador. ¿Qué haces?','Revisas sus horarios con el líder y propones un plan de mejora','Le das otra oportunidad sin hacer nada más','Pides reemplazarlo de inmediato sin investigar',1,5,1),(18,'Ves productos refrigerados mal cerrados. ¿Qué haces?','Instruyes al equipo sobre el manejo correcto y validas si ya se afectó la calidad','Tiras los productos directamente','Ignoras porque aún se ven en buen estado',1,6,3),(19,'Hay errores frecuentes en el cierre de caja. ¿Qué propones?','Rotar al personal hasta que lo hagan bien','Aplicar sanciones','Reentrenar al equipo con ejercicios prácticos y seguimiento',3,1,2),(20,'Las ventas se estancan los fines de semana. ¿Qué haces?','Aumentas la plantilla sin plan de acción','Propones activaciones y ofertas para esos días','Ignoras porque el promedio semanal se mantiene',2,2,5),(21,'Una tienda presenta pérdida de productos por mal conteo. ¿Qué propones?','Capacitar sobre el proceso de conteo y validación en sistema','Aumentar el inventario preventivamente','Cambiar al responsable de almacén',1,3,6),(22,'Un cliente se queja de que no se le aplicó una promo activa. ¿Qué haces?','Investigas el caso y corriges junto con el equipo en el momento','Le explicas que fue error del sistema y no se puede hacer nada','Ofreces una disculpa sin corregir',1,4,2),(23,'Un equipo no respeta el nuevo rol de turnos. ¿Qué haces?','Analizas las razones y ajustas el plan junto con el líder','Cambias los horarios sin consultar a nadie','Ignoras la situación mientras haya cobertura',1,5,1),(24,'Varios productos quedan expuestos a calor y se dañan. ¿Qué haces?','Capacitas al equipo sobre condiciones de conservación','Pides que se vendan rápidamente con descuento','Registras la merma y te retiras sin más',1,6,3),(25,'Hay errores al aplicar descuentos temporales. ¿Qué haces?','Aplicar correctivos sin más','Revisar con el equipo los pasos en sistema y simular varias veces','Ignorar los errores mientras no haya quejas',2,1,4);
/*!40000 ALTER TABLE `preguntasmariposa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videojuegos`
--

DROP TABLE IF EXISTS `videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videojuegos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `historia` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videojuegos`
--

LOCK TABLES `videojuegos` WRITE;
/*!40000 ALTER TABLE `videojuegos` DISABLE KEYS */;
INSERT INTO `videojuegos` VALUES (1,'Punto de Venta','Simulador interactivo de toma de decisiones y gestión estratégica, donde el jugador asume el rol de gerente de tienda.','El jugador debe expandir su red de tiendas OXXO comprando nuevas sucursales a medida que gana monedas. Para lograrlo, deberá gestionar eficientemente los recursos existentes, asegurarse de contratar buenos empleados y tomar decisiones acertadas que mantengan el buen funcionamiento de sus tiendas actuales.'),(2,'Efecto Mariposa','Juego de decisiones con límite de tiempo que impacta directamente en métricas clave del negocio.','Enfrenta situaciones imprevistas en distintas tiendas a lo largo del día. Como gerente, deberás elegir entre cuatro opciones en tiempo limitado, afectando seis métricas principales: equipos entrenados, ejecución de promociones, venta por hora, efectividad de horarios, faltante de inventario y merma. Cada respuesta acertada mejora el rendimiento general, mientras que una mala decisión puede tener consecuencias negativas.'),(3,'Descarga','Minijuego de destreza para relajación dentro de la experiencia de simulación.','El empleado del OXXO debe descargar hielos rápidamente mientras los clientes esperan en fila. El jugador debe ayudar a evitar que los hielos caigan al suelo, manteniendo así la eficiencia y calidad del servicio.'),(4,'Expedientes Pendientes','Juego de análisis y reclutamiento enfocado en evaluación de personal.','Se presentan distintos candidatos y el jugador debe decidir, con base en sus documentos y habilidades, si deben ser contratados o no. Las decisiones impactan directamente en las monedas ganadas. Como asesor de tienda, es fundamental afinar la observación y la intuición para formar un equipo altamente competente.');
/*!40000 ALTER TABLE `videojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'oxxodb'
--
/*!50003 DROP PROCEDURE IF EXISTS `SP_EM_getPregunta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_EM_getPregunta"(IN idPreg INT)
BEGIN
	SELECT * FROM preguntasmariposa WHERE idpregunta = idPreg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_EP_GetCandidato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_EP_GetCandidato"(IN idCand INT)
BEGIN
	SELECT * FROM ExpPendCandidato WHERE id_candidato = idCand;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_GetNotasIrregularidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_GetNotasIrregularidades"(
    IN p_tienda VARCHAR(100),
    IN p_tipoIrregularidad VARCHAR(50)
)
BEGIN
    SELECT
        id_notas,
        tienda,
        descripcion,
        fecha,
        tipo_irregularidad
    FROM
        NotasIrregularidades
    WHERE
        tienda = p_tienda AND
        tipo_irregularidad = p_tipoIrregularidad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_LB_RankUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_LB_RankUsuarios"()
BEGIN
    SELECT 
        id_usuario,        -- ID del usuario
        nombre_usuario,    -- Nombre del usuario
        imagen,            -- Pfp del usuario (now correct!)
        nivel,             -- Nivel del usuario
        monedas,           -- Monedas del usuario
        ROW_NUMBER() OVER (ORDER BY nivel DESC, monedas DESC) AS ranking
    FROM 
        Usuario WHERE rol = 'Asesor de Tienda';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_ComprarTienda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_ComprarTienda"(IN idUsr INT, IN idTiend INT)
BEGIN
	INSERT INTO Tiendas (id_tienda, id_usuario) VALUES (idTiend, idUsr);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_GetInfoMenu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_GetInfoMenu"(IN idUsuario INT)
BEGIN
	SELECT monedas, nivel FROM Usuario WHERE id_usuario = idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_GetTiendasUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_GetTiendasUsuario"(IN idUsr INT)
BEGIN
	SELECT * FROM Tiendas WHERE id_usuario = idUsr;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_GetUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_GetUsuario"(IN usrName VARCHAR(100))
BEGIN
	SELECT * FROM Usuario WHERE nombre_usuario = usrName;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_IniciarSesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_IniciarSesion"(IN usrName VARCHAR(100), IN contra VARCHAR(100))
BEGIN
	SELECT COUNT(*) AS existe FROM Usuario WHERE nombre_usuario = usrName AND password = contra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Menu_updateCoins` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Menu_updateCoins"(IN coins INT, IN idUsuario INT)
BEGIN
	UPDATE Usuario SET monedas = coins WHERE id_usuario = idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_PostNotasIrregularidades` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_PostNotasIrregularidades"(
    IN p_tienda VARCHAR(100),
    IN p_descripcion TEXT,
    IN p_fecha DATETIME,
    IN p_tipoIrregularidad VARCHAR(50),
    IN p_idUsuario INT
)
BEGIN
    INSERT INTO NotasIrregularidades (
        tienda,
        descripcion,
        fecha,
        tipo_irregularidad,
        id_usuario
    )
    VALUES (
        p_tienda,
        p_descripcion,
        p_fecha,
        p_tipoIrregularidad,
        p_idUsuario
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Web_getPuesto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Web_getPuesto"(IN nomUsuario TEXT)
BEGIN
	SELECT e.puesto
	FROM Empleado e
	INNER JOIN Usuario u ON e.id_empleado = u.id_empleado
	WHERE u.nombre_usuario = nomUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_Web_getUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'REAL_AS_FLOAT,PIPES_AS_CONCAT,ANSI_QUOTES,IGNORE_SPACE,ONLY_FULL_GROUP_BY,ANSI,STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER="avnadmin"@"%" PROCEDURE "SP_Web_getUsuario"(IN nomUsuario TEXT)
BEGIN
	SELECT * FROM Usuario WHERE nombre_usuario = nomUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-29 20:38:32
