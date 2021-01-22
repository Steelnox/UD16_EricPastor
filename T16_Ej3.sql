use T16_Ej3;

create table Cientificos(dni varchar(8) primary key, nomApels varchar(255));
create table Proyecto(id char(4) primary key, nombre varchar(255), horas int);
create table Asignado_a(cientifico varchar(8) foreign key references Cientificos(dni), proyecto char(4) foreign key references Proyecto(id), CONSTRAINT PK_Asignado PRIMARY KEY (cientifico,proyecto));

insert into Cientificos values (39927565, 'Eric Pastor');
insert into Cientificos values (39685741, 'Laia Perez');
insert into Cientificos values (36514789, 'Andreu Sanz');
insert into Cientificos values (39924789, 'Hector Roc');
insert into Cientificos values (49652178, 'Oriol Junquera');
insert into Cientificos values (38741239, 'Jose Sanchez');
insert into Cientificos values (39985214, 'Ramon Castillejo');
insert into Cientificos values (39987452, 'Ana Torres');
insert into Cientificos values (37745821, 'Estefania Garcia');
insert into Cientificos values (47752369, 'Lucia Valls');

insert into Proyecto values ('4785', 'CoronaVirus', 80);
insert into Proyecto values ('9854', 'Gripe', 120);
insert into Proyecto values ('1235', 'Hepatitis', 958);
insert into Proyecto values ('7412', 'Tiroides', 8);
insert into Proyecto values ('3698', 'Dermatitis Atopica', 10);
insert into Proyecto values ('1596', 'Dermatitis Seborreica', 25);
insert into Proyecto values ('3214', 'Cancer de mama', 47);
insert into Proyecto values ('5241', 'Cancer de pulmon', 86);
insert into Proyecto values ('3624', 'Cancer de prostata', 23);
insert into Proyecto values ('1845', 'Cancer cerebral', 966);

insert into Asignado_a values (39927565,'4785');
insert into Asignado_a values (36514789,'9854');
insert into Asignado_a values (39685741,'1235');
insert into Asignado_a values (39924789,'7412');
insert into Asignado_a values (49652178,'3698');
insert into Asignado_a values (38741239,'1596');
insert into Asignado_a values (39985214,'3214');
insert into Asignado_a values (39987452,'5241');
insert into Asignado_a values (37745821,'3624');
insert into Asignado_a values (47752369,'1845');




