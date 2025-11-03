/*
    LIMITANTES

    ZONA GEOGRAFICA:
    DEPARTAMENTO
    MUNICIPIO
    DISTRITO

    SERVICIOS:
    CONSULTAS MEDICAS
    PROCEDIMIENTOS AMBULATORIOS
    EXAMENES DE LABORATORIO
    DIAGNOSTICO

    SEGUROS:
    ASEGURADORA
    COBERTURA (MONTO)
    SERVICIOS ASEGURADOS
*/

SET AUTOCOMMIT ON;

/*
* TABLA DEPARTAMENTOS
*/
INSERT INTO departamentos (id_departamento, nombre) VALUES(1, 'Ahuachapán');
INSERT INTO departamentos (id_departamento, nombre) VALUES(2, 'Santa Ana');
INSERT INTO departamentos (id_departamento, nombre) VALUES(3, 'Sonsonate');
INSERT INTO departamentos (id_departamento, nombre) VALUES(4, 'Chalatenango');
INSERT INTO departamentos (id_departamento, nombre) VALUES(5, 'La Libertad');
INSERT INTO departamentos (id_departamento, nombre) VALUES(6, 'San Salvador');
INSERT INTO departamentos (id_departamento, nombre) VALUES(7, 'Cuscatlán');
INSERT INTO departamentos (id_departamento, nombre) VALUES(8, 'La Paz');
INSERT INTO departamentos (id_departamento, nombre) VALUES(9, 'Cabañas');
INSERT INTO departamentos (id_departamento, nombre) VALUES(10, 'San Vicente');
INSERT INTO departamentos (id_departamento, nombre) VALUES(11, 'Usulután');
INSERT INTO departamentos (id_departamento, nombre) VALUES(12, 'San Miguel');
INSERT INTO departamentos (id_departamento, nombre) VALUES(13, 'Morazán');
INSERT INTO departamentos (id_departamento, nombre) VALUES(14, 'La Unión');

/*
* TABLA MUNICIPIOS
*/
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (1, 'Ahuachapán Centro', 1);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (2, 'Ahuachapán Norte', 1);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (3, 'Ahuachapán Sur', 1);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (4, 'Santa Ana Centro', 2);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (5, 'Santa Ana Este', 2);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (6, 'Santa Ana Norte', 2);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (7, 'Santa Ana Oeste', 2);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (8, 'Sonsonate Centro', 3);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (9, 'Sonsonate Este', 3);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (10, 'Sonsonate Norte', 3);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (11, 'Sonsonate Oeste', 3);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (12, 'Chalatenango Centro', 4);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (13, 'Chalatenango Norte', 4);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (14, 'Chalatenango Sur', 4);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (15, 'La Libertad Centro', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (16, 'La Libertad Costa', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (17, 'La Libertad Este', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (18, 'La Libertad Norte', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (19, 'La Libertad Oeste', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (20, 'La Libertad Sur', 5);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (21, 'San Salvador Centro', 6);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (22, 'San Salvador Este', 6);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (23, 'San Salvador Norte', 6);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (24, 'San Salvador Oeste', 6);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (25,  'San Salvador Sur', 6);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (26,  'Cuscatlán Norte', 7);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (27,  'Cuscatlán Sur', 7);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (28,  'La Paz Centro', 8);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (29,  'La Paz Este', 8);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (30,  'La Paz Oeste', 8);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (31,  'Cabañas Este', 9);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (32,  'Cabañas Oeste', 9);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (33,  'San Vicente Norte', 10);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (34,  'San Vicente Sur', 10);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (35,  'Usulután Este', 11);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (36,  'Usulután Norte', 11);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (37,  'Usulután Oeste', 11);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (38,  'San Miguel Centro', 12);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (39,  'San Miguel Norte', 12);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (40,  'San Miguel Oeste', 12);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (41,  'Morazán Norte', 13);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (42,  'Morazán Sur', 13);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (43,  'La Unión Norte', 14);
INSERT INTO municipios (id_municipio, nombre, id_departamento) VALUES (44,  'La Unión Sur', 14);

/*
* TABLA DISTRITOS
*/
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ahuachapán', 1);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Apaneca', 1);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Concepción de Ataco', 1);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tacuba', 1);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Atiquizaya', 2);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Refugio', 2);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Lorenzo', 2);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Turín', 2);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Guaymango', 3);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jujutla', 3);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Menéndez', 3);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Pedro Puxtla', 3);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Ana', 4);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Coatepeque', 5);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Congo', 5);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Masahuat', 6);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Metapán', 6);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Rosa Guachipilín', 6);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Texistepeque', 6);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Candelaria de la Frontera', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chalchuapa', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Porvenir', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio Pajonal', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Sebastián Salitrillo', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santiago de la Frontera', 7);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nahulingo', 8);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio del Monte', 8);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santo Domingo de Guzmán', 8);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sonsonate', 8);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sonzacate', 8);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Armenia', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Caluco', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cuisnahuat', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Isabel Ishuatán', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Izalco', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Julián', 9);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Juayúa', 10);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nahuizalco', 10);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Salcoatitán', 10);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Catarina Masahuat', 10);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Acajutla', 11);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Agua Caliente', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Dulce Nombre de María', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Paraíso', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de La Reina', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Concepción', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Fernando', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Morazán', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Rafael', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Rita', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tejutla', 12);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Citalá', 13);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Ignacio', 13);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de La Palma', 13);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Arcatao', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Azacualpa', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Comalapa', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Concepción Quezaltepeque', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chalatenango', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Carrizal', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de La Laguna', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Las Vueltas', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nombre de Jesús', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Trinidad', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ojos de Agua', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Potonico', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio de la Cruz', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio Los Ranchos', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Isidro Labrador', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Lempa', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San José Cancasque', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San José Las Flores', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Luis del Carmen', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Miguel de Mercedes', 14);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ciudad Arce', 15);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Juan Opico', 15);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chiltiupán', 16);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jicalapa', 16);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de La Libertad', 16);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tamanique', 16);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Teotepeque', 16);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Antiguo Cuscatlán', 17);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Huizúcar', 17);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nuevo Cuscatlán', 17);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San José Villanueva', 17);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Zaragoza', 17);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Quezaltepeque', 18);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Matías', 18);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Pablo Tacachico', 18);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Colón', 19);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jayaque', 19);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sacacoyo', 19);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Talnique', 19);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tepecoyo', 19);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Comasagua', 20);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Tecla', 20);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ayutuxtepeque', 21);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cuscatancingo', 21);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Mejicanos', 21);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Salvador', 21);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Delgado', 21);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ilopango', 22);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Martín', 22);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Soyapango', 22);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tonacatepeque', 22);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Aguilares', 23);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Paisnal', 23);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Guazapa', 23);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Apopa', 24);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nejapa', 24);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Panchimalco', 25);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Rosario de Mora', 25);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Marcos', 25);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santiago Texacuangos', 25);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santo Tomás', 25);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Oratorio de Concepción', 26);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Bartolomé Perulapía', 26);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San José Guayabal', 26);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Pedro Perulapán', 26);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Suchitoto', 26);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Candelaria', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cojutepeque', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Carmen', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Rosario', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Monte San Juan', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Cristóbal', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Rafael Cedros', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Ramón', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Cruz Analquito', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Cruz Michapa', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tenancingo', 27);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Rosario', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jerusalén', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Mercedes La Ceiba', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Paraíso de Osorio', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio Masahuat', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Emigdio', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Juan Tepezontes', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Miguel Tepezontes', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Pedro Nonualco', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa María Ostuma', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santiago Nonualco', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Luis La Herradura', 28);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Juan Nonualco', 29);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Rafael Obrajuelo', 29);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Zacatecoluca', 29);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cuyultitán', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Olocuilta', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Chinameca', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Juan Talpa', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Luis Talpa', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Pedro Masahuat', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tapalhuaca', 30);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Dolores', 31);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Guacotecti', 31);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Isidro', 31);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sensuntepeque', 31);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Victoria', 31);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cinquera', 32);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ilobasco', 32);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jutiapa', 32);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tejutepeque', 32);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Apastepeque', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Esteban Catarina', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Ildefonso', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Lorenzo', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Sebastián', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Clara', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santo Domingo', 33);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Guadalupe', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Cayetano Istepeque', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Vicente', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tecoluca', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tepetitán', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Verapaz', 34);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de California', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Concepción Batres', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ereguayquín', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jucuarán', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ozatlán', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Usulután', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Dionisio', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Elena', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa María', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Tecapán', 35);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Alegría', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Berlín', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Triunfo', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Estanzuelas', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jucuapa', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Mercedes Umaña', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Granada', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Granada', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santiago de María', 36);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jiquilisco', 37);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Puerto El Triunfo', 37);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Agustín', 37);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Javier', 37);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Comacarán', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Moncagua', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chirilagua', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Quelepa', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Miguel', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Uluazapa', 38);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Carolina', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Ciudad Barrios', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chapeltique', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nuevo Edén de San Juan', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Antonio del Mosco', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Gerardo', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Luis de La Reina', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sesori', 39);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chinameca', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Tránsito', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Lolotique', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Guadalupe', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Jorge', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Rafael Oriente', 40);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Arambala', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Cacaopera', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Corinto', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Rosario', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Joateca', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jocoaitique', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Meanguera', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Perquín', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Fernando', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Isidro', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Torola', 41);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Chilanga', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Delicias de Concepción', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Divisadero', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Gualococti', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Guatajiagua', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Jocoro', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Lolotiquillo', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Osicala', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Carlos', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Francisco Gotera', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Simón', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sensembra', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Sociedad', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Yamabal', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Yoloaiquín', 42);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Anamorós', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Bolívar', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Concepción de Oriente', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Sauce', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Lislique', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Nueva Esparta', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Pasaquina', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Polorós', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San José La Fuente', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Santa Rosa de Lima', 43);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Conchagua', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de El Carmen', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Intipucá', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de La Unión', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Meanguera del Golfo', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de San Alejo', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Yayantique', 44);
INSERT INTO distritos (nombre, id_municipio) VALUES ('Distrito de Yucuaiquín', 44);

