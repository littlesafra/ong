DROP DATABASE IF EXISTS ONGDATABASE;
CREATE DATABASE ONGDATABASE;
USE ONGDATABASE;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(80) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,

   INDEX `FK_USER_X` (`user_id` ASC) ,
	CONSTRAINT `FK_USER`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

    INDEX `FK_ROLE_X` (`role_id` ASC) ,
  CONSTRAINT `FK_ROLE`
    FOREIGN KEY (`role_id`)
    REFERENCES `role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE `categoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombreCategoria` (`nombre`)
);

CREATE TABLE `cesta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idCestas` (`usuario_id`),
  CONSTRAINT `usuario_idCestas` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
);

CREATE TABLE `sucursal` (
  `comarca` varchar(30)  NOT NULL,
  PRIMARY KEY (`comarca`)
);

CREATE TABLE `donacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idDonaciones` (`usuario_id`),
  CONSTRAINT `usuario_idDonaciones` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
);

CREATE TABLE `envio` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sucursal` varchar(30)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destino_envios` (`sucursal`),
  CONSTRAINT `destino_envio` FOREIGN KEY (`sucursal`) REFERENCES `sucursal` (`comarca`)
);

CREATE TABLE `necesidad_sucursal` (
  `categoria_id` int(11) unsigned NOT NULL,
  `sucursal` varchar(30)  NOT NULL,
  `porcentaje_necesidad` int(11) NOT NULL,
  KEY `tipoNecesidades_destino` (`categoria_id`),
  KEY `destinoNecesidades_destino` (`sucursal`),
  CONSTRAINT `destinoNecesidades_destino` FOREIGN KEY (`sucursal`) REFERENCES `sucursal` (`comarca`),
  CONSTRAINT `tipoNecesidades_destino` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
);

CREATE TABLE `producto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) unsigned NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_idProductos` (`categoria_id`),
  CONSTRAINT `usuario_idProductos` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
);

  CREATE TABLE `envio_detalles` (
    `envio_id` int(11) unsigned NOT NULL,
    `producto_id` int(11) unsigned NOT NULL,
    `cantidad` int(11) unsigned NOT NULL,
    KEY `envio_idEnvios_detalles` (`envio_id`),
    KEY `producto_idEnvios_detalles` (`producto_id`),
    CONSTRAINT `envio_idEnvios_detalles` FOREIGN KEY (`envio_id`) REFERENCES `envio` (`id`),
    CONSTRAINT `producto_idEnvios_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
  );

  CREATE TABLE `producto_cesta` (
  `cesta_id` int(11) unsigned NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  KEY `id_cestaProductos_cestas` (`cesta_id`),
  KEY `id_productoProductos_cestas` (`producto_id`),
  CONSTRAINT `id_cestaProductos_cestas` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`),
  CONSTRAINT `id_productoProductos_cestas` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
);

CREATE TABLE `donaciones_detalles` (
  `donacion_id` int(11) NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(11) unsigned NOT NULL,
  KEY `donacion_idDonaciones_detalles` (`donacion_id`),
  KEY `producto_idDonaciones_detalles` (`producto_id`),
  CONSTRAINT `donacion_idDonaciones_detalles` FOREIGN KEY (`donacion_id`) REFERENCES `donacion` (`id`),
  CONSTRAINT `producto_idDonaciones_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
);


CREATE TABLE realizar_reparto (
  id int(11) NOT NULL,
  reparto boolean,
  PRIMARY KEY(id)
);
