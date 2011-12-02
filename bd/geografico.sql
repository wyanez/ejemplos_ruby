CREATE TABLE estados (id integer primary key autoincrement, nombre varchar(50) not null);
INSERT INTO estados VALUES(1,'Lara');
INSERT INTO estados VALUES(2,'Yaracuy');
INSERT INTO estados VALUES(3,'Portuguesa');
INSERT INTO estados VALUES(4,'Carabobo');

CREATE TABLE municipios (id integer primary key autoincrement, nombre varchar(50) not null, estado_id integer not null);
INSERT INTO municipios VALUES(1,'Iribarren',1);
INSERT INTO municipios VALUES(2,'Palavecino',1);
INSERT INTO municipios VALUES(3,'Crespo',1);
INSERT INTO municipios VALUES(4,'Torres',1);
INSERT INTO municipios VALUES(5,'San Felipe',2);
INSERT INTO municipios VALUES(6,'Peña',2);
INSERT INTO municipios VALUES(7,'Araure',3);
INSERT INTO municipios VALUES(8,'Paez',3);
INSERT INTO municipios VALUES(9,'Ospino',3);
INSERT INTO municipios VALUES(10,'Valencia',4);