/*
* TABLA DIAGNOSTICOS
*/
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A00', 'Cólera');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A01', 'Fiebres tifoidea y paratifoidea');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A09', 'Diarrea y gastroenteritis de presunto origen infeccioso');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('B20', 'Enfermedad por virus de la inmunodeficiencia humana [VIH]');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('B24', 'Enfermedad por VIH, sin otra especificación');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('C34', 'Neoplasia maligna de bronquios y pulmón');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('C50', 'Neoplasia maligna de la mama');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('E11', 'Diabetes mellitus tipo 2');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('E66', 'Obesidad');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('F32', 'Episodio depresivo');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('F41', 'Otros trastornos de ansiedad');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('G40', 'Epilepsia');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('I10', 'Hipertensión esencial (primaria)');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('I21', 'Infarto agudo de miocardio');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('J18', 'Neumonía, organismo no especificado');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('J45', 'Asma');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('K35', 'Apendicitis aguda');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('K70', 'Enfermedad alcohólica del hígado');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('N18', 'Enfermedad renal crónica');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('N39', 'Infección del tracto urinario, sitio no especificado');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('Z00', 'Examen médico general de rutina');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('Z23', 'Necesidad de inmunización contra una sola enfermedad bacteriana');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A00.1', 'Cólera');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A01.1', 'Fiebres tifoidea y paratifoidea');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('A09.1', 'Diarrea y gastroenteritis de presunto origen infeccioso');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('B20.1', 'Enfermedad por virus de la inmunodeficiencia humana [VIH]');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('B24.1', 'Enfermedad por VIH, sin otra especificación');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('C34.1', 'Neoplasia maligna de bronquios y pulmón');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('C50.1', 'Neoplasia maligna de la mama');
INSERT INTO cie10_diagnosticos (codigo, descripcion) VALUES ('E11.1', 'Diabetes mellitus tipo 2');

