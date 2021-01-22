use T16_Ej5;

create table Facultad(codigo int primary key, nombre varchar(100));
create table Investigadores(dni varchar(8) primary key, nomApels varchar(255), facultad int foreign key references Facultad(codigo));
create table Equipos(numSerie char(4) primary key, nombre varchar(100), facultad int foreign key references Facultad(codigo));
create table Reserva(dni varchar(8) foreign key references Investigadores(dni), numSerie char(4) foreign key references Equipos(numSerie), comienzo datetime, fin datetime);


insert into Facultad values(1,'Ciencias politicas');
insert into Facultad values(2,'Empresariales');
insert into Facultad values(3,'Fisica');
insert into Facultad values(4,'Quimica');
insert into Facultad values(5,'Ingenieria quimica');
insert into Facultad values(6,'Ingenieria informatica');
insert into Facultad values(7,'Diseño y producción de videojuegos');
insert into Facultad values(8,'Infermeria');
insert into Facultad values(9,'Medicina');
insert into Facultad values(10,'Psicologia');

insert into Investigadores values(39927565, 'Eric Pastor', 7);
insert into Investigadores values(36857412, 'Andreu Tejada', 1);
insert into Investigadores values(37745821, 'Laia Ortega', 2);
insert into Investigadores values(47889663, 'Ester Exposito', 3);
insert into Investigadores values(34125896, 'Maria Dolores', 4);
insert into Investigadores values(32214589, 'Ramon Pastor', 5);
insert into Investigadores values(47785963, 'Nerea Castillejo', 6);
insert into Investigadores values(40012563, 'Sora Martins', 8);
insert into Investigadores values(48569321, 'Jude Hawk', 9);
insert into Investigadores values(39547412, 'Eric Miranda', 10);

insert into Equipos values ('4785', 'Pintura', 1);
insert into Equipos values ('7485', 'Diseño', 2);
insert into Equipos values ('1425', 'Empresa', 3);
insert into Equipos values ('9874', 'Anestesia', 4);
insert into Equipos values ('8529', 'Cirugia', 5);
insert into Equipos values ('3219', 'Sinergia', 6);
insert into Equipos values ('1489', 'Tabletas', 7);
insert into Equipos values ('7536', 'Circuitos', 8);
insert into Equipos values ('9514', 'Piezas', 9);
insert into Equipos values ('1234', 'Laser', 10);

insert into Reserva values (39927565,'4785',30-12-2020,31-12-2020);
insert into Reserva values (36857412,'7485',10-12-2020,20-12-2020);
insert into Reserva values (37745821,'1425',17-01-2020,25-02-2020);
insert into Reserva values (47889663,'9874',10-09-2020,05-10-2020);
insert into Reserva values (34125896,'8529',08-07-2020,08-08-2020);
insert into Reserva values (32214589,'3219',04-11-2020,04-12-2020);
insert into Reserva values (47785963,'1489',05-05-2020,06-06-2020);
insert into Reserva values (40012563,'7536',11-12-2020,12-12-2020);
insert into Reserva values (48569321,'9514',01-03-2020,01-04-2020);
insert into Reserva values (39547412,'1234',15-02-2020,16-09-2020);





