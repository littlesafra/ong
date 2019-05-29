DROP DATABASE IF EXISTS database_ong;
CREATE DATABASE IF NOT EXISTS database_ong;
USE database_ong;

DROP TABLE IF EXISTS usuario;
CREATE TABLE IF NOT EXISTS usuario (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  username varchar(15) NOT NULL,
  password varchar(15) NOT NULL,
  nombre varchar(15)  NOT NULL,
  apellido varchar(15) NOT NULL,
  direccion varchar(15) NOT NULL,
  email varchar(15) NOT NULL,
  donante boolean,
  UNIQUE KEY passwordUsuarios (username),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS rol;
CREATE TABLE IF NOT EXISTS rol (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  nombre varchar(15)  NOT NULL,
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS usuario_rol;
CREATE TABLE IF NOT EXISTS usuario_rol (
  rol_id tinyint(3) unsigned NOT NULL,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY rol_idUsuarios_roles (rol_id),
  KEY usuario_idUsuarios_roles (usuario_id),
  CONSTRAINT rol_idUsuarios_roles FOREIGN KEY (rol_id) REFERENCES rol (id),
  CONSTRAINT usuario_idUsuarios_roles FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

DROP TABLE IF EXISTS categoria;
CREATE TABLE IF NOT EXISTS categoria (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  nombre varchar (15) NOT NULL,
  UNIQUE KEY nombreCategoria (nombre),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS donacion;
CREATE TABLE IF NOT EXISTS donacion (
  id tinyint(3) unsigned NOT NULL,
  usuario_id tinyint(3) unsigned NOT NULL,
  fecha date NOT NULL,
  KEY usuario_idDonaciones (usuario_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idDonaciones FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

DROP TABLE IF EXISTS producto;
CREATE TABLE IF NOT EXISTS producto (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  categoria_id tinyint(3) unsigned NOT NULL,
  nombre varchar(15) NOT NULL,
  precio float NOT NULL,
  descripcion varchar(80),
  stock integer NOT NULL,
  KEY categoria_idProductos (categoria_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idProductos FOREIGN KEY (categoria_id) REFERENCES categoria (id)
);

DROP TABLE IF EXISTS donacion_detalles;
CREATE TABLE IF NOT EXISTS donaciones_detalles (
  donacion_id tinyint(3) unsigned NOT NULL,
  producto_id tinyint(3) unsigned NOT NULL,
  fecha date NOT NULL,
  cantidad integer unsigned NOT NULL,
  KEY donacion_idDonaciones_detalles (donacion_id),
  KEY producto_idDonaciones_detalles (producto_id),
  CONSTRAINT donacion_idDonaciones_detalles FOREIGN KEY (donacion_id) REFERENCES donacion (id),
  CONSTRAINT producto_idDonaciones_detalles FOREIGN KEY (producto_id) REFERENCES producto (id)
);

DROP TABLE IF EXISTS cesta;
CREATE TABLE IF NOT EXISTS cesta (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  usuario_id tinyint(3) unsigned NOT NULL,
  KEY usuario_idCestas (usuario_id),
  PRIMARY KEY (id),
  CONSTRAINT usuario_idCestas FOREIGN KEY (usuario_id) REFERENCES usuario (id)
);

DROP TABLE IF EXISTS producto_cesta;
CREATE TABLE IF NOT EXISTS producto_cesta (
  cesta_id tinyint(3) unsigned NOT NULL,
  producto_id tinyint(3) unsigned NOT NULL,
  cantidad integer unsigned NOT NULL,
  KEY id_cestaProductos_cestas (cesta_id),
  KEY id_productoProductos_cestas (producto_id),
  CONSTRAINT id_cestaProductos_cestas FOREIGN KEY (cesta_id) REFERENCES cesta (id),
  CONSTRAINT id_productoProductos_cestas FOREIGN KEY (producto_id) REFERENCES producto (id)
);

DROP TABLE IF EXISTS destino;
CREATE TABLE IF NOT EXISTS destino (
  cp varchar(15) NOT NULL,
  poblacion varchar(15) NOT NULL,
  direccion varchar(30) NOT NULL,
  PRIMARY KEY (cp)
);

DROP TABLE IF EXISTS envio;
CREATE TABLE IF NOT EXISTS envio (
  id tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  fecha_entrega date NOT NULL,
  destino varchar(15) NOT NULL,
  KEY destino_envios (destino),
  PRIMARY KEY (id),
  CONSTRAINT destino_envio FOREIGN KEY (destino) REFERENCES destino (cp)
);

DROP TABLE IF EXISTS necesidad_destino;
CREATE TABLE IF NOT EXISTS necesidad_destino (
  tipo tinyint(3) unsigned NOT NULL,
  destino varchar(15) NOT NULL,
  porcentaje_cantidad integer NOT NULL,
  porcentaje_necesidad integer NOT NULL,
  KEY tipoNecesidades_destino (tipo),
  KEY destinoNecesidades_destino(destino),
  CONSTRAINT tipoNecesidades_destino FOREIGN KEY (tipo) REFERENCES categoria (id),
  CONSTRAINT destinoNecesidades_destino FOREIGN KEY (destino) REFERENCES destino (cp)
);

DROP TABLE IF EXISTS envio_detalles;
CREATE TABLE IF NOT EXISTS envio_detalles (
  envio_id tinyint(3) unsigned NOT NULL,
  producto_id tinyint(3) unsigned NOT NULL,
  fecha_entrega date NOT NULL,
  total_dinero float unsigned NOT NULL,
  KEY envio_idEnvios_detalles (envio_id),
  KEY producto_idEnvios_detalles (producto_id),
  CONSTRAINT envio_idEnvios_detalles FOREIGN KEY (envio_id) REFERENCES envio (id),
  CONSTRAINT producto_idEnvios_detalles FOREIGN KEY (producto_id) REFERENCES producto (id)
);
