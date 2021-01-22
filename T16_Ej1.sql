use T16_Ej1;

create table Despachos(numero int primary key, capacidad int);
create table Directores(dni varchar(8) primary key, nomapels varchar(255), dniJefe varchar(8) foreign key references Directores(dni), despacho int foreign key references Despachos(numero));

Insert into Despachos values (1, 3);
Insert into Despachos values (2, 6);
Insert into Despachos values (3, 7);
Insert into Despachos values (4, 0);
Insert into Despachos values (5, 2);
Insert into Despachos values (6, 9);
Insert into Despachos values (7, 36);
Insert into Despachos values (8, 4);
Insert into Despachos values (9, 15);
Insert into Despachos values (10, 35);

Insert into Directores values (39927565, 'Eric Pastor', 39927565, 2);
Insert into Directores values (39854712, 'Laia Perez', 39927565, 10);
Insert into Directores values (47812364, 'Robert De Niro', 39927565, 1);
Insert into Directores values (39844123, 'Perico Palotes', 39854712, 3);
Insert into Directores values (35214447, 'Amanda Sanchez', 39927565, 9);
Insert into Directores values (39987456, 'Juan Rosales', 39927565, 8);
Insert into Directores values (39965471, 'Esteban Ramirez', 39927565, 5);
Insert into Directores values (38812652, 'Andreu Roc', 39927565, 4);
Insert into Directores values (37412365, 'Hector Castillejo', 38812652, 6);
Insert into Directores values (47885112, 'Ingrid Garcia', 39927565, 7);


