--Inserción de datos en la relación Cono.

INSERT INTO Divisa VALUES( 'div_001', 'BsS');
INSERT INTO Divisa VALUES( 'div_002', 'BsF');

--Inserción de datos en la relación Elemento_Circulacion.

INSERT INTO Elemento_Circulacion VALUES('Moneda' , 0.5   , 'Moneda de 0.5'    , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Moneda' , 0.5   , 'Moneda de 0.5'    , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Moneda' , 1     , 'Moneda de 1'      , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Moneda' , 1     , 'Moneda de 1'      , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 2     , 'Billete de 2'     , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 2     , 'Billete de 2'     , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 5     , 'Billete de 5'     , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 5     , 'Billete de 5'     , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 10    , 'Billete de 10'    , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 10    , 'Billete de 10'    , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 20    , 'Billete de 20'    , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 20    , 'Billete de 20'    , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 50    , 'Billete de 50'    , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 50    , 'Billete de 50'    , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 100   , 'Billete de 100'   , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 100   , 'Billete de 100'   , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 200   , 'Billete de 200'   , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 500   , 'Billete de 500'   , 'div_001');
INSERT INTO Elemento_Circulacion VALUES('Billete', 500   , 'Billete de 500'   , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 1000  , 'Billete de 1000'  , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 2000  , 'Billete de 2000'  , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 5000  , 'Billete de 5000'  , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 10000 , 'Billete de 10000' , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 20000 , 'Billete de 20000' , 'div_002');
INSERT INTO Elemento_Circulacion VALUES('Billete', 100000, 'Billete de 100000', 'div_002');

--Inserción de datos en la relación Elemento_Seguridad.

INSERT INTO Elemento_Seguridad VALUES('es_001', 'Moneda' , 0.5   , 'div_001', 'images/es_001');
INSERT INTO Elemento_Seguridad VALUES('es_002', 'Moneda' , 0.5   , 'div_002', 'images/es_002');
INSERT INTO Elemento_Seguridad VALUES('es_003', 'Moneda' , 1     , 'div_001', 'images/es_003');
INSERT INTO Elemento_Seguridad VALUES('es_004', 'Moneda' , 1     , 'div_002', 'images/es_004');
INSERT INTO Elemento_Seguridad VALUES('es_005', 'Billete', 2     , 'div_001', 'images/es_005');
INSERT INTO Elemento_Seguridad VALUES('es_006', 'Billete', 2     , 'div_002', 'images/es_006');
INSERT INTO Elemento_Seguridad VALUES('es_007', 'Billete', 5     , 'div_001', 'images/es_007');
INSERT INTO Elemento_Seguridad VALUES('es_008', 'Billete', 5     , 'div_002', 'images/es_008');
INSERT INTO Elemento_Seguridad VALUES('es_009', 'Billete', 10    , 'div_001', 'images/es_009');
INSERT INTO Elemento_Seguridad VALUES('es_010', 'Billete', 10    , 'div_002', 'images/es_010');
INSERT INTO Elemento_Seguridad VALUES('es_011', 'Billete', 20    , 'div_001', 'images/es_011');
INSERT INTO Elemento_Seguridad VALUES('es_012', 'Billete', 20    , 'div_002', 'images/es_012');
INSERT INTO Elemento_Seguridad VALUES('es_013', 'Billete', 50    , 'div_001', 'images/es_013');
INSERT INTO Elemento_Seguridad VALUES('es_014', 'Billete', 50    , 'div_002', 'images/es_014');
INSERT INTO Elemento_Seguridad VALUES('es_015', 'Billete', 100   , 'div_001', 'images/es_015');
INSERT INTO Elemento_Seguridad VALUES('es_016', 'Billete', 100   , 'div_002', 'images/es_016');
INSERT INTO Elemento_Seguridad VALUES('es_017', 'Billete', 200   , 'div_001', 'images/es_017');
INSERT INTO Elemento_Seguridad VALUES('es_018', 'Billete', 500   , 'div_001', 'images/es_018');
INSERT INTO Elemento_Seguridad VALUES('es_019', 'Billete', 500   , 'div_002', 'images/es_019');
INSERT INTO Elemento_Seguridad VALUES('es_020', 'Billete', 1000  , 'div_002', 'images/es_020');
INSERT INTO Elemento_Seguridad VALUES('es_021', 'Billete', 2000  , 'div_002', 'images/es_021');
INSERT INTO Elemento_Seguridad VALUES('es_022', 'Billete', 5000  , 'div_002', 'images/es_022');
INSERT INTO Elemento_Seguridad VALUES('es_023', 'Billete', 10000 , 'div_002', 'images/es_023');
INSERT INTO Elemento_Seguridad VALUES('es_024', 'Billete', 20000 , 'div_002', 'images/es_024');
INSERT INTO Elemento_Seguridad VALUES('es_025', 'Billete', 100000, 'div_002', 'images/es_025');

--Inserción de datos en la relación Atributo_Seguridad.

INSERT INTO Atributo_Seguridad VALUES('es_001', 'Tipo de Metal');
INSERT INTO Atributo_Seguridad VALUES('es_002', 'Tipo de Metal');
INSERT INTO Atributo_Seguridad VALUES('es_003', 'Tipo de Metal');
INSERT INTO Atributo_Seguridad VALUES('es_004', 'Tipo de Metal');
INSERT INTO Atributo_Seguridad VALUES('es_005', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_006', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_007', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_008', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_009', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_010', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_011', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_012', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_013', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_014', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_015', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_016', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_017', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_018', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_019', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_020', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_021', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_022', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_023', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_024', 'Marca de agua');
INSERT INTO Atributo_Seguridad VALUES('es_025', 'Marca de agua');

--Inseciones en la tabla Red_Social

INSERT INTO Red_Social VALUES('jose27duran08@gmail.com', 'Facebook' , 'www.facebook.com' );
INSERT INTO Red_Social VALUES('jose27duran08@gmail.com', 'Twitter'  , 'www.twitter.com'  );
INSERT INTO Red_Social VALUES('jose27duran08@gmail.com', 'Instagram', 'www.instagram.com');

--Inseciones en la tabla Publicacion

INSERT INTO Publicacion VALUES('pub_001', 'Texto de la publicacion 001', 'jose27duran08@gmail.com', 'Facebook' , 'www.facebook.com/jose27duran08/pub_001' );
INSERT INTO Publicacion VALUES('pub_002', 'Texto de la publicacion 002', 'jose27duran08@gmail.com', 'Twitter'  , 'www.twitter.com/jose27duran08/pub_002'  );
INSERT INTO Publicacion VALUES('pub_003', 'Texto de la publicacion 003', 'jose27duran08@gmail.com', 'Instagram', 'www.instagram.com/jose27duran08/pub_003');

--Inserción en la relación Establecida_Marco_Legal

INSERT INTO Establecida_Marco_Legal VALUES('mar_001', 'www.marcolegal.com/marcoN°1', 'Decreto', 'div_001');
INSERT INTO Establecida_Marco_Legal VALUES('mar_002', 'www.marcolegal.com/marcoN°2', 'Decreto', 'div_001');
INSERT INTO Establecida_Marco_Legal VALUES('mar_003', 'www.marcolegal.com/marcoN°3', 'Decreto', 'div_002');
INSERT INTO Establecida_Marco_Legal VALUES('mar_004', 'www.marcolegal.com/marcoN°4', 'Decreto', 'div_002');

--Inserción en la relación Transmision

INSERT INTO Transmision VALUES('Transmision 1', 'TV'   , 'Venevision' , '90.05' );
INSERT INTO Transmision VALUES('Transmision 2', 'Radio', 'Televen'    , '120.55');
INSERT INTO Transmision VALUES('Transmision 3', 'TV'   , 'TVES'       , '43.32' );
INSERT INTO Transmision VALUES('Transmision 4', 'Radio', 'VTV'        , '65.78' );
INSERT INTO Transmision VALUES('Transmision 5', 'TV'   , 'Globovision', '122.00');

--Inserción en la relación Agenda_Transmision

INSERT INTO Agenda_Transmision VALUES('Transmision 1', 'TV'   , '2018-04-13 12:30:00');
INSERT INTO Agenda_Transmision VALUES('Transmision 2', 'Radio', '2018-05-14 13:30:00');
INSERT INTO Agenda_Transmision VALUES('Transmision 3', 'TV'   , '2018-06-15 14:30:00');
INSERT INTO Agenda_Transmision VALUES('Transmision 4', 'Radio', '2018-07-16 15:30:00');
INSERT INTO Agenda_Transmision VALUES('Transmision 5', 'TV'   , '2018-08-17 16:30:00');

--Insercion en la relacion Infografía

INSERT INTO Infografia VALUES('info_001', 'Revista'   , 100, 'Jose Duran', 50000, '2018-04-10');
INSERT INTO Infografia VALUES('info_002', 'Triptico'  , 200, 'Jose Duran', 50000, '2018-04-11');
INSERT INTO Infografia VALUES('info_003', 'Peridodico', 300, 'Jose Duran', 50000, '2018-04-12');
INSERT INTO Infografia VALUES('info_004', 'Cartel'    , 400, 'Jose Duran', 50000, '2018-04-13');
INSERT INTO Infografia VALUES('info_005', 'Panfleto'  , 500, 'Jose Duran', 50000, '2018-04-14');
INSERT INTO Infografia VALUES('info_006', 'Revista'   , 600, 'Jose Duran', 50000, '2018-04-15');
INSERT INTO Infografia VALUES('info_007', 'Triptico'  , 700, 'Jose Duran', 50000, '2018-04-16');
INSERT INTO Infografia VALUES('info_008', 'Peridodico', 800, 'Jose Duran', 50000, '2018-04-17');
INSERT INTO Infografia VALUES('info_009', 'Cartel'    , 900, 'Jose Duran', 50000, '2018-04-18');
INSERT INTO Infografia VALUES('info_010', 'Panfleto'  , 950, 'Jose Duran', 50000, '2018-04-19');

--Insercion en la realcion Destino

INSERT INTO Destino VALUES('J-123456781', 'Carabobo', 'Valencia'    , 'Sector1-Calle2-Local-7' );
INSERT INTO Destino VALUES('J-123456782', 'Aragua'  , 'Maracay'     , 'Sector2-Calle3-Local-8' );
INSERT INTO Destino VALUES('J-123456783', 'Yaracuy' , 'Hurachiche'  , 'Sector3-Calle4-Local-9' );
INSERT INTO Destino VALUES('J-123456784', 'Zulia'   , 'Maracaibo'   , 'Sector4-Calle5-Local-10');
INSERT INTO Destino VALUES('J-123456785', 'Lara'    , 'Barquisimeto', 'Sector5-Calle6-Local-11');

--Insercion en la relacion Reporte_Entrega

INSERT INTO Reporte_Entrega VALUES('0000000001', 'info_001', 'J-123456781', 40);
INSERT INTO Reporte_Entrega VALUES('0000000002', 'info_002', 'J-123456782', 50);
INSERT INTO Reporte_Entrega VALUES('0000000003', 'info_003', 'J-123456783', 60);
INSERT INTO Reporte_Entrega VALUES('0000000004', 'info_004', 'J-123456784', 70);
INSERT INTO Reporte_Entrega VALUES('0000000005', 'info_005', 'J-123456785', 80);

--Insercion en la relacion Software_Cajeros

INSERT INTO Software_Cajeros VALUES('1.1.0', 'www.documentacion-reconversion.com/version-1.1.0');
INSERT INTO Software_Cajeros VALUES('1.2.1','www.documentacion-reconversion.com/version-1.2.1');