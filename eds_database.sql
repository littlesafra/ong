DROP DATABASE IF EXISTS database_ong;
CREATE DATABASE IF NOT EXISTS database_ong;
USE database_ong;

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
  KEY rol_idUsuarios_roles (rol_id),
  KEY usuario_idUsuarios_roles (usuario_id),
  CONSTRAINT rol_idUsuarios_roles FOREIGN KEY (rol_id) REFERENCES roles (id),
  CONSTRAINT usuario_idUsuarios_roles FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
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
  id tinyint(3) unsigned NOT NULL,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY usuario_idDonaciones (usuario_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idDonaciones FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
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
  producto_id tinyint(3) unsigned NOT NULL,
  fecha date NOT NULL,
  total_dinero integer unsigned NOT NULL,
  KEY donacion_idDonaciones_detalles (donacion_id),
  KEY producto_idDonaciones_detalles (categoria_id),
  CONSTRAINT donacion_idDonaciones_detalles FOREIGN KEY (donacion_id) REFERENCES rol (id),
  CONSTRAINT producto_idDonaciones_detalles FOREIGN KEY (producto_id) REFERENCES usuarios (id)
);

DROP TABLE IF EXISTS cestas;
CREATE TABLE IF NOT EXISTS cestas (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY usuario_idCestas (usuario_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idCestas FOREIGN KEY (usuario_id) REFERENCES usuarios (id)
);

DROP TABLE IF EXISTS productos_cestas;
CREATE TABLE IF NOT EXISTS productos_cestas (
  cesta_id tinyint(3) unsigned NOT NULL,
  producto_id tinyint(3) unsigned NOT NULL,
  KEY id_cestaProductos_cestas (cesta_id),
  KEY id_productoProductos_cestas (producto_id),
  CONSTRAINT id_cestaProductos_cestas FOREIGN KEY (cesta_id) REFERENCES cestas (id),
  CONSTRAINT id_productoProductos_cestas FOREIGN KEY (producto_id) REFERENCES productos (id)
);

DROP TABLE IF EXISTS destinos;
CREATE TABLE IF NOT EXISTS destinos (
  cp varchar(15) NOT NULL,
  poblacion varchar(15) NOT NULL,
  direccion varchar(30) NOT NULL,
  PRIMARY KEY (cp)
);

DROP TABLE IF EXISTS envios;
CREATE TABLE IF NOT EXISTS envios (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  fecha_entrega date NOT NULL,
  destino varchar(15) NOT NULL,
  KEY destino_envios (destino),
  PRIMARY KEY (id),
  CONSTRAINT destino_envios FOREIGN KEY (destino) REFERENCES destinos (cp)
);

DROP TABLE IF EXISTS necesidades_destino;
CREATE TABLE IF NOT EXISTS necesidades_destino (
  tipo tinyint(3) unsigned NOT NULL,
  destino varchar(15) NOT NULL,
  KEY tipoNecesidades_destino (tipo),
  KEY destinoNecesidades_destino(destino),
  CONSTRAINT donacion_idDonaciones_detalles FOREIGN KEY (tipo) REFERENCES categorias (id),
  CONSTRAINT categoria_idDonaciones_detalles FOREIGN KEY (destino) REFERENCES destinos (cp)
);

DROP TABLE IF EXISTS envios_detalles;
CREATE TABLE IF NOT EXISTS envios_detalles (
  envio_id tinyint(3) unsigned NOT NULL,
  producto_id tinyint(3) unsigned NOT NULL,
  fecha_entrega date NOT NULL,
  total_dinero integer unsigned NOT NULL,
  KEY envio_idEnvios_detalles (envio_id),
  KEY producto_idEnvios_detalles (producto_id),
  CONSTRAINT envio_idEnvios_detalles FOREIGN KEY (envio_id) REFERENCES envios (id),
  CONSTRAINT producto_idEnvios_detalles FOREIGN KEY (producto_id) REFERENCES productos (id)
);