/*
* TABLA INSUMOS
*/
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Paracetamol 500mg', 'Analgésico y antipirético', 'Caja', 5.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Ibuprofeno 400mg', 'Antiinflamatorio y analgésico', 'Caja', 8.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Amoxicilina 500mg', 'Antibiótico de amplio espectro', 'Caja', 12.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Metformina 850mg', 'Medicamento para la diabetes tipo 2', 'Caja', 10.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Loratadina 10mg', 'Antihistamínico para alergias', 'Caja', 7.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Omeprazol 20mg', 'Inhibidor de la bomba de protones para acidez estomacal', 'Caja', 15.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Salbutamol Inhalador', 'Broncodilatador para asma y EPOC', 'Unidad', 25.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Hidrocortisona Crema 1%', 'Corticosteroide tópico para inflamación de la piel', 'Frasco', 6.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Clorfeniramina 4mg', 'Antihistamínico para alergias', 'Caja', 4.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Diclofenaco 50mg', 'Antiinflamatorio y analgésico', 'Caja', 9.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Aspirina 100mg', 'Antiplaquetario y analgésico', 'Caja', 5.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Ciprofloxacino 500mg', 'Antibiótico para infecciones bacterianas', 'Caja', 14.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Ranitidina 150mg', 'Bloqueador H2 para acidez estomacal', 'Caja', 11.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Furosemida 40mg', 'Diurético para hipertensión y edema', 'Caja', 13.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Clonazepam 0.5mg', 'Ansiolítico y anticonvulsivo', 'Caja', 20.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Levotiroxina 50mcg', 'Hormona tiroidea para hipotiroidismo', 'Caja', 18.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Prednisona 20mg', 'Corticosteroide para inflamación y alergias', 'Caja', 16.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Metoprolol 50mg', 'Betabloqueante para hipertensión y arritmias', 'Caja', 22.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Amlodipino 5mg', 'Calcioantagonista para hipertensión', 'Caja', 19.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Atorvastatina 20mg', 'Estatina para reducir colesterol', 'Caja', 30.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Losartán 50mg', 'Antagonista de los receptores de angiotensina II para hipertensión', 'Caja', 25.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Guantes de látex', 'Guantes desechables para uso médico', 'caja', 5.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Alcohol etílico 70%', 'Solución desinfectante', 'frasco', 3.25);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Jeringas 5ml', 'Jeringas estériles con aguja', 'unidad', 0.45);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Mascarillas quirúrgicas', 'Mascarillas de tres capas', 'caja', 8.90);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Termómetro digital', 'Termómetro clínico de lectura rápida', 'unidad', 12.75);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Gasas estériles', 'Paquete de gasas para curaciones', 'paquete', 2.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Suero fisiológico 0.9%', 'Solución salina para uso médico', 'frasco', 1.95);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Tijeras quirúrgicas', 'Instrumento metálico esterilizable', 'unidad', 15.60);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Bata desechable', 'Bata protectora de un solo uso', 'unidad', 2.10);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Venda elástica', 'Venda para compresión y sujeción', 'rollo', 1.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Algodón hidrófilo', 'Bola de algodón para uso médico', 'bolsa', 1.20);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cinta adhesiva médica', 'Cinta para sujeción de gasas', 'rollo', 0.95);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Agujas hipodérmicas', 'Agujas estériles desechables', 'paquete', 2.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Antiséptico yodado', 'Solución de povidona yodada', 'frasco', 3.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Esparadrapo', 'Cinta adhesiva de tela para curaciones', 'rollo', 0.75);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cubrebocas N95', 'Mascarilla de alta protección', 'unidad', 4.90);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Guantes de nitrilo', 'Guantes resistentes a químicos', 'caja', 6.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Oxímetro de pulso', 'Medidor de saturación de oxígeno', 'unidad', 25.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Estetoscopio', 'Instrumento para auscultación médica', 'unidad', 30.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Tensiómetro digital', 'Medidor automático de presión arterial', 'unidad', 45.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cubre zapatos', 'Protector desechable para calzado', 'par', 0.60);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Gorro quirúrgico', 'Gorro desechable para cirugía', 'unidad', 0.40);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Campo quirúrgico', 'Tela estéril para procedimientos', 'unidad', 1.90);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cinta métrica médica', 'Cinta flexible para medición corporal', 'unidad', 2.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Hisopos estériles', 'Bastoncillos para limpieza médica', 'paquete', 1.70);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Compresas frías', 'Compresas reutilizables para inflamaciones', 'unidad', 3.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Compresas calientes', 'Bolsas térmicas reutilizables', 'unidad', 3.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Pinzas hemostáticas', 'Instrumento para control de sangrado', 'unidad', 18.40);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Abatelenguas', 'Paletas de madera estériles', 'paquete', 1.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cubre camillas', 'Sábanas desechables protectoras', 'unidad', 1.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Alcohol isopropílico', 'Desinfectante para equipos médicos', 'frasco', 4.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Bolsa para desechos biológicos', 'Bolsa roja resistente para residuos médicos', 'unidad', 0.70);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Toallas desinfectantes', 'Paños impregnados con alcohol', 'paquete', 2.40);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Gel antibacterial', 'Gel a base de alcohol', 'frasco', 1.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cubre bocas infantil', 'Mascarilla para niños', 'caja', 6.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Lubricante médico', 'Gel transparente para exámenes', 'tubo', 1.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Sonda nasogástrica', 'Tubo flexible para alimentación o drenaje', 'unidad', 2.20);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Sonda vesical', 'Catéter urinario de látex', 'unidad', 2.50);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Bisturí desechable', 'Cuchilla quirúrgica estéril', 'unidad', 1.10);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Apositos adhesivos', 'Curitas para heridas pequeñas', 'caja', 2.30);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Tapones auditivos', 'Protectores de oído de espuma', 'par', 0.90);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Bolsas de suero', 'Bolsas plásticas para administración de líquidos', 'unidad', 1.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Equipo de venoclisis', 'Equipo para infusión intravenosa', 'unidad', 2.10);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cánula nasal', 'Tubo para oxigenoterapia', 'unidad', 1.40);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Guantes quirúrgicos estériles', 'Guantes para procedimientos invasivos', 'par', 3.20);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Férula inmovilizadora', 'Dispositivo rígido para extremidades', 'unidad', 12.00);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Tubo endotraqueal', 'Tubo para intubación', 'unidad', 3.80);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cinta hipoalergénica', 'Cinta adhesiva para piel sensible', 'rollo', 1.10);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Compresa quirúrgica', 'Paquete de compresas estériles', 'paquete', 4.10);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Bolsa de colostomía', 'Dispositivo para recolección de desechos intestinales', 'unidad', 5.70);
INSERT INTO trx_insumos (nombre, descripcion, unidad_medida, precio_unitario) VALUES ('Cubre bisturí', 'Protector plástico para bisturís', 'unidad', 0.85);

