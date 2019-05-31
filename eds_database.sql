-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: eds
-- ------------------------------------------------------
-- Server version	8.0.13


DROP DATABASE IF EXISTS database_ong;
CREATE DATABASE IF NOT EXISTS database_ong;
USE database_ong;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombreCategoria` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
  insert into categoria values (1, 'Bebida');
  insert into categoria values (2, 'Alimentos');
  insert into categoria values (3, 'Higiene');
  insert into categoria values (4, 'Medicamentos');
  insert into categoria values (5, 'MaterialEscolar');
--
-- Table structure for table `cesta`
--

DROP TABLE IF EXISTS `cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cesta` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idCestas` (`usuario_id`),
  CONSTRAINT `usuario_idCestas` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `destino`
--

DROP TABLE IF EXISTS `destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `destino` (
  `cp` varchar(15) NOT NULL,
  `poblacion` varchar(15) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  PRIMARY KEY (`cp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donacion`
--

DROP TABLE IF EXISTS `donacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `donacion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idDonaciones` (`usuario_id`),
  CONSTRAINT `usuario_idDonaciones` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `donaciones_detalles`
--

DROP TABLE IF EXISTS `donaciones_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `donaciones_detalles` (
  `donacion_id` int(11) NOT NULL,
  `producto_id` tinyint(3) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  KEY `donacion_idDonaciones_detalles` (`donacion_id`),
  KEY `producto_idDonaciones_detalles` (`producto_id`),
  CONSTRAINT `donacion_idDonaciones_detalles` FOREIGN KEY (`donacion_id`) REFERENCES `donacion` (`id`),
  CONSTRAINT `producto_idDonaciones_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `envio` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_entrega` date NOT NULL,
  `destino` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destino_envios` (`destino`),
  CONSTRAINT `destino_envio` FOREIGN KEY (`destino`) REFERENCES `destino` (`cp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `envio_detalles`
--

DROP TABLE IF EXISTS `envio_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `envio_detalles` (
  `envio_id` tinyint(3) unsigned NOT NULL,
  `producto_id` tinyint(3) unsigned NOT NULL,
  `fecha_entrega` date NOT NULL,
  `total_dinero` float unsigned NOT NULL,
  KEY `envio_idEnvios_detalles` (`envio_id`),
  KEY `producto_idEnvios_detalles` (`producto_id`),
  CONSTRAINT `envio_idEnvios_detalles` FOREIGN KEY (`envio_id`) REFERENCES `envio` (`id`),
  CONSTRAINT `producto_idEnvios_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `necesidad_destino`
--

DROP TABLE IF EXISTS `necesidad_destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `necesidad_destino` (
  `tipo` tinyint(3) unsigned NOT NULL,
  `destino` varchar(15) NOT NULL,
  `porcentaje_cantidad` int(11) NOT NULL,
  `porcentaje_necesidad` int(11) NOT NULL,
  KEY `tipoNecesidades_destino` (`tipo`),
  KEY `destinoNecesidades_destino` (`destino`),
  CONSTRAINT `destinoNecesidades_destino` FOREIGN KEY (`destino`) REFERENCES `destino` (`cp`),
  CONSTRAINT `tipoNecesidades_destino` FOREIGN KEY (`tipo`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_id` tinyint(3) unsigned NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tamaño`varchar(1) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_idProductos` (`categoria_id`),
  CONSTRAINT `usuario_idProductos` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

  insert into producto values (1, 1, 'Bebida S','S', 10.0, 'Lote pequeño de bebida que contiene: ', 10);
  insert into producto values (2, 1, 'Bebida M','M', 15.0, 'Lote mediano de bebida que contiene: ', 30);
  insert into producto values (3, 1, 'Bebida L','L', 20.0, 'Lote grande de bebida que contiene: ', 40);
  insert into producto values (4, 2, 'Comida S','S', 10.0, 'Lote pequeño de comida que contiene: ', 20);
  insert into producto values (5, 2, 'Comida M','M', 15.0, 'Lote mediano de comida que contiene: ', 20);
  insert into producto values (6, 2, 'Comida L','L', 20.0, 'Lote grande de comida que contiene: ', 30);
  insert into producto values (7, 3, 'Higiene S','S', 10.0, 'Lote pequeño de higiene que contiene: ', 40);
  insert into producto values (8, 3, 'Higiene M','M', 15.0, 'Lote mediano de higiene que contiene: ', 90);
  insert into producto values (9, 3, 'Higiene L','L', 20.0, 'Lote grande de higiene que contiene: ', 40);
  insert into producto values (10, 4, 'Medicamentos S','S', 10.0, 'Lote pequeño de medicamentos que contiene: ', 20);
  insert into producto values (11, 4, 'Medicamentos M','M', 10.0, 'Lote mediano de medicamentos que contiene: ', 40);
  insert into producto values (12, 4, 'Medicamentos L','L', 10.0, 'Lote grande de medicamentos que contiene: ', 10);
  insert into producto values (13, 5, 'Material escolar S','S', 10.0, 'Lote pequeño de material escolar que contiene: ', 20);
  insert into producto values (14, 5, 'Material escolar M','M', 10.0, 'Lote mediano de material escolar que contiene: ', 40);
  insert into producto values (15, 5, 'Material escolar L','L', 10.0, 'Lote grande de material escolar que contiene: ', 30);

--
-- Table structure for table `producto_cesta`
--

DROP TABLE IF EXISTS `producto_cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto_cesta` (
  `cesta_id` tinyint(3) unsigned NOT NULL,
  `producto_id` tinyint(3) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  KEY `id_cestaProductos_cestas` (`cesta_id`),
  KEY `id_productoProductos_cestas` (`producto_id`),
  CONSTRAINT `id_cestaProductos_cestas` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`),
  CONSTRAINT `id_productoProductos_cestas` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
insert into role values(1, 'Donante');
--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(80) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
insert into user values (1, 'root', 'root', 'Elena', 'Larreategi', 'elena.larreategui@alumni.mondragon.edu', 'Elgoibar')

--
-- Table structure for table `users_roles`
--


DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FK_USER_X` (`user_id`),
  KEY `FK_ROLE_X` (`role_id`),
  CONSTRAINT `FK_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
insert into users_roles values (1,1);
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29 12:15:58
