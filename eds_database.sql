CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(80) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;



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
) ENGINE=InnoDB;

INSERT INTO `role` (name)
	VALUES
		('ROLE_EMPLOYEE'),('ROLE_MANAGER'),('ROLE_ADMIN');

INSERT INTO `user` (username,password,first_name,last_name,email)
VALUES
('john','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','John','Doe','john@luv2code.com'),
('mary','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Mary','Public','mary@luv2code.com'),
('susan','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Susan','Adams','susan@luv2code.com');


INSERT INTO `users_roles` (user_id,role_id)
VALUES
	(1, 1),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 3);


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
  `comarca` varchar(30)  NOT NULL,
  PRIMARY KEY (`comarca`)
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
  `sucursal` varchar(30)  NOT NULL,
  PRIMARY KEY (`id`),
  KEY `destino_envios` (`sucursal`),
  CONSTRAINT `destino_envio` FOREIGN KEY (`sucursal`) REFERENCES `sucursal` (`comarca`)
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
`sucursal` varchar(30)  NOT NULL,
  `porcentaje_necesidad` int(11) NOT NULL,
  KEY `tipoNecesidades_destino` (`categoria_id`),
  KEY `destinoNecesidades_destino` (`sucursal`),
  CONSTRAINT `destinoNecesidades_destino` FOREIGN KEY (`sucursal`) REFERENCES `sucursal` (`comarca`),
  CONSTRAINT `tipoNecesidades_destino` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `producto` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) unsigned NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_idProductos` (`categoria_id`),
  CONSTRAINT `usuario_idProductos` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


'Bebida', 5.0, '<ul><li>15L Agua</li><li></li><li>5L Bebida isitónica</li><li>3L Zumo</li></ul></ul>', 0);
insert into producto values (2, 2, 'Comida', 5.0, '<ul><li>2KG Arroz</li><li>2KG Legumbres</li><li>1L Aceite de Oliva</li></ul>', 0);
insert into producto values (3, 3, 'Higiene', 5.0, '<ul><i>300 compresas</li><li>100 pañales</li><li>100L Jabón</li></ul>',, 0);
insert into producto values (4, 4, 'Medicamentos', 5.0, '<ul><i>P</li><li>100 Ibuprofenos(300mg)</li><li>Diazepan(5mg)</li>50L Alcohol</ul>', 0);
insert into producto values (5, 5, 'Material escolar', 5.0, '<ul><i>P</li><li>200 Lápices y borragomas</li><li>50 Cuadernos</li>50 Bolígrafos</ul>', 0);



  CREATE TABLE `producto_cesta` (
  `cesta_id` int(11) unsigned NOT NULL,
  `producto_id` int(11) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  KEY `id_cestaProductos_cestas` (`cesta_id`),
  KEY `id_productoProductos_cestas` (`producto_id`),
  CONSTRAINT `id_cestaProductos_cestas` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`),
  CONSTRAINT `id_productoProductos_cestas` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