/*
* TABLA PACIENTES
*/
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Carlos Hernández', 'M', TO_DATE('1985-03-12', 'YYYY-MM-DD'), '+503 70123456', 'carlos.hernandez@example.com', 'Col. Escalón, San Salvador', 12);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('María López', 'F', TO_DATE('1990-07-25', 'YYYY-MM-DD'), '+503 72114589', 'maria.lopez@example.com', 'Barrio El Centro, Santa Ana', 45);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('José Martínez', 'M', TO_DATE('1978-11-02', 'YYYY-MM-DD'), '+503 78453210', 'jose.martinez@example.com', 'Res. Los Héroes, San Miguel', 78);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Ana Rivera', 'F', TO_DATE('2001-05-14', 'YYYY-MM-DD'), '+503 75648790', 'ana.rivera@example.com', 'Col. San Benito, San Salvador', 20);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Luis Torres', 'M', TO_DATE('1995-02-28', 'YYYY-MM-DD'), '+503 70985623', 'luis.torres@example.com', 'Barrio Concepción, Sonsonate', 67);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Sofía Castillo', 'F', TO_DATE('1988-09-17', 'YYYY-MM-DD'), '+503 71546389', 'sofia.castillo@example.com', 'Cantón El Progreso, Usulután', 131);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Fernando Rivas', 'M', TO_DATE('1967-12-05', 'YYYY-MM-DD'), '+503 73487521', 'fernando.rivas@example.com', 'Col. Miramonte, San Salvador', 18);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Gabriela Pineda', 'F', TO_DATE('2000-04-10', 'YYYY-MM-DD'), '+503 70114785', 'gabriela.pineda@example.com', 'Res. Altavista, Ilopango', 22);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Ricardo López', 'M', TO_DATE('1973-06-30', 'YYYY-MM-DD'), '+503 71326547', 'ricardo.lopez@example.com', 'Cantón El Nance, La Unión', 210);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Daniela Aguilar', 'F', TO_DATE('1998-01-19', 'YYYY-MM-DD'), '+503 76985410', 'daniela.aguilar@example.com', 'Col. Santa Clara, San Vicente', 156);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Héctor Flores', 'M', TO_DATE('1991-10-23', 'YYYY-MM-DD'), '+503 73112584', 'hector.flores@example.com', 'Barrio Lourdes, Chalatenango', 188);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Patricia Gómez', 'F', TO_DATE('1983-02-14', 'YYYY-MM-DD'), '+503 72567890', 'patricia.gomez@example.com', 'Res. Los Alpes, Santa Tecla', 34);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Mario Sánchez', 'M', TO_DATE('1999-09-09', 'YYYY-MM-DD'), '+503 70125647', 'mario.sanchez@example.com', 'Col. Médica, San Salvador', 19);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Carmen López', 'F', TO_DATE('1975-11-11', 'YYYY-MM-DD'), '+503 73254109', 'carmen.lopez@example.com', 'Barrio El Calvario, Ahuachapán', 55);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Nelson Cruz', 'M', TO_DATE('1982-07-21', 'YYYY-MM-DD'), '+503 71485930', 'nelson.cruz@example.com', 'Cantón Santa Lucía, Cuscatlán', 97);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Rosa Morales', 'F', TO_DATE('1965-01-09', 'YYYY-MM-DD'), '+503 76987412', 'rosa.morales@example.com', 'Col. Flor Blanca, San Salvador', 10);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('David Pérez', 'M', TO_DATE('2004-05-03', 'YYYY-MM-DD'), '+503 70895647', 'david.perez@example.com', 'Res. San Gabriel, Apopa', 27);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Jessica Molina', 'F', TO_DATE('1987-08-30', 'YYYY-MM-DD'), '+503 73458791', 'jessica.molina@example.com', 'Barrio Candelaria, San Vicente', 150);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Eduardo Navarro', 'M', TO_DATE('1971-04-28', 'YYYY-MM-DD'), '+503 70147896', 'eduardo.navarro@example.com', 'Col. Las Margaritas, Mejicanos', 25);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Lucía Delgado', 'F', TO_DATE('1993-03-15', 'YYYY-MM-DD'), '+503 75124897', 'lucia.delgado@example.com', 'Res. Los Chorros, La Libertad', 39);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Óscar Ramírez', 'M', TO_DATE('1980-12-10', 'YYYY-MM-DD'), '+503 71236598', 'oscar.ramirez@example.com', 'Col. San Antonio, San Miguel', 75);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Claudia Torres', 'F', TO_DATE('1996-09-05', 'YYYY-MM-DD'), '+503 70984523', 'claudia.torres@example.com', 'Col. Santa Eugenia, Soyapango', 23);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Roberto Ayala', 'M', TO_DATE('1977-06-02', 'YYYY-MM-DD'), '+503 71547890', 'roberto.ayala@example.com', 'Barrio San Juan, San Vicente', 157);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Isabel Jiménez', 'F', TO_DATE('1992-10-16', 'YYYY-MM-DD'), '+503 72014589', 'isabel.jimenez@example.com', 'Col. Altos de la Cima, San Salvador', 17);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Julio Peña', 'M', TO_DATE('1984-02-12', 'YYYY-MM-DD'), '+503 73785410', 'julio.pena@example.com', 'Cantón San José, La Paz', 122);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Verónica López', 'F', TO_DATE('1970-03-07', 'YYYY-MM-DD'), '+503 76895410', 'veronica.lopez@example.com', 'Res. Primavera, Santa Ana', 47);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Kevin Aguilar', 'M', TO_DATE('1997-12-01', 'YYYY-MM-DD'), '+503 70897541', 'kevin.aguilar@example.com', 'Col. Ciudad Real, Santa Tecla', 36);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Paola Fuentes', 'F', TO_DATE('1994-08-19', 'YYYY-MM-DD'), '+503 71234785', 'paola.fuentes@example.com', 'Barrio San Rafael, Usulután', 130);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Hugo Gutiérrez', 'M', TO_DATE('1989-11-27', 'YYYY-MM-DD'), '+503 70128459', 'hugo.gutierrez@example.com', 'Col. Guadalupe, La Libertad', 33);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Laura Hernández', 'F', TO_DATE('2003-07-30', 'YYYY-MM-DD'), '+503 76984510', 'laura.hernandez@example.com', 'Cantón El Rosario, San Vicente', 161);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Miguel Vega', 'M', TO_DATE('1974-05-23', 'YYYY-MM-DD'), '+503 73485921', 'miguel.vega@example.com', 'Col. Escalón, San Salvador', 14);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Natalia Cabrera', 'F', TO_DATE('1986-01-08', 'YYYY-MM-DD'), '+503 71325896', 'natalia.cabrera@example.com', 'Col. San Francisco, Mejicanos', 26);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Andrés Cruz', 'M', TO_DATE('1995-09-11', 'YYYY-MM-DD'), '+503 70147852', 'andres.cruz@example.com', 'Barrio La Vega, Chalatenango', 190);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Carolina Pérez', 'F', TO_DATE('1999-04-02', 'YYYY-MM-DD'), '+503 75648795', 'carolina.perez@example.com', 'Col. Buenos Aires, La Unión', 218);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Raúl Castro', 'M', TO_DATE('1969-08-15', 'YYYY-MM-DD'), '+503 72145890', 'raul.castro@example.com', 'Cantón El Porvenir, Sonsonate', 63);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Elena Mendoza', 'F', TO_DATE('1981-10-10', 'YYYY-MM-DD'), '+503 70987410', 'elena.mendoza@example.com', 'Res. Loma Linda, Santa Tecla', 35);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Francisco Delgado', 'M', TO_DATE('1990-11-28', 'YYYY-MM-DD'), '+503 71458963', 'francisco.delgado@example.com', 'Barrio El Rosario, San Miguel', 72);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Silvia Mejía', 'F', TO_DATE('1976-06-19', 'YYYY-MM-DD'), '+503 70214589', 'silvia.mejia@example.com', 'Col. Centroamérica, San Salvador', 15);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Manuel Ortiz', 'M', TO_DATE('1985-12-03', 'YYYY-MM-DD'), '+503 70587410', 'manuel.ortiz@example.com', 'Res. Jardines del Volcán, San Juan Opico', 40);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Andrea Ramos', 'F', TO_DATE('1991-05-08', 'YYYY-MM-DD'), '+503 70784510', 'andrea.ramos@example.com', 'Cantón El Limón, La Paz', 124);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Felipe Morales', 'M', TO_DATE('1979-07-22', 'YYYY-MM-DD'), '+503 73215489', 'felipe.morales@example.com', 'Col. San Patricio, San Salvador', 13);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Lidia Romero', 'F', TO_DATE('1982-02-13', 'YYYY-MM-DD'), '+503 71123659', 'lidia.romero@example.com', 'Col. La Gloria, Soyapango', 24);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Álvaro Herrera', 'M', TO_DATE('1968-09-17', 'YYYY-MM-DD'), '+503 70415892', 'alvaro.herrera@example.com', 'Barrio San Pedro, Santa Ana', 50);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Cecilia Flores', 'F', TO_DATE('2005-03-20', 'YYYY-MM-DD'), '+503 75147896', 'cecilia.flores@example.com', 'Col. El Carmen, Chalatenango', 185);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Raúl Meléndez', 'M', TO_DATE('1972-11-24', 'YYYY-MM-DD'), '+503 70784590', 'raul.melendez@example.com', 'Res. Loma Verde, San Vicente', 160);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Viviana Serrano', 'F', TO_DATE('1997-06-06', 'YYYY-MM-DD'), '+503 76984120', 'viviana.serrano@example.com', 'Col. Montecarmelo, Santa Tecla', 38);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Rodrigo Campos', 'M', TO_DATE('1994-01-31', 'YYYY-MM-DD'), '+503 70598410', 'rodrigo.campos@example.com', 'Barrio El Ángel, San Salvador', 16);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Gloria Navarro', 'F', TO_DATE('1980-04-12', 'YYYY-MM-DD'), '+503 70965412', 'gloria.navarro@example.com', 'Cantón San Rafael, Cuscatlán', 102);
INSERT INTO trx_pacientes (nombre, sexo, fecha_nacimiento, telefono, email, direccion, id_distrito) VALUES ('Tomás Reyes', 'M', TO_DATE('1988-08-08', 'YYYY-MM-DD'), '+503 71546980', 'tomas.reyes@example.com', 'Res. Santa Teresa, San Miguel', 76);

