use T16_Ej2;

create table Piezas(codigo int identity(1,1) primary key, nombre varchar(100));
create table Proveedores(id char(4) primary key, nombre varchar(100));
create table Suministra(codigoPieza int foreign key references Piezas(codigo), idProveedor char(4) foreign key references Proveedores(id), precio int, CONSTRAINT PK_Suministra PRIMARY KEY (codigoPieza,idProveedor));

insert into Piezas values ('Procesador');
insert into Piezas values ('Pantalla');
insert into Piezas values ('Caja');
insert into Piezas values ('Raton');
insert into Piezas values ('Teclado');
insert into Piezas values ('Alfombrilla');
insert into Piezas values ('Ventilador');
insert into Piezas values ('Refrigeración liquida');
insert into Piezas values ('Cascos');
insert into Piezas values ('Tarjeta grafica');

insert into Proveedores values ('4587', 'Intel');
insert into Proveedores values ('1234', 'Razer');
insert into Proveedores values ('8745', 'SteelSeries');
insert into Proveedores values ('8749', 'HyperX');
insert into Proveedores values ('7412', 'Samsung');
insert into Proveedores values ('9514', 'Nvidia');
insert into Proveedores values ('3574', 'Asus');
insert into Proveedores values ('8624', 'HP');
insert into Proveedores values ('3247', 'Huawei');
insert into Proveedores values ('2587', 'Logitech');

insert into Suministra values (4,'2587',450);
insert into Suministra values (1,'4587',1000);
insert into Suministra values (2,'1234',200);
insert into Suministra values (5,'8745',50);
insert into Suministra values (6,'8749',90);
insert into Suministra values (9,'7412',55);
insert into Suministra values (10,'9514',550);
insert into Suministra values (3,'3574',980);
insert into Suministra values (7,'8624',230);
insert into Suministra values (8,'3247',450);