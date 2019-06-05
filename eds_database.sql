
DROP DATABASE IF EXISTS ong;
CREATE DATABASE IF NOT EXISTS ong;
USE ong;



CREATE TABLE `categoria` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombreCategoria` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

  insert into categoria values (1, 'Bebida');
  insert into categoria values (2, 'Alimentos');
  insert into categoria values (3, 'Higiene');
  insert into categoria values (4, 'Medicamentos');
  insert into categoria values (5, 'MaterialEscolar');

  
CREATE TABLE `cesta` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idCestas` (`usuario_id`),
  CONSTRAINT `usuario_idCestas` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `sucursal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comarca` varchar(30),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `donacion` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_idDonaciones` (`usuario_id`),
  CONSTRAINT `usuario_idDonaciones` FOREIGN KEY (`usuario_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `donaciones_detalles` (
  `donacion_id` int(11) NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(11) unsigned NOT NULL,
  KEY `donacion_idDonaciones_detalles` (`donacion_id`),
  KEY `producto_idDonaciones_detalles` (`producto_id`),
  CONSTRAINT `donacion_idDonaciones_detalles` FOREIGN KEY (`donacion_id`) REFERENCES `donacion` (`id`),
  CONSTRAINT `producto_idDonaciones_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `envio` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sucursal_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destino_envios` (`sucursal_id`),
  CONSTRAINT `destino_envio` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `envio_detalles` (
  `envio_id` int(11) unsigned NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(11) unsigned NOT NULL,
  KEY `envio_idEnvios_detalles` (`envio_id`),
  KEY `producto_idEnvios_detalles` (`producto_id`),
  CONSTRAINT `envio_idEnvios_detalles` FOREIGN KEY (`envio_id`) REFERENCES `envio` (`id`),
  CONSTRAINT `producto_idEnvios_detalles` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `necesidad_sucursal` (
  `categoria_id` int(11) unsigned NOT NULL,
  `sucursal_id` int(11) unsigned NOT NULL,
  `porcentaje_necesidad` int(11) NOT NULL,
  KEY `tipoNecesidades_destino` (`categoria_id`),
  KEY `destinoNecesidades_destino` (`sucursal_id`),
  CONSTRAINT `destinoNecesidades_destino` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursal` (`id`),
  CONSTRAINT `tipoNecesidades_destino` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `producto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) unsigned NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `tamaño`varchar(1) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_idProductos` (`categoria_id`),
  CONSTRAINT `usuario_idProductos` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

  insert into producto values (1, 1, 'Bebida S','S', 10.0, 'Lote pequeño de bebida que contiene: ', 0);
  insert into producto values (2, 1, 'Bebida M','M', 15.0, 'Lote mediano de bebida que contiene: ', 0);
  insert into producto values (3, 1, 'Bebida L','L', 20.0, 'Lote grande de bebida que contiene: ', 0);
  insert into producto values (4, 2, 'Comida S','S', 10.0, 'Lote pequeño de comida que contiene: ', 0);
  insert into producto values (5, 2, 'Comida M','M', 15.0, 'Lote mediano de comida que contiene: ', 0);
  insert into producto values (6, 2, 'Comida L','L', 20.0, 'Lote grande de comida que contiene: ', 0);
  insert into producto values (7, 3, 'Higiene S','S', 10.0, 'Lote pequeño de higiene que contiene: ', 0);
  insert into producto values (8, 3, 'Higiene M','M', 15.0, 'Lote mediano de higiene que contiene: ', 0);
  insert into producto values (9, 3, 'Higiene L','L', 20.0, 'Lote grande de higiene que contiene: ', 0);
  insert into producto values (10, 4, 'Medicamentos S','S', 10.0, 'Lote pequeño de medicamentos que contiene: ', 0);
  insert into producto values (11, 4, 'Medicamentos M','M', 10.0, 'Lote mediano de medicamentos que contiene: ', 0);
  insert into producto values (12, 4, 'Medicamentos L','L', 10.0, 'Lote grande de medicamentos que contiene: ', 0);
  insert into producto values (13, 5, 'Material escolar S','S', 10.0, 'Lote pequeño de material escolar que contiene: ', 0);
  insert into producto values (14, 5, 'Material escolar M','M', 10.0, 'Lote mediano de material escolar que contiene: ', 0);
  insert into producto values (15, 5, 'Material escolar L','L', 10.0, 'Lote grande de material escolar que contiene: ', 0);


CREATE TABLE `producto_cesta` (
  `cesta_id` int(11) unsigned NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  KEY `id_cestaProductos_cestas` (`cesta_id`),
  KEY `id_productoProductos_cestas` (`producto_id`),
  CONSTRAINT `id_cestaProductos_cestas` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`),
  CONSTRAINT `id_productoProductos_cestas` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


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



CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FK_USER_X` (`user_id`),
  KEY `FK_ROLE_X` (`role_id`),
  CONSTRAINT `FK_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `role` (name) 
	VALUES 
		('ROLE_USUARIO'),('ROLE_ANALISTA'),('ROLE_ADMIN');

INSERT INTO `user` (username,password,first_name,last_name,email,direccion)
VALUES 
('usuario','$2y$12$YWvmQsudOEnDyVe.Bf2mDe1/HhwnCz/y8/5P8.UYucukozzPhf1P.','Usuario','Usuario','usuario@user.test','Direccion Test'),
('analista','$2y$12$IHqg9vJCd.HIqWp5ElJX2eS7cToTXDsZhUFr.U7/CtKsTjEaJOlLW','Analista','Analista','Analista@Analista.test','Direccion Test'),
('admin','$2y$12$QkSUyl0n4a8kP2Eu0RfFn.P2AfsMzpez7GIogLac.62rtwXzt.rWq','Admin','Admin','Admin@Admin.test','Direccion Test');

	
INSERT INTO `users_roles` (user_id,role_id) 
VALUES 
	(1, 1),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 2),
	(3, 3);


