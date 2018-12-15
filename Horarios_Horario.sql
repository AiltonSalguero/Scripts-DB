-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 0.0.0.0    Database: Horarios
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Horario`
--

DROP TABLE IF EXISTS `Horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Horario` (
  `Sesion_Curso_codigo` varchar(6) NOT NULL,
  `Sesion_Seccion_codigo` varchar(1) NOT NULL,
  `Sesion_TipoClase_codigo` varchar(1) NOT NULL,
  `aula` varchar(15) DEFAULT NULL,
  `dia` varchar(2) DEFAULT NULL,
  `horaInicio` int(11) DEFAULT NULL,
  `horaFinal` int(11) DEFAULT NULL,
  `Profesor_dni` int(11) NOT NULL,
  PRIMARY KEY (`Sesion_Curso_codigo`,`Sesion_Seccion_codigo`,`Sesion_TipoClase_codigo`),
  KEY `fk_Horario_Profesor1_idx` (`Profesor_dni`),
  CONSTRAINT `fk_Horario_Profesor1` FOREIGN KEY (`Profesor_dni`) REFERENCES `Profesor` (`dni`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Horario_Sesion1` FOREIGN KEY (`Sesion_Curso_codigo`, `Sesion_Seccion_codigo`, `Sesion_TipoClase_codigo`) REFERENCES `Sesion` (`Curso_codigo`, `Seccion_codigo`, `TipoClase_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horario`
--

LOCK TABLES `Horario` WRITE;
/*!40000 ALTER TABLE `Horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Horario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-24  1:30:11