/*
* TABLA CONTACTOS EMERGENCIA
*/
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (1, 'Marta Hernández', '+503 71123456', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (2, 'Luis López', '+503 72458963', 'Esposo');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (3, 'Carmen Martínez', '+503 70987410', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (4, 'José Rivera', '+503 73214785', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (5, 'Claudia Torres', '+503 75147890', 'Hermana');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (6, 'Ricardo Castillo', '+503 70125896', 'Esposo');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (7, 'Elena Rivas', '+503 70321459', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (8, 'Carlos Pineda', '+503 70658947', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (9, 'Marta López', '+503 71245896', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (10, 'Jorge Aguilar', '+503 73124589', 'Hermano');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (11, 'Rosa Flores', '+503 70963258', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (12, 'Fernando Gómez', '+503 70124578', 'Esposo');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (13, 'Gabriela Sánchez', '+503 75147852', 'Hermana');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (14, 'Luis López', '+503 73458910', 'Esposo');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (15, 'Carlos Cruz', '+503 70214587', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (16, 'María Morales', '+503 70789654', 'Hermana');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (17, 'Andrea Pérez', '+503 71548960', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (18, 'Miguel Molina', '+503 70895410', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (19, 'Sandra Navarro', '+503 73321458', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (20, 'José Delgado', '+503 70458963', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (21, 'Patricia Ramírez', '+503 70987514', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (22, 'Héctor Torres', '+503 70658974', 'Esposo');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (23, 'Lucía Ayala', '+503 71345890', 'Hermana');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (24, 'Carlos Jiménez', '+503 75124689', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (25, 'Rosa Peña', '+503 73214589', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (26, 'Eduardo López', '+503 70147859', 'Hermano');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (27, 'Lorena Aguilar', '+503 70895478', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (28, 'Jorge Fuentes', '+503 73458971', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (29, 'Ana Gutiérrez', '+503 71547890', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (30, 'Luis Hernández', '+503 70984752', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (31, 'Rosa Vega', '+503 72147895', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (32, 'Carlos Cabrera', '+503 70325894', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (33, 'María Cruz', '+503 70965412', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (34, 'Elena Pérez', '+503 71589632', 'Hermana');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (35, 'Miguel Castro', '+503 70214895', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (36, 'José Mendoza', '+503 73124789', 'Hermano');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (37, 'Claudia Delgado', '+503 70785963', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (38, 'Daniel Mejía', '+503 70632589', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (39, 'Carmen Ortiz', '+503 70984561', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (40, 'Rafael Ramos', '+503 73458941', 'Hermano');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (41, 'Lidia Morales', '+503 71547896', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (42, 'Carlos Romero', '+503 70147892', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (43, 'Esteban Herrera', '+503 70458912', 'Hermano');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (44, 'Marta Flores', '+503 70986547', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (45, 'Pedro Meléndez', '+503 73215489', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (46, 'Gabriela Serrano', '+503 75147896', 'Esposa');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (47, 'Julio Campos', '+503 70896541', 'Padre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (48, 'Rosa Navarro', '+503 71587410', 'Madre');
INSERT INTO contactos_emergencia (id_paciente, nombre, telefono, relacion) VALUES (49, 'Héctor Reyes', '+503 70985410', 'Hermano');

/*
* TABLA ESPECIALIDADES
*/
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Medicina General', 'Atención primaria y general de salud');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Internista', 'Diagnóstico y tratamiento de enfermedades internas');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Pediatría', 'Atención médica para niños y adolescentes');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Ginecología y Obstetricia', 'Salud femenina, embarazo y parto');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Cardiología', 'Enfermedades del corazón y sistema circulatorio');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Dermatología', 'Enfermedades de la piel');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Neurología', 'Trastornos del sistema nervioso');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Ortopedia', 'Enfermedades del sistema musculoesquelético');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Psiquiatría', 'Trastornos mentales y emocionales');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Oftalmología', 'Enfermedades de los ojos y visión');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Otorrinolaringología', 'Enfermedades de oído, nariz y garganta');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Endocrinología', 'Trastornos hormonales y metabólicos');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Gastroenterología', 'Enfermedades del sistema digestivo');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Nefrología', 'Enfermedades de los riñones');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Urología', 'Enfermedades del sistema urinario y reproductor masculino');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Oncología', 'Diagnóstico y tratamiento del cáncer');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Reumatología', 'Enfermedades reumáticas y autoinmunes');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Hematología', 'Trastornos de la sangre');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Infectología', 'Enfermedades infecciosas y tropicales');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Cirugía General', 'Procedimientos quirúrgicos generales');
INSERT INTO trx_especialidades (nombre, descripcion) VALUES ('Cirugía Plástica y Reconstructiva', 'Cirugía estética y reconstructiva');

/*
* TABLA MEDICOS
*/
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Carlos Hernández', 'MED-0001', 'Av. Roosevelt #123, San Salvador', '+503 70123456', 'chernandez@hospitalcentral.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Ana María López', 'MED-0002', 'Col. Escalón, Calle El Mirador, San Salvador', '+503 71234567', 'amlopez@saludsv.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Jorge Ramírez', 'MED-0003', 'Residencial Altavista, Soyapango', '+503 72345678', 'jramirez@hospitalvida.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Patricia Aguilar', 'MED-0004', 'Col. Médica, San Salvador', '+503 73456789', 'paguilar@hospitalsv.org');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Luis Fernando Pérez', 'MED-0005', 'Santa Tecla, La Libertad', '+503 74567890', 'lfperez@medicoslibertad.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Carmen Rivas', 'MED-0006', 'Col. Miramonte, San Salvador', '+503 75678901', 'crivas@hospitalcentro.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Ricardo González', 'MED-0007', 'San Miguel Centro', '+503 76789012', 'rgonzalez@sanmiguelsalud.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Verónica Torres', 'MED-0008', 'Col. San Benito, San Salvador', '+503 77890123', 'vtorres@hospitalelite.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. José Antonio Cruz', 'MED-0009', 'Col. Médica, San Salvador', '+503 78901234', 'jacruz@medicosunidos.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Gabriela López', 'MED-0010', 'Santa Ana Centro', '+503 79012345', 'glopez@santaanahealth.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Ernesto Mejía', 'MED-0011', 'Col. Escalón, San Salvador', '+503 70124578', 'emejia@saludtotal.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Silvia Castillo', 'MED-0012', 'San Vicente Centro', '+503 71235689', 'scastillo@sanvicentemed.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Alejandro Flores', 'MED-0013', 'Usulután Centro', '+503 72346790', 'aflores@usulutansalud.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Daniela Pineda', 'MED-0014', 'Col. Médica, San Salvador', '+503 73457891', 'dpineda@hospitalmetropolitano.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Óscar Martínez', 'MED-0015', 'Mejicanos, San Salvador', '+503 74568902', 'omartinez@saludsv.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Teresa Campos', 'MED-0016', 'Col. San Francisco, San Salvador', '+503 75679013', 'tcampos@hospitalcentenario.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Mario Reyes', 'MED-0017', 'Apopa Centro', '+503 76780124', 'mreyes@hospitalnorte.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Claudia Navarro', 'MED-0018', 'Col. Layco, San Salvador', '+503 77891235', 'cnavarro@hospitalmedlife.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Juan Carlos Morales', 'MED-0019', 'San Marcos, San Salvador', '+503 78902346', 'jcmorales@medicossalud.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Beatriz Alfaro', 'MED-0020', 'Santa Tecla, La Libertad', '+503 79013457', 'balfaro@hospitaltecla.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Roberto Vásquez', 'MED-0021', 'Col. Escalón, San Salvador', '+503 70124589', 'rvasquez@hospitalsv.org');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Karla Molina', 'MED-0022', 'San Miguel Centro', '+503 71235690', 'kmolina@sanmiguelsalud.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Julio Cañas', 'MED-0023', 'Col. Médica, San Salvador', '+503 72346701', 'jcanas@hospitalroosevelt.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Verónica Campos', 'MED-0024', 'Santa Ana Centro', '+503 73457812', 'vcampos@santaanahealth.com');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Eduardo Serrano', 'MED-0025', 'Col. Miramonte, San Salvador', '+503 74568923', 'eserrano@hospitalcentro.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Rosa Hernández', 'MED-0026', 'Col. Escalón, San Salvador', '+503 75679034', 'rhernandez@saludplus.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Daniel Ruiz', 'MED-0027', 'Sonsonate Centro', '+503 76780145', 'druiz@sonsonatesalud.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Laura Cabrera', 'MED-0028', 'Col. Médica, San Salvador', '+503 77891256', 'lcabrera@hospitalsv.org');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dr. Mauricio Barahona', 'MED-0029', 'Col. San Benito, San Salvador', '+503 78902367', 'mbarahona@hospitalelite.sv');
INSERT INTO trx_medicos (nombre, numero_registro, direccion, telefono, email) VALUES ('Dra. Paola Herrera', 'MED-0030', 'Zacatecoluca Centro', '+503 79013478', 'pherrera@zacasalud.sv');

/*
* TABLA MEDICOS ESPECIALIDADES
*/
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (1, 1);  -- Dr. Carlos Hernández - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (1, 5);  -- Dr. Carlos Hernández - Cardiología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (2, 1);  -- Dra. Ana María López - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (2, 4);  -- Dra. Ana María López - Ginecología y Obstetricia
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (3, 1);  -- Dr. Jorge Ramírez - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (3, 3);  -- Dr. Jorge Ramírez - Pediatría
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (4, 1);  -- Dra. Patricia Aguilar - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (4, 6);  -- Dra. Patricia Aguilar - Dermatología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (5, 1);  -- Dr. Luis Fernando Pérez - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (5, 2);  -- Dr. Luis Fernando Pérez - Internista
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (6, 1);  -- Dra. Carmen Rivas - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (6, 7);  -- Dra. Carmen Rivas - Neurología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (7, 1);  -- Dr. Ricardo González - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (7, 8);  -- Dr. Ricardo González - Ortopedia
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (8, 1);  -- Dra. Verónica Torres - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (8, 9);  -- Dra. Verónica Torres - Psiquiatría
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (9, 1);  -- Dr. José Antonio Cruz - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (9, 10); -- Dr. José Antonio Cruz - Oftalmología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (10,1);  -- Dra. Gabriela López - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (10,11); -- Dra. Gabriela López - Otorrinolaringología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (11,1);  -- Dr. Ernesto Mejía - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (11,12); -- Dr. Ernesto Mejía - Endocrinología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (12,1);  -- Dra. Silvia Castillo - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (12,13); -- Dra. Silvia Castillo - Gastroenterología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (13,1);  -- Dr. Alejandro Flores - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (13,14); -- Dr. Alejandro Flores - Nefrología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (14,1);  -- Dra. Daniela Pineda - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (14,15); -- Dra. Daniela Pineda - Urología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (15,1);  -- Dr. Óscar Martínez - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (15,16); -- Dr. Óscar Martínez - Oncología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (16,1);  -- Dra. Teresa Campos - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (16,17); -- Dra. Teresa Campos - Reumatología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (17,1);  -- Dr. Mario Reyes - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (17,18); -- Dr. Mario Reyes - Hematología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (18,1);  -- Dra. Claudia Navarro - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (18,19); -- Dra. Claudia Navarro - Infectología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (19,1);  -- Dr. Juan Carlos Morales - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (19,20); -- Dr. Juan Carlos Morales - Cirugía General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (20,1);  -- Dra. Beatriz Alfaro - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (20,21); -- Dra. Beatriz Alfaro - Cirugía Plástica y Reconstructiva
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (21,1);  -- Dr. Roberto Vásquez - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (22,1);  -- Dra. Karla Molina - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (22,3);  -- Dra. Karla Molina - Pediatría
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (23,1);  -- Dr. Julio Cañas - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (23,2);  -- Dr. Julio Cañas - Internista
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (24,1);  -- Dra. Verónica Campos - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (24,4);  -- Dra. Verónica Campos - Ginecología y Obstetricia
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (25,1);  -- Dr. Eduardo Serrano - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (25,5);  -- Dr. Eduardo Serrano - Cardiología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (26,1);  -- Dra. Rosa Hernández - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (26,6);  -- Dra. Rosa Hernández - Dermatología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (27,1);  -- Dr. Daniel Ruiz - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (27,7);  -- Dr. Daniel Ruiz - Neurología
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (28,1);  -- Dra. Laura Cabrera - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (28,8);  -- Dra. Laura Cabrera - Ortopedia
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (29,1);  -- Dr. Mauricio Barahona - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (29,9);  -- Dr. Mauricio Barahona - Psiquiatría
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (30,1);  -- Dra. Paola Herrera - Medicina General
INSERT INTO trx_medico_especialidades (id_medico, id_especialidad) VALUES (30,10); -- Dra. Paola Herrera - Oftalmología

/*
* TABLA UNIDADES
*/
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Hospital Central', 'Av. Roosevelt #123, San Salvador', 1, 'Hospital');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Clínica Santa María', 'Col. Escalón, Calle El Mirador, San Salvador', 2, 'Clínica');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Consultorio Vida', 'Residencial Altavista, Soyapango', 3, 'Consultorio');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Hospital Metropolitano', 'Col. Médica, San Salvador', 4, 'Hospital');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Clínica La Paz', 'Santa Tecla, La Libertad', 5, 'Clínica');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Hospital Centro Médico', 'Col. Miramonte, San Salvador', 6, 'Hospital');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Clínica San Miguel', 'San Miguel Centro', 7, 'Clínica');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Consultorio Elite Salud', 'Col. San Benito, San Salvador', 8, 'Consultorio');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Hospital Roosevelt', 'Col. Médica, San Salvador', 9, 'Hospital');
INSERT INTO trx_unidades (nombre, direccion, id_distrito, tipo) VALUES ('Clínica Santa Ana', 'Santa Ana Centro', 10, 'Clínica');

/*
* TABLA ASEGURADORAS
*/
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Seguros Fedecrédito', 'Departamento de Atención al Cliente', '+503 2218-7979', 'contacto@segurosfedecredito.com', '67 Avenida Sur y Avenida Olímpica #228, Colonia Escalón, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Seguros Comédica', 'PBX Seguros Comédica', '+503 2208-9000', 'contacto@seguroscomedica.com', 'Centro Financiero Comédica Edificio B, Esquina Sur Poniente entre Boulevard Constitución y prolongación Alameda Juan Pablo II, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Protege Seguros, S.A.', 'Servicio al Cliente', '+503 2245-6900', 'info@protegeseguros.com.sv', 'Millennium Plaza, Nivel 16, Paseo General Escalón #3675, Col. Escalón, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Aseguradora Suiza Salvadoreña, S.A. (Asesuisa)', 'Departamento de Información', '+503 2209-5000', 'info@asesuisa.com', 'Torre SURA, Bambú City Center, Bulevar del Hipódromo y Avenida Las Magnolias, Colonia San Benito, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('ASSA Compañía de Seguros, S.A.', 'Atención al Cliente ASSA', '+503 2278-2772', 'assaselservicio@assanet.com', 'Calle Cortez Blanco, Pasaje L #18, Urbanización Madre Selva, Tercera Etapa, Antiguo Cuscatlán, La Libertad');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Davivienda Seguros', 'Oficina Central', '+503 2567-1111', 'info@daviviendaseguros.com.sv', 'Avenida Olímpica No.3550, Centro Financiero Davivienda, 5a. Planta, Colonia Escalón, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('La Central de Seguros y Fianzas, S.A.', 'Departamento de Seguros', '+503 2268-6000', 'infoseguros@lacentral.com.sv', 'Avenida Olímpica No. 3333, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Mapfre El Salvador, S.A.', 'Call Center / Asistencia 24/7', '+503 2257-6666', 'servicioalcliente@mapfre.com.sv', 'San Salvador, El Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Aseguradora Agrícola Comercial, S.A. (ACSA)', 'Agencias ACSA', '+503 2261-8200', 'info@acsa.com.sv', '3104 Alameda Roosevelt, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Seguros Azul, S.A.', 'Línea de Atención Seguros Azul', '+503 2299-3000', 'info@segurosazul.com.sv', 'Calle Las Palmas No. 249, Colonia San Benito, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Qualitas Compañía de Seguros, S.A.', 'Calidad y Servicio', '+503 2535-9100', 'contacto@qualitasseguros.com.sv', 'San Salvador, El Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Seguros Futuro, A.C. de R.L.', 'Atención al Cliente', '+503 2239-9400', 'info@segurosfuturo.com.sv', '23 Calle Poniente y 23 Avenida Norte N° 8, Colonia Layco, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Pan American Life Insurance Company (PALIG)', 'Oficina Nacional PALIG', '+503 2209-2700', 'info@palig.com.sv', 'Edificio PALIC, Alameda Dr. Manuel Enrique Araujo and Calle Nueva No.1, Colonia Escalón, San Salvador');
INSERT INTO aseguradoras (nombre, contacto, telefono, email, direccion) VALUES ('Seguros del Pacífico, S.A.', 'Atención Seguros del Pacífico', '+503 2283-0800', 'info@segurosdelpacifico.com.sv', 'Paseo General Escalón #4334, entre la 83 y 85 Ave Norte, San Salvador');

/*
* TABLA SEGUROS
*/
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (1, 'Plan Salud Total', TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (2, 'Plan Médico Integral', TO_DATE('2025-02-01','YYYY-MM-DD'), TO_DATE('2026-01-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (3, 'Protección Familiar Plus', TO_DATE('2025-03-15','YYYY-MM-DD'), TO_DATE('2026-03-14','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (4, 'Vida Segura Premium', TO_DATE('2025-04-01','YYYY-MM-DD'), TO_DATE('2026-03-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (5, 'Auto Protect', TO_DATE('2025-01-10','YYYY-MM-DD'), TO_DATE('2026-01-09','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (6, 'Plan Vida y Hogar', TO_DATE('2025-02-20','YYYY-MM-DD'), TO_DATE('2026-02-19','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (7, 'Seguro Empresarial Global', TO_DATE('2025-03-01','YYYY-MM-DD'), TO_DATE('2026-02-28','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (8, 'Auto MAPFRE Gold', TO_DATE('2025-05-01','YYYY-MM-DD'), TO_DATE('2026-04-30','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (9, 'ACSA Salud Familiar', TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (10, 'Azul Auto Plus', TO_DATE('2025-06-01','YYYY-MM-DD'), TO_DATE('2026-05-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (11, 'Qualitas Auto Full', TO_DATE('2025-07-01','YYYY-MM-DD'), TO_DATE('2026-06-30','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (12, 'Futuro Vida Básico', TO_DATE('2025-08-01','YYYY-MM-DD'), TO_DATE('2026-07-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (13, 'PALIG Salud Premier', TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'));
INSERT INTO trx_seguros (id_aseguradora, plan, vigencia_inicio, vigencia_fin) VALUES (14, 'Pacífico Hogar Protegido', TO_DATE('2025-03-10','YYYY-MM-DD'), TO_DATE('2026-03-09','YYYY-MM-DD'));

/*
* TABLA PACIENTES SEGUROS
*/
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (1, 1, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000001', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (2, 2, TO_DATE('2025-02-01','YYYY-MM-DD'), TO_DATE('2026-01-31','YYYY-MM-DD'), 'SV-000002', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (3, 3, TO_DATE('2025-03-15','YYYY-MM-DD'), TO_DATE('2026-03-14','YYYY-MM-DD'), 'SV-000003', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (4, 4, TO_DATE('2025-04-01','YYYY-MM-DD'), TO_DATE('2026-03-31','YYYY-MM-DD'), 'SV-000004', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (5, 5, TO_DATE('2025-01-10','YYYY-MM-DD'), TO_DATE('2026-01-09','YYYY-MM-DD'), 'SV-000005', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (6, 6, TO_DATE('2025-02-20','YYYY-MM-DD'), TO_DATE('2026-02-19','YYYY-MM-DD'), 'SV-000006', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (7, 7, TO_DATE('2025-03-01','YYYY-MM-DD'), TO_DATE('2026-02-28','YYYY-MM-DD'), 'SV-000007', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (8, 8, TO_DATE('2025-05-01','YYYY-MM-DD'), TO_DATE('2026-04-30','YYYY-MM-DD'), 'SV-000008', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (9, 9, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000009', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (10, 10, TO_DATE('2025-06-01','YYYY-MM-DD'), TO_DATE('2026-05-31','YYYY-MM-DD'), 'SV-000010', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (11, 11, TO_DATE('2025-07-01','YYYY-MM-DD'), TO_DATE('2026-06-30','YYYY-MM-DD'), 'SV-000011', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (12, 12, TO_DATE('2025-08-01','YYYY-MM-DD'), TO_DATE('2026-07-31','YYYY-MM-DD'), 'SV-000012', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (13, 13, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000013', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (14, 14, TO_DATE('2025-03-10','YYYY-MM-DD'), TO_DATE('2026-03-09','YYYY-MM-DD'), 'SV-000014', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (17, 1, TO_DATE('2025-02-01','YYYY-MM-DD'), TO_DATE('2026-01-31','YYYY-MM-DD'), 'SV-000017', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (18, 2, TO_DATE('2025-02-10','YYYY-MM-DD'), TO_DATE('2026-02-09','YYYY-MM-DD'), 'SV-000018', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (19, 3, TO_DATE('2025-03-20','YYYY-MM-DD'), TO_DATE('2026-03-19','YYYY-MM-DD'), 'SV-000019', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (20, 4, TO_DATE('2025-04-10','YYYY-MM-DD'), TO_DATE('2026-04-09','YYYY-MM-DD'), 'SV-000020', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (21, 5, TO_DATE('2025-01-15','YYYY-MM-DD'), TO_DATE('2026-01-14','YYYY-MM-DD'), 'SV-000021', 'INACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (22, 6, TO_DATE('2025-02-25','YYYY-MM-DD'), TO_DATE('2026-02-24','YYYY-MM-DD'), 'SV-000022', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (23, 7, TO_DATE('2025-03-05','YYYY-MM-DD'), TO_DATE('2026-03-04','YYYY-MM-DD'), 'SV-000023', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (24, 8, TO_DATE('2025-05-15','YYYY-MM-DD'), TO_DATE('2026-05-14','YYYY-MM-DD'), 'SV-000024', 'SUSPENDIDO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (25, 9, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000025', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (26, 10, TO_DATE('2025-06-10','YYYY-MM-DD'), TO_DATE('2026-06-09','YYYY-MM-DD'), 'SV-000026', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (27, 11, TO_DATE('2025-07-05','YYYY-MM-DD'), TO_DATE('2026-07-04','YYYY-MM-DD'), 'SV-000027', 'INACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (28, 12, TO_DATE('2025-08-10','YYYY-MM-DD'), TO_DATE('2026-08-09','YYYY-MM-DD'), 'SV-000028', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (29, 13, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000029', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (30, 14, TO_DATE('2025-03-15','YYYY-MM-DD'), TO_DATE('2026-03-14','YYYY-MM-DD'), 'SV-000030', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (33, 1, TO_DATE('2025-01-05','YYYY-MM-DD'), TO_DATE('2026-01-04','YYYY-MM-DD'), 'SV-000033', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (34, 2, TO_DATE('2025-02-05','YYYY-MM-DD'), TO_DATE('2026-02-04','YYYY-MM-DD'), 'SV-000034', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (35, 3, TO_DATE('2025-03-25','YYYY-MM-DD'), TO_DATE('2026-03-24','YYYY-MM-DD'), 'SV-000035', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (36, 4, TO_DATE('2025-04-20','YYYY-MM-DD'), TO_DATE('2026-04-19','YYYY-MM-DD'), 'SV-000036', 'INACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (37, 5, TO_DATE('2025-01-20','YYYY-MM-DD'), TO_DATE('2026-01-19','YYYY-MM-DD'), 'SV-000037', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (38, 6, TO_DATE('2025-02-15','YYYY-MM-DD'), TO_DATE('2026-02-14','YYYY-MM-DD'), 'SV-000038', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (39, 7, TO_DATE('2025-03-25','YYYY-MM-DD'), TO_DATE('2026-03-24','YYYY-MM-DD'), 'SV-000039', 'SUSPENDIDO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (40, 8, TO_DATE('2025-05-10','YYYY-MM-DD'), TO_DATE('2026-05-09','YYYY-MM-DD'), 'SV-000040', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (41, 9, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000041', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (42, 10, TO_DATE('2025-06-15','YYYY-MM-DD'), TO_DATE('2026-06-14','YYYY-MM-DD'), 'SV-000042', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (43, 11, TO_DATE('2025-07-10','YYYY-MM-DD'), TO_DATE('2026-07-09','YYYY-MM-DD'), 'SV-000043', 'INACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (44, 12, TO_DATE('2025-08-20','YYYY-MM-DD'), TO_DATE('2026-08-19','YYYY-MM-DD'), 'SV-000044', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (45, 13, TO_DATE('2025-01-01','YYYY-MM-DD'), TO_DATE('2025-12-31','YYYY-MM-DD'), 'SV-000045', 'ACTIVO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (46, 14, TO_DATE('2025-03-20','YYYY-MM-DD'), TO_DATE('2026-03-19','YYYY-MM-DD'), 'SV-000046', 'SUSPENDIDO');
INSERT INTO trx_paciente_seguros (id_paciente, id_seguro, fecha_inicio, fecha_fin, numero_poliza, estado) VALUES (49, 2, TO_DATE('2025-02-01','YYYY-MM-DD'), TO_DATE('2026-01-31','YYYY-MM-DD'), 'SV-000049', 'ACTIVO');

/*
* TABLA TIPOS SERVICIOS
*/
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Consulta Médica', 'Atención médica general o especializada');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Laboratorio Clínico', 'Análisis y pruebas de laboratorio');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Imagenología', 'Estudios de imagen como rayos X, ultrasonido, etc.');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Hospitalización', 'Estancia en hospital para tratamiento o cirugía');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Exámenes Diagnósticos', 'Pruebas diagnósticas específicas');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Cirugía', 'Procedimientos quirúrgicos');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Terapia Física', 'Rehabilitación y terapia física');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Urgencias', 'Atención médica de emergencia');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Odontología', 'Servicios dentales y odontológicos');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Psicología', 'Atención psicológica y psiquiátrica');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Vacunación', 'Administración de vacunas');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Nutrición', 'Asesoría y tratamiento nutricional');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Fisioterapia', 'Tratamientos de fisioterapia');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Cardiología', 'Servicios especializados en cardiología');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Ginecología', 'Servicios especializados en ginecología y obstetricia');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Pediatría', 'Servicios especializados en pediatría');
INSERT INTO trx_tipos_servicios (nombre, descripcion) VALUES ('Dermatología', 'Servicios especializados en dermatología');

/*
* TABLA SERVICIOS
*/
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('CONS-001', 'Consulta General', 1, 1, 50.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('LAB-001', 'Hemograma Completo', 2, 18, 30.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('IMG-001', 'Rayos X de Tórax', 3, 1, 75.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('HOSP-001', 'Hospitalización por Día', 4, 1, 200.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('EXAM-001', 'Electrocardiograma (ECG)', 5, 5, 100.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('CIR-001', 'Apendicectomía', 6, 20, 1500.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('TER-001', 'Sesión de Fisioterapia', 7, 8, 60.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('URG-001', 'Atención en Urgencias', 8, 1, 120.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('ODON-001', 'Limpieza Dental', 9, 1, 80.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('PSIC-001', 'Consulta Psicológica', 10, 9, 70.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('VAC-001', 'Vacuna Antigripal', 11, 1, 25.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('NUTRI-001', 'Consulta Nutricional', 12, 1, 55.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('CARD-001', 'Consulta Cardiológica', 1, 5, 90.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('GINE-001', 'Consulta Ginecológica', 1, 4, 85.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('PED-001', 'Consulta Pediátrica', 1, 3, 80.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('DERM-001', 'Consulta Dermatológica', 1, 6, 95.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('CIR-002', 'Cirugía de Hernia', 6, 20, 2000.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('EXAM-002', 'Resonancia Magnética (RM)', 5, 1, 500.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('LAB-002', 'Prueba de Función Hepática', 2, 1, 45.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);
INSERT INTO trx_servicios (codigo_estandar, descripcion, id_tipo_servicio, id_especialidad, precio_unitario, vigencia_inicio, vigencia_fin) VALUES ('IMG-002', 'Ultrasonido Abdominal', 3, 1, 120.00, TO_DATE('2025-01-01','YYYY-MM-DD'), NULL);

/*
* TABLA SEGURO SERVICIOS
*/
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (1, 1, 80.00, 10.00, 5.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (1, 2, 70.00, 15.00, 10.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (1, 3, 60.00, 20.00, 15.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (2, 1, 90.00, 5.00, 2.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (2, 4, 50.00, 50.00, 25.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (3, 5, 75.00, 10.00, 5.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (3, 6, 65.00, 100.00, 50.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (4, 7, 80.00, 20.00, 10.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (4, 8, 70.00, 30.00, 15.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (5, 9, 85.00, 10.00, 5.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (5, 10, 60.00, 25.00, 10.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (6, 11, 90.00, 5.00, 2.00, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (6, 12, 75.00, 15.00, 7.50, 'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (7, 13, 80.00, 20.00, 10.00,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (7, 14, 70.00, 30.00,15.00,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (8, 15,85.00 ,10.00 ,5.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (8 ,16 ,60.00 ,25.00 ,10.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (9 ,1 ,80.00 ,10.00 ,5.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (9 ,2 ,70.00 ,15.00 ,10.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (10 ,3 ,60.00 ,20.00 ,15.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (10 ,4 ,50.00 ,50.00 ,25.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (11 ,5 ,75.00 ,10.00 ,5.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (11 ,6 ,65.00 ,100.00 ,50.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (12 ,7 ,80.00 ,20.00 ,10.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (12 ,8 ,70.00 ,30.00 ,15.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (13 ,9 ,85.00 ,10.00 ,5.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (13 ,10 ,60.00 ,25.00 ,10.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (14 ,11 ,90.00 ,5.00 ,2.00 ,'S');
INSERT INTO trx_seguro_servicios (id_seguro, id_servicio, cobertura_porcentaje, deducible, copago, cubierto) VALUES (14 ,12 ,75.00 ,15.00 ,7.50 ,'S');

/*
* TABLA TIPO URGENCIA
*/
INSERT INTO trx_tipo_urgencia (nombre, descripcion, nivel_prioridad) VALUES ('BAJA', 'ATENCIÓN NO URGENTE, EL PACIENTE PUEDE ESPERAR SIN RIESGO.', 1);
INSERT INTO trx_tipo_urgencia (nombre, descripcion, nivel_prioridad) VALUES ('MEDIA', 'ATENCIÓN PRIORITARIA, EL PACIENTE PRESENTA SÍNTOMAS MODERADOS QUE REQUIEREN EVALUACIÓN PRONTA.', 2);
INSERT INTO trx_tipo_urgencia (nombre, descripcion, nivel_prioridad) VALUES ('ALTA', 'ATENCIÓN URGENTE, EL PACIENTE PRESENTA CONDICIÓN GRAVE QUE PUEDE EMPEORAR RÁPIDAMENTE.', 3);
INSERT INTO trx_tipo_urgencia (nombre, descripcion, nivel_prioridad) VALUES ('CRÍTICA', 'EMERGENCIA VITAL, EL PACIENTE NECESITA ATENCIÓN INMEDIATA PARA PRESERVAR LA VIDA.', 4);


/********************************************
* LLENADO DE TABLAS TRANSACCIONALES
********************************************/