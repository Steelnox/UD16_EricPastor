use T16_Ej4;

create table Cajeros(codigo int identity(1,1) primary key, nomApels varchar(255));
create table Productos(codigo int identity(1,1) primary key, nombre varchar(100), precio int);
create table Maquinas_registradoras(codigo int identity(1,1) primary key, piso int);
create table Venta(cajero int foreign key references Cajeros(codigo), maquina int foreign key references Maquinas_registradoras(codigo), producto int foreign key references Productos(codigo), constraint pk_venta primary key(cajero, maquina, producto));

insert into Cajeros values('Alberto Gonzalez');
insert into Cajeros values('Adalberto Valdez');
insert into Cajeros values('Julio Talavera');
insert into Cajeros values('Juan Diego');
insert into Cajeros values('Eric Treviño');
insert into Cajeros values('Andreu Juarez');
insert into Cajeros values('Oriol Garcia');
insert into Cajeros values('Ester Exposito');
insert into Cajeros values('Pau Gonzalez');
insert into Cajeros values('Erica Gonzalez');

insert into Productos values ('Enchufe', 20);
insert into Productos values ('Ordenador', 750);
insert into Productos values ('Juego Ps5', 70);
insert into Productos values ('Pantalla', 100);
insert into Productos values ('Mascarilla', 2);
insert into Productos values ('Lampara', 10);
insert into Productos values ('Pañuelos', 1);
insert into Productos values ('Cargador', 5);
insert into Productos values ('Despertador', 9);
insert into Productos values ('Tapones oidos', 4);

insert into Maquinas_registradoras values (1);
insert into Maquinas_registradoras values (2);
insert into Maquinas_registradoras values (3);
insert into Maquinas_registradoras values (4);
insert into Maquinas_registradoras values (5);
insert into Maquinas_registradoras values (6);
insert into Maquinas_registradoras values (7);
insert into Maquinas_registradoras values (8);
insert into Maquinas_registradoras values (9);
insert into Maquinas_registradoras values (10);

insert into Venta values (1,10,1);
insert into Venta values (2,9,2);
insert into Venta values (3,8,3);
insert into Venta values (4,7,4);
insert into Venta values (5,6,5);
insert into Venta values (6,5,6);
insert into Venta values (7,4,7);
insert into Venta values (8,3,8);
insert into Venta values (9,2,9);
insert into Venta values (10,1,10);