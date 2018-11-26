--Crear la Base de Datos. 

CREATE DATABASE soporte_reconversion  TEMPLATE = 'template1';

--Conectar a la Base de Datos.

\c soporte_reconversion

-- CREATE SCHEMA DB;
--Definición de dominios.

CREATE DOMAIN Cod_Cono 	VARCHAR(10) CHECK( VALUE IN('BsS', 'BsF', 'Otro') );
CREATE DOMAIN Tipo_Cono 	VARCHAR(10) CHECK( VALUE IN('Moneda', 'Billete', 'Otro') );
CREATE DOMAIN Tipo_trans VARCHAR(10) CHECK( VALUE IN('TV', 'Radio', 'Otro') );

--Creación de TABLAS.

CREATE TABLE Divisa
(
	id_divisa		VARCHAR(10)		NOT NULL,
	nombre_cono 	Cod_Cono  	NOT NULL,
	PRIMARY KEY( id_divisa )
);


CREATE TABLE Elemento_Circulacion
(
	tipo			Tipo_Cono	NOT NULL,
	valor 			FLOAT			NOT NULL,
	nombre 			VARCHAR(60),
	id_divisa		VARCHAR(10)		NOT NULL,
	PRIMARY KEY( tipo, valor, id_divisa ),

	FOREIGN KEY( id_divisa )
		REFERENCES Divisa
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Elemento_Seguridad
(
	id_elemento		VARCHAR(10)		NOT NULL,
	tipo			VARCHAR(10)		NOT NULL,
	valor			FLOAT			NOT NULL,
	id_divisa		VARCHAR(10)		NOT NULL,	
	ruta_img		VARCHAR(150),
	PRIMARY KEY( id_elemento ),

	FOREIGN KEY( tipo, valor, id_divisa )
		REFERENCES Elemento_Circulacion
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Atributo_Seguridad
(
	id_elemento		VARCHAR(10)		NOT NULL,
	nombre_atributo	VARCHAR(50)		NOT NULL,
	valor_atributo	VARCHAR(100),
	PRIMARY KEY( id_elemento, nombre_atributo ),

	FOREIGN KEY( id_elemento )
		REFERENCES Elemento_Seguridad
		ON DELETE CASCADE
		ON UPDATE CASCADE		
);


CREATE TABLE Red_Social
(
	id_usuario		VARCHAR(50)		NOT NULL,
	nombre_red		VARCHAR(50)		NOT NULL,
	enlace			VARCHAR(150)	NOT NULL,
	PRIMARY KEY( id_usuario, nombre_red )
);


CREATE TABLE Publicacion
(
	id_publicacion		VARCHAR(10)		NOT NULL,
	texto_p				VARCHAR(500)	NOT NULL,
	id_usuario			VARCHAR(50)		NOT NULL,
	nombre_red			VARCHAR(50)		NOT NULL,
	enlace_p			VARCHAR(150)	NOT NULL,
	fec_hor_creacion	TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP,	
	img_publicacion		VARCHAR(150),	
	PRIMARY KEY( fec_hor_creacion, id_usuario, nombre_red ),

	FOREIGN KEY( id_usuario, nombre_red )
		REFERENCES Red_Social
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Establecida_Marco_Legal
(
	id_marco 	VARCHAR(10) 	NOT NULL,
	enlace		VARCHAR(150)	NOT NULL,
	tipo 		VARCHAR(30)		NOT NULL,
	id_divisa	VARCHAR(10)		NOT NULL,
	fecha 		DATE			NOT NULL DEFAULT CURRENT_DATE,
	PRIMARY KEY( id_marco ),

	FOREIGN KEY( id_divisa )
		REFERENCES Divisa
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Transmision
(
	titulo		VARCHAR(100) 	NOT NULL,
	tipo_t 		Tipo_trans	NOT NULL,
	emisor		VARCHAR(50)		NOT NULL,
	frec_canal	VARCHAR(20)		NOT NULL,
	PRIMARY KEY( titulo, tipo_t)
);


CREATE TABLE Agenda_Transmision
(
	titulo		VARCHAR(60)		NOT NULL,
	tipo		VARCHAR(10)		NOT NULL,
	fecha		TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY( titulo, tipo, fecha ),

	FOREIGN KEY( titulo, tipo )
		REFERENCES Transmision
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE Infografia
(
	id_infografia		VARCHAR(10)		NOT NULL,
	tipo_i				VARCHAR(20)		NOT NULL,
	cant_impresa		INTEGER			NOT NULL,
	autor 				VARCHAR(60)		NOT NULL,
	costo				FLOAT			NOT NULL,
	fecha_creacion		DATE 			NOT NULL DEFAULT CURRENT_DATE,
	PRIMARY KEY( id_infografia )
);


CREATE TABLE Destino
(
	rif			VARCHAR(15)		NOT NULL,
	estado		VARCHAR(30)		NOT NULL,
	ciudad		VARCHAR(30)		NOT NULL,
	direccion	VARCHAR(150)	NOT NULL,
	PRIMARY KEY( rif )
);


CREATE TABLE Reporte_entrega
(
	num_reporte		VARCHAR(10)		NOT NULL,
	id_infografia	VARCHAR(10)		NOT NULL,
	rif				VARCHAR(15)		NOT NULL,
	cantidad		INTEGER			NOT NULL,
	fecha_entrega	TIMESTAMP		NOT NULL DEFAULT CURRENT_TIMESTAMP,
	descripcion		VARCHAR(300),
	PRIMARY KEY( num_reporte, id_infografia, rif ),

	FOREIGN KEY( id_infografia )
		REFERENCES Infografia
		ON DELETE CASCADE
		ON UPDATE CASCADE,

	FOREIGN KEY( rif )
		REFERENCES Destino
		ON DELETE CASCADE
		ON UPDATE CASCADE	
);


CREATE TABLE Software_Cajeros
(
	versi		VARCHAR(15)		NOT NULL,
	enlace_doc	VARCHAR(150)	NOT NULL,
	PRIMARY KEY( versi )
);


--Creación de Roles y usuarios

CREATE ROLE asesor;
CREATE ROLE cliente;

GRANT ALL ON ALL TABLES IN SCHEMA public TO asesor;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO cliente;

CREATE USER jose27duran08 IN ROLE asesor PASSWORD 'jedg2708';
CREATE USER jose27 IN ROLE cliente PASSWORD 'jedg2708';