DROP DATABASE IF EXISTS clubes;
CREATE DATABASE clubes;
USE clubes;

CREATE TABLE estadio (
id_estadio INT AUTO_INCREMENT,
nombre VARCHAR (100),
capacidad VARCHAR (50),
ciudad VARCHAR (50),
CONSTRAINT pk_id_estadio PRIMARY KEY (id_estadio)
);
-- Estadios --
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Bicentenario de La Florida","12106","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("El Cobre","12000","El Salvador");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Monumental David Arellano","47347","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Francisco Sanchez Rumoroso","18000","Coquimbo");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Bicentenario La Granja","8000","Curicó");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Regional Calvo y Bascuñan","21178","Antofagasta");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Tierra de campeones","11706","Iquique");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("La Portada","18500","La Serena");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Sausalito","23423","Viña del mar");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Huachipato CAP-ACERO","10751","Talcahuano");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("El teniente","15809","Rancagua");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal de La Cisterna","11107","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Elías Figueroa Brandler","21568","Valparaíso");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Santa Laura-Universidad SEK","21864","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Nicolás Chahúan Nazar","9000","La Calera");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("San Carlos de Apoquindo","20000","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Alcaldesa Ester Roa Rebolledo","30457","Concepción");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Nacional Julio Martínez Prádanos","46109","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Luis Navarro Avilés","3500","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal de La Pintana","6000","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Zorros del Desierto","12102","Calama");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Lucio Fariña Fernández","7700","Quillota");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Federico Schwager","10700","Coronel");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("El Morro, Ramón Unzaga Asla​","7152","Talcahuano");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Bicentenario Municipal Nelson Oyarzún","12000","Chillán");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Carlos Dittborn","9625","Arica");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Regional de Los Andes","3300","Los Andes");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Fiscal de Talca","16000","Talca");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Roberto Bravo Santibáñez	","6500","Melipilla");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Estadio Municipal Germán Becker Baechler","18000","Temuco");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("San Damián","-","Peñaflor");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal de San Felipe","10000","San Felipe");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Regional de Chinquihue","10000","Puerto Montt");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("ANFA Luis H. Álvarez","1000","Curicó");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal La Caldera","1500","Caldera");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Parque Municipal","5000","Valdivia");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Santiago Bueras","3402","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal de Lo Barnechea","2500","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Joaquín Muñoz García","4500","Santa Cruz");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Jorge Silva Valenzuela","7200","San Fernando");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Manuel Rojas del Río","4000","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Fiscal Tucapel Bustamante Lastra","4000","Linares");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Leonel Sánchez Lineros","1000","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Nelson Rojas","5000","Vallenar");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Augusto Rodríguez","3000","San Vicente");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal de Los Ángeles","4150","Los Angeles");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Miguel Alarcón Osores","1500","Cauquenes");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Lautaro de Buin","1500","Buin");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Municipal Doctor Olegario Henríquez Escalante","2024","San Antonio");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Estadio Ferroviario Hugo Arqueros Rodríguez","1220","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Estadio Reinaldo Martín Müller","100","Santiago");
INSERT INTO estadio(nombre, capacidad, ciudad) VALUES ("Estadio Municipal Rubén Marcos Peralta","11000","Osorno");

CREATE TABLE club (
id_club INT AUTO_INCREMENT,
nombre VARCHAR (50),
nombre_oficial VARCHAR (100),
fundacion VARCHAR(50),
activo VARCHAR (50),
estadio_local INT,
CONSTRAINT pk_id_club PRIMARY KEY (id_club),
CONSTRAINT fk_table_estadio FOREIGN KEY (estadio_local) REFERENCES estadio(id_estadio) ON DELETE CASCADE
); 
-- Clubes --
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Audax Italiano", "Audax Italiano La Florida", "1910-11-30","Actualidad", 1);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Cobresal", "Club Deportes Cobresal", "1979-05-05","Actualidad", 2);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Colo Colo", "Club Deportivo y Social Colo Colo", "1925-04-19","Actualidad", 3);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Coquimbo Unido", "Coquimbo Unido", "1958-08-30","Actualidad", 4);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Curicó Unido", "Club de Deportes Provincial Curicó Unido", "1973-02-26","Actualidad", 5);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Antofagasta", "Club de Deportes Antofagasta", "1966-05-12","Actualidad", 6);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Iquique", "Club de Deportes Iquique", "1978-05-21","Actualidad", 7);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes La Serena", "Club de Deportes La Serena", "1955-12-09","Actualidad", 8);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Everton", "Everton de Viña del Mar", "1909-06-24","Actualidad", 9);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Huachipato", "Club Deportivo Huachipato", "1947-06-07","Actualidad", 10);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("O'Higgins", "Club Deportivo O'Higgins", "1955-04-07","Actualidad", 11);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Palestino", "Club Deportivo Palestino", "1920-08-20","Actualidad", 12);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Santiago Wanderers", "Club de Deportes Santiago Wanderers", "1892-08-15","Actualidad", 13);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Unión Española", "Unión Española", "1897-05-18","Actualidad", 14);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Unión La Calera", "Club de Deportes Unión La Calera", "1954-01-26","Actualidad", 15);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Universidad Catolica", "Club Deportivo Universidad Católica", "1937-04-21","Actualidad", 16);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Universidad de Concepción", "Club Deportivo Universidad de Concepción", "1994-08-08","Actualidad", 17);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Universidad de Chile", "Club Universidad de Chile", "1927-05-24","Actualidad",18);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Magallanes", "Deportes Magallanes", "1897-10-27","Actualidad",19);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Santiago Morning", "Club de Deportes Santiago Morning", "1903-10-16","Actualidad",20);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Green Cross", "Club de Deportes Green Cross", "1916-06-27", "1965-03-20",18);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Cobreloa", "Club de Deportes Cobreloa", "1977-01-07","Actualidad",21);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("O'Higgins Braden", "Club O'Higgins Braden", "1954-01-01","1955-04-07",11);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("San Luis", "San Luis de Quillota", "1919-12-08","Actualidad",22);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Ferrobádminton", "Club Deportivo Ferrobádminton", "1950-02-23","1969-01-08",50);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Concepción", "Club Social y de Deportes Concepción", "1966-04-15","Actualidad",17);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Lota Schwager", "Club de Deportes Lota Schwager", "1966-05-10","Actualidad",23);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Naval", "Deportes Naval de Talcahuano", "1944-05-21","1991-02-15",24);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Aviación", "Club de Deportes Aviación", "1957-12-12","1982-01-25",51);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Ñublense", "Club Deportivo Ñublense", "1916-08-20","Actualidad",25);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("San Marcos", "Club Deportivo San Marcos de Arica", "1978-02-14","Actualidad",26);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Fernández Vial", "Club Deportivo Arturo Fernández Vial", "1903-06-15","Actualidad",17);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Trasandino", "Club Deportivo Trasandino de Los Andes", "1906-04-01","Actualidad",27);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Rangers", "Club Social de Deportes Rangers", "1902-11-02","Actualidad",28);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Provincial Osorno", "Club Deportivo Provincial Osorno", "1983-06-05","2012-08-12",52);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Melipilla", "Club de Deportes Melipilla", "1992-01-24","Actualidad",29);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Temuco", "Club de Deportes Temuco", "1916-06-27","Actualidad",30);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Thomas Bata", "Club Deportivo Thomas Bata", "1940-09-18","Actualidad",31);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Unión San Felipe", "Club Deportivo Unión San Felipe", "1956-10-16","Actualidad",32);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Puerto Montt", "Club de Deportes Puerto Montt", "1983-05-06","Actualidad",33);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Luis Cruz Martínez", "Club Deportivo Luis Cruz Martínez", "1905-10-14","Actualidad",34);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Boston College Femenino", "Club Deportivo Boston College", "2014-01-01","Actualidad", 37);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Universidad Austral de Chile", "Selección femenina de fútbol de la Universidad Austral de Chile", "2013-01-01","Actualidad", 36);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Copiapó", "Club de Deportes Copiapó", "1999-03-09","Actualidad", 35);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Valdivia", "Club de Deportes Valdivia", "1983-06-05","Actualidad", 36);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Barnechea", "Athletic Club Barnechea", "1929-12-23","Actualidad", 38);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Santa Cruz", "Club de Deportes Santa Cruz", "1913-05-25","Actualidad", 39);

INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Colchagua", "Colchagua Club de Deportes", "1957-01-23","Actualidad", 40);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Colina", "Deportes Colina", "2014-11-27","Actualidad", 41);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Linares", "Club de Deportes Linares", "1955-11-19","Actualidad", 42);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Recoleta", "Club de Deportes Recoleta", "2014-01-23","Actualidad", 43);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Deportes Vallenar", "Club de Deportes Vallenar", "2013-06-06","Actualidad", 44);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("General Velásquez", "Club Deportivo General Velásquez", "1908-01-08","Actualidad", 45);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Iberia", "Deportes Iberia", "1933-06-15","Actualidad", 46);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Independiente", "Club de Deportes Independiente de Cauquenes", "1929-03-04","Actualidad", 47);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Lautaro", "Lautaro de Buin", "1923-02-01","Actualidad", 48);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("San Antonio Unido", "Club Social y Deportivo San Antonio Unido", "1961-07-21","Actualidad", 49);
INSERT INTO  club (nombre, nombre_oficial, fundacion, activo, estadio_local) VALUES("Naval", "Club Deportivo y Social Naval de Talcahuano", "1972-08-24","Actualidad",24);

