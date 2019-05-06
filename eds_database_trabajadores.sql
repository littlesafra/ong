DROP DATABASE IF EXISTS database_ong_trabajadores;
CREATE DATABASE IF NOT EXISTS database_ong_trabajadores;
USE database_ong_trabajadores;

DROP TABLE IF EXISTS rol;
CREATE TABLE IF NOT EXISTS rol (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  nombre varchar(15)  NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS trabajador;
CREATE TABLE IF NOT EXISTS trabajador (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  password varchar(15) NOT NULL,
  nombre varchar(15)  NOT NULL,
  apellido varchar(15) NOT NULL,
  poblacion varchar(15) NOT NULL,
  cp varchar(15) NOT NULL,
  email varchar(15) NOT NULL,
  donanete boolean,
  UNIQUE KEY passwordUsuarios (username),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS trabajador_rol;
CREATE TABLE IF NOT EXISTS trabajador_rol(
  rol_id tinyint(3) unsigned NOT NULL,
  trabajador_id tinyint(3) unsigned NOT NULL,
  KEY rol_idTrabajadores_roles (rol_id),
  KEY trabajador_idTrabajadores_roles (trabajador_id),
  CONSTRAINT rol_idTrabajadores_roles FOREIGN KEY (rol_id) REFERENCES rol (id),
  CONSTRAINT trabajador_idTrabajadores_roles FOREIGN KEY (trabajador_id) REFERENCES trabajador (id)
);
