DROP DATABASE IF EXISTS databaseOng;
CREATE DATABASE IF NOT EXISTS databaseOng;
USE databaseOng;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE IF NOT EXISTS usuarios (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  password varchar(15) NOT NULL,
  nombre varchar(15)  NOT NULL,
  apellido varchar(15) NOT NULL,
  poblacion varchar(15) NOT NULL,
  cp varchar(15) NOT NULL,
  email varchar(15) NOT NULL,
  UNIQUE KEY passwordUsuarios (password),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS roles;
CREATE TABLE IF NOT EXISTS roles (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  nombre varchar(15)  NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS usuarios_roles;
CREATE TABLE IF NOT EXISTS usuarios_roles (
  rol_id tinyint(3) unsigned NOT NULL,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY rol_idUser_rol (rol_id),
  KEY usuario_idUser_rol (usuario_id),
  CONSTRAINT rol_idUser_rol FOREIGN KEY (rol_id) REFERENCES rol (id),
  CONSTRAINT usuario_idUser_rol FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

DROP TABLE IF EXISTS donaciones;
CREATE TABLE IF NOT EXISTS donaciones (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY usuario_idDonaciones (usuario_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idDonaciones FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

DROP TABLE IF EXISTS categorias;
CREATE TABLE IF NOT EXISTS categorias (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  nombre varchar (15) NOT NULL,
  UNIQUE KEY nombreCategoria (nombre),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS donaciones;
CREATE TABLE IF NOT EXISTS donaciones (
  rol_id tinyint(3) unsigned NOT NULL,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY rol_idUser_rol (rol_id),
  KEY usuario_idUser_rol (usuario_id),
  CONSTRAINT rol_idUser_rol FOREIGN KEY (rol_id) REFERENCES rol (id),
  CONSTRAINT usuario_idUser_rol FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

DROP TABLE IF EXISTS productos;
CREATE TABLE IF NOT EXISTS productos (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  categoria_id tinyint(3) unsigned NOT NULL,
  KEY categoria_idProductos (categoria_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idProductos FOREIGN KEY (categoria_id) REFERENCES categorias (id)
);

DROP TABLE IF EXISTS donaciones_detalles;
CREATE TABLE IF NOT EXISTS donaciones_detalles (
  donacion_id tinyint(3) unsigned NOT NULL,
  categoria_id tinyint(3) unsigned NOT NULL,
  KEY donacion_idDonaciones_detalles (donacion_id),
  KEY categoria_idDonaciones_detalles (categoria_id),
  CONSTRAINT donacion_idDonaciones_detalles FOREIGN KEY (rol_id) REFERENCES rol (id),
  CONSTRAINT categoria_idDonaciones_detalles FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

KEY `SEGMA_FK` (`segmentID`),
  CONSTRAINT `SEGMA_FK` FOREIGN KEY (`segmentID`) REFERENCES `segment` (`segmentID`)