CREATE TABLE torneo (
id_torneo INT AUTO_INCREMENT,
liga VARCHAR (50),
nombre VARCHAR (100),
temporada VARCHAR(50),
internacional BOOLEAN,
campeon INT,
CONSTRAINT pk_id_torneo PRIMARY KEY (id_torneo),
CONSTRAINT fk_id_club FOREIGN KEY (campeon) REFERENCES club(id_club) ON DELETE CASCADE
);
-- Primera División --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1933", 0,19);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1934", 0,19);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1935", 0,19);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1936", 0, 1);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1937", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1938", 0,19);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1939", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1940", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1941", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1942", 0,20);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1943", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1944", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1945", 0,21);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1946", 0,1);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1947", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1948", 0,1);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1949", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1950", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1951", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1952", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1953", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1954", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1955", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1956", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1957", 0,1);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1958", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1959", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1960", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1961", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1962", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1963", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1964", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1965", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1966", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1967", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1968", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1969", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1970", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1971", 0,39);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1972", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1973", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1974", 0,10);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1975", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1976", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1977", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1978", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1979", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1980", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1981", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1982", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1983", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1984", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1985", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1986", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1987", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1988", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1989", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1990", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1991", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1992", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1993", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1994", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1995", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1996", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 1997", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 1997", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1998", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "1999", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "2000", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "2001", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2002", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2002", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2003", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2003", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2004", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2004", 0,22);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2005", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2005", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2006", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2006", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2007", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2007", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2008", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2008", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2009", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2009", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "2010", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2011", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2011", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2012", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2012", 0,10);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Transicion 2013", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2013-14", 0,11);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2013-14", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2014-15", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2014-15", 0,2);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2015-16", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2015-16", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Apertura 2016-17", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Clausura 2016-17", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "Transición 2017", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "2018", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera División de Chile", "2019", 0,16);
-- Copa Chile --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1958", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1959", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1960", 0,8);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1961", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1962", 0,41);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1974", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1975", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1977", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1979", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1980", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1981", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1982", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1983", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1984", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1985", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1986", 0,40);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1987", 0,2);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1988", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1989", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1990", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1991", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1992", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1993", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1994", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1995", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1996", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "1998", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2000", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2008", 0,17);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2009", 0,39);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2010", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2011", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2012-13", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2013-14", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2014-15", 0,17);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2015", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2016", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2017", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2018", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Chile", "2019", 0,3);
-- Super Copa --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2013", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2014", 0,11);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2015", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2016", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2017", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2018", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Super Copa", "2019", 0,16);
-- Copa Libertadores
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Libertadores de América", "1991", 1,3);
-- Copa Sudamericana --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Sudamericana", "2011", 1, 18);
-- Recopa Sudamericana --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ("Masculina","Recopa Sudamericana", "1992", 1,3);
-- Copa Interamericana --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Interamericana", "1992", 1,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Copa Interamericana", "1994", 1,16);
-- Primera B --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1952", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1953", 0,38);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1954", 0,23);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1955", 0,24);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1956", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1957", 0,8);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1958", 0,24);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1959", 0,20);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1960", 0,21);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1961", 0,15);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1962", 0,4);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1963", 0,21);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1964", 0,11);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1965", 0,25);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1966", 0,10);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1967", 0,26);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1968", 0,6);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1969", 0,27);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1970", 0,39);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1971", 0,28);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1972", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1973", 0,29);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1974", 0,20);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1975", 0,16);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1976", 0,30);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1977", 0,4);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1978", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1979", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1980", 0,24);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1981", 0,31);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1982", 0,32);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1983", 0,2);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1984", 0,15);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1985", 0,33);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1986", 0,27);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1987", 0,8);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1988", 0,34);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1989", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1990", 0,35);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1991", 0,37);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1992", 0,35);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1993", 0,34);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1994", 0,26);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1995", 0,13);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1996", 0,8);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "Apertura 1997", 0,34);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "Clausura 1997", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1998", 0,2);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "1999", 0,14);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2000", 0,39);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2001", 0,37);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2002", 0,40);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2003", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2004", 0,36);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2005", 0,20);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2006", 0,36);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2007", 0,35);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2008", 0,5);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2009", 0,39);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2010", 0,7);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2011", 0,6);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2012", 0,31);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "Transición 2013", 0,17);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2013-14", 0,31);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2014-15", 0,24);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2015-16", 0,37);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2016-17", 0,5);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "Transición 2017", 0,15);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2018", 0,4);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Primera B de Chile", "2019", 0,13);
-- Segunda División --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2012", 0,54);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "Transición 2013", 0,54);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2013-14", 0,54);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2014-15", 0,40);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2015-16", 0,45);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2016-17", 0,46);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "Transición 2017", 0,52);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2018", 0,47);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Masculina","Segunda División Profesional de Chile", "2019", 0,31);
-- Torneos Femeninos --
-- Primera división --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "2008", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "2009", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "2010", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2011", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2011", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2012", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2012", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2013", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2013", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2014", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2014", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2015", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2015", 0,12);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2016", 0,18);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2016", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Apertura 2017", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "Clausura 2017", 0,3);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "2018", 0,20);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera División Femenina de Chile", "2019", 0,20);
-- Copa Chile --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Copa Chile", "2009", 0,9);
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Copa Chile", "2010", 0,9);
-- Copa Libertadores --
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Copa Libertadores de América Femenina", "2012", 1,3);
-- Primera B
INSERT INTO torneo (liga, nombre, temporada, internacional, campeon) VALUES ( "Femenina","Primera B Femenina de Chile", "2019", 0,40);


SELECT * FROM torneo;	

SELECT * FROM estadio;

SELECT * FROM club;	





