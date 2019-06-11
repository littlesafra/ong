
insert into categoria values (1, 'Bebida');
insert into categoria values (2, 'Alimentos');
insert into categoria values (3, 'Higiene');
insert into categoria values (4, 'Medicamentos');
insert into categoria values (5, 'MaterialEscolar');

INSERT INTO role (name) VALUES ('ROLE_EMPLOYEE'),('ROLE_MANAGER'),('ROLE_ADMIN');

INSERT INTO user (username,password,first_name,last_name,email)
VALUES
('john','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','John','Doe','john@luv2code.com'),
('mary','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Mary','Public','mary@luv2code.com'),
('susan','$2a$04$eFytJDGtjbThXa80FyOOBuFdK2IwjyWefYkMpiBEFlpBwDH.5PM0K','Susan','Adams','susan@luv2code.com');


INSERT INTO users_roles (user_id,role_id)
VALUES
	(1, 1),
	(2, 1),
	(2, 2),
	(3, 1),
	(3, 3);




	insert into producto values (1, 1, 'Bebida', 5.0, '<ul><li>15L Agua</li><li>5L Bebida isitónica</li><li>3L Zumo</li></ul>', 100);
	insert into producto values (2, 2, 'Comida', 5.0, '<ul><li>2KG Arroz</li><li>2KG Legumbres</li><li>1L Aceite de Oliva</li></ul>', 40);
	insert into producto values (3, 3, 'Higiene', 5.0, '<ul><li>300 compresas</li><li>100 pañales</li><li>100L Jabón</li></ul>', 50);
	insert into producto values (4, 4, 'Medicamentos', 5.0, '<ul><li>100 Ibuprofenos(300mg)</li><li>Diazepan(5mg)</li><li>50L Alcohol</li></ul>', 70);
	insert into producto values (5, 5, 'Material escolar', 5.0, '<ul><li>200 Lápices y borragomas</li><li>50 Cuadernos</li><li>50 Bolígrafos</li></ul>', 50);



		insert into cesta values (1, 3);
		insert into producto_cesta values (1, 1, 1);


		insert into donacion values (1, 3, '2000-11-06');
		insert into donaciones_detalles values (1, 1, 2);




insert into sucursal values ("Valles Alaveses");
insert into sucursal values ("Llanada Alavesa");
insert into sucursal values ("Montana Alavesa");
insert into sucursal values ("Arratia-Nervion");
insert into sucursal values ("Bajo Bidasoa");
insert into sucursal values ("Gran Bilbao");
insert into sucursal values ("Bajo Deba");
insert into sucursal values ("Alto Deba");
insert into sucursal values ("Donostia-San Sebastian");
insert into sucursal values ("Duranguesado");
insert into sucursal values ("Encartaciones");
insert into sucursal values ("Rioja Alavesa");
insert into sucursal values ("Gernika-Bermeo");
insert into sucursal values ("Goierri");
insert into sucursal values ("Estribac. del Gorbea");
insert into sucursal values ("Cantabrica Alavesa");
insert into sucursal values ("Markina-Ondarroa");
insert into sucursal values ("Plentzia-Mungia");
insert into sucursal values ("Tolosa");
insert into sucursal values ("Urola Costa");


insert into necesidad_sucursal values (1, "Valles Alaveses", 20);
insert into necesidad_sucursal values (2, "Valles Alaveses", 20);
insert into necesidad_sucursal values (3, "Valles Alaveses", 20);
insert into necesidad_sucursal values (4, "Valles Alaveses", 20);
insert into necesidad_sucursal values (5, "Valles Alaveses", 20);

insert into necesidad_sucursal values (1, "Llanada Alavesa", 25);
insert into necesidad_sucursal values (2, "Llanada Alavesa", 25);
insert into necesidad_sucursal values (3, "Llanada Alavesa", 10);
insert into necesidad_sucursal values (4, "Llanada Alavesa", 10);
insert into necesidad_sucursal values (5, "Llanada Alavesa", 30);

insert into necesidad_sucursal values (1, "Montana Alavesa", 10);
insert into necesidad_sucursal values (2, "Montana Alavesa", 20);
insert into necesidad_sucursal values (3, "Montana Alavesa", 30);
insert into necesidad_sucursal values (4, "Montana Alavesa", 25);
insert into necesidad_sucursal values (5, "Montana Alavesa", 15);

insert into necesidad_sucursal values (1, "Arratia-Nervion", 5);
insert into necesidad_sucursal values (2, "Arratia-Nervion", 40);
insert into necesidad_sucursal values (3, "Arratia-Nervion", 40);
insert into necesidad_sucursal values (4, "Arratia-Nervion", 5);
insert into necesidad_sucursal values (5, "Arratia-Nervion", 10);


insert into necesidad_sucursal values (1, "Bajo Bidasoa", 25);
insert into necesidad_sucursal values (2, "Bajo Bidasoa", 10);
insert into necesidad_sucursal values (3, "Bajo Bidasoa", 10);
insert into necesidad_sucursal values (4, "Bajo Bidasoa", 50);
insert into necesidad_sucursal values (5, "Bajo Bidasoa", 5);


insert into necesidad_sucursal values (1, "Gran Bilbao", 10);
insert into necesidad_sucursal values (2, "Gran Bilbao", 5);
insert into necesidad_sucursal values (3, "Gran Bilbao", 5);
insert into necesidad_sucursal values (4, "Gran Bilbao", 40);
insert into necesidad_sucursal values (5, "Gran Bilbao", 40);


