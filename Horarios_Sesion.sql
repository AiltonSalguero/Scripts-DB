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
-- Table structure for table `Sesion`
--

DROP TABLE IF EXISTS `Sesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sesion` (
  `Curso_codigo` varchar(6) NOT NULL,
  `Seccion_codigo` varchar(1) NOT NULL,
  `TipoClase_codigo` varchar(1) NOT NULL,
  PRIMARY KEY (`Curso_codigo`,`Seccion_codigo`,`TipoClase_codigo`),
  KEY `fk_Sesion_Curso1_idx` (`Curso_codigo`),
  KEY `fk_Sesion_TipoClase1_idx` (`TipoClase_codigo`),
  KEY `fk_table2_Seccion1` (`Seccion_codigo`),
  CONSTRAINT `fk_Sesion_Curso1` FOREIGN KEY (`Curso_codigo`) REFERENCES `Curso` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sesion_TipoClase1` FOREIGN KEY (`TipoClase_codigo`) REFERENCES `TipoClase` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_table2_Seccion1` FOREIGN KEY (`Seccion_codigo`) REFERENCES `Seccion` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sesion`
--

LOCK TABLES `Sesion` WRITE;
/*!40000 ALTER TABLE `Sesion` DISABLE KEYS */;
INSERT INTO `Sesion` VALUES ('BQU01','U','L'),('BQU01','V','L'),('BQU01','W','L'),('BQU01','X','L'),('BMA01','U','P'),('BMA01','V','P'),('BMA01','W','P'),('BMA01','X','P'),('BMA02','U','P'),('BMA03','U','P'),('BMA03','V','P'),('BMA03','W','P'),('CB-112','U','P'),('CB-112','V','P'),('CB-112','W','P'),('CB-122','U','P'),('CB-122','V','P'),('CB-142','U','P'),('CB-142','V','P'),('CB-142','W','P'),('CB-143','U','P'),('CB-143','V','P'),('FB-101','U','P'),('FB-101','V','P'),('FB-101','W','P'),('FB-101','X','P'),('BMA01','U','T'),('BMA01','V','T'),('BMA01','W','T'),('BMA01','X','T'),('BMA03','U','T'),('BMA03','V','T'),('BMA03','W','T'),('BQU01','U','T'),('BQU01','V','T'),('BQU01','W','T'),('BQU01','X','T'),('CB-112','U','T'),('CB-112','V','T'),('CB-112','W','T'),('CB-122','U','T'),('CB-122','V','T'),('CB-142','V','T'),('CB-142','W','T'),('CB-143','U','T'),('CB-143','V','T'),('FB-101','U','T'),('FB-101','V','T'),('FB-101','W','T'),('FB-101','X','T');
/*!40000 ALTER TABLE `Sesion` ENABLE KEYS */;
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