insert into necesidad_sucursal values (1, "Bajo Deba", 10);
insert into necesidad_sucursal values (2, "Bajo Deba", 20);
insert into necesidad_sucursal values (3, "Bajo Deba", 30);
insert into necesidad_sucursal values (4, "Bajo Deba", 30);
insert into necesidad_sucursal values (5, "Bajo Deba", 10);


insert into necesidad_sucursal values (1, "Alto Deba", 10);
insert into necesidad_sucursal values (2, "Alto Deba", 35);
insert into necesidad_sucursal values (3, "Alto Deba", 15);
insert into necesidad_sucursal values (4, "Alto Deba", 25);
insert into necesidad_sucursal values (5, "Alto Deba", 15);


insert into necesidad_sucursal values (1, "Donostia-San Sebastian", 10);
insert into necesidad_sucursal values (2, "Donostia-San Sebastian", 20);
insert into necesidad_sucursal values (3, "Donostia-San Sebastian", 45);
insert into necesidad_sucursal values (4, "Donostia-San Sebastian", 25);
insert into necesidad_sucursal values (5, "Donostia-San Sebastian", 0);

insert into necesidad_sucursal values (1, "Duranguesado", 10);
insert into necesidad_sucursal values (2, "Duranguesado", 25);
insert into necesidad_sucursal values (3, "Duranguesado", 35);
insert into necesidad_sucursal values (4, "Duranguesado", 15);
insert into necesidad_sucursal values (5, "Duranguesado", 15);

insert into necesidad_sucursal values (1, "Encartaciones", 10);
insert into necesidad_sucursal values (2, "Encartaciones", 15);
insert into necesidad_sucursal values (3, "Encartaciones", 25);
insert into necesidad_sucursal values (4, "Encartaciones", 10);
insert into necesidad_sucursal values (5, "Encartaciones", 40);

insert into necesidad_sucursal values (1, "Rioja Alavesa", 10);
insert into necesidad_sucursal values (2, "Rioja Alavesa", 20);
insert into necesidad_sucursal values (3, "Rioja Alavesa", 30);
insert into necesidad_sucursal values (4, "Rioja Alavesa", 15);
insert into necesidad_sucursal values (5, "Rioja Alavesa", 25);

insert into necesidad_sucursal values (1, "Gernika-Bermeo", 25);
insert into necesidad_sucursal values (2, "Gernika-Bermeo", 5);
insert into necesidad_sucursal values (3, "Gernika-Bermeo", 30);
insert into necesidad_sucursal values (4, "Gernika-Bermeo", 25);
insert into necesidad_sucursal values (5, "Gernika-Bermeo", 15);

insert into necesidad_sucursal values (1, "Goierri", 15);
insert into necesidad_sucursal values (2, "Goierri", 25);
insert into necesidad_sucursal values (3, "Goierri", 30);
insert into necesidad_sucursal values (4, "Goierri", 25);
insert into necesidad_sucursal values (5, "Goierri", 15);

insert into necesidad_sucursal values (1, "Estribac. del Gorbea", 10);
insert into necesidad_sucursal values (2, "Estribac. del Gorbea", 20);
insert into necesidad_sucursal values (3, "Estribac. del Gorbea", 30);
insert into necesidad_sucursal values (4, "Estribac. del Gorbea", 30);
insert into necesidad_sucursal values (5, "Estribac. del Gorbea", 5);

insert into necesidad_sucursal values (1, "Cantabrica Alavesa", 5);
insert into necesidad_sucursal values (2, "Cantabrica Alavesa", 20);
insert into necesidad_sucursal values (3, "Cantabrica Alavesa", 35);
insert into necesidad_sucursal values (4, "Cantabrica Alavesa", 25);
insert into necesidad_sucursal values (5, "Cantabrica Alavesa", 15);

insert into necesidad_sucursal values (1, "Markina-Ondarroa", 10);
insert into necesidad_sucursal values (2, "Markina-Ondarroa", 40);
insert into necesidad_sucursal values (3, "Markina-Ondarroa", 30);
insert into necesidad_sucursal values (4, "Markina-Ondarroa", 5);
insert into necesidad_sucursal values (5, "Markina-Ondarroa", 15);

insert into necesidad_sucursal values (1, "Plentzia-Mungia", 10);
insert into necesidad_sucursal values (2, "Plentzia-Mungia", 20);
insert into necesidad_sucursal values (3, "Plentzia-Mungia", 50);
insert into necesidad_sucursal values (4, "Plentzia-Mungia", 5);
insert into necesidad_sucursal values (5, "Plentzia-Mungia", 15);

insert into necesidad_sucursal values (1, "Tolosa", 20);
insert into necesidad_sucursal values (2, "Tolosa", 20);
insert into necesidad_sucursal values (3, "Tolosa", 30);
insert into necesidad_sucursal values (4, "Tolosa", 25);
insert into necesidad_sucursal values (5, "Tolosa", 5);

insert into necesidad_sucursal values (1, "Urola Costa", 10);
insert into necesidad_sucursal values (2, "Urola Costa", 20);
insert into necesidad_sucursal values (3, "Urola Costa", 40);
insert into necesidad_sucursal values (4, "Urola Costa", 25);
insert into necesidad_sucursal values (5, "Urola Costa", 5);


insert into realizar_reparto values (0, false);
