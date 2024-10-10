-- Modificar tabla estudiantes
select * from estudiantes
delete from estudiantes

alter table estudiantes
add column codigo_profesor int not null

-- crea tabla profesores
create table profesores (
 codigo int not null,
 nombre varchar(50) not null,
 direccion varchar(50),
 telefono char(10),
 constraint profesores_pk primary key (codigo)
)

select * from profesores


--inserts tabla estudiantes
set datestyle= 'ISO, DMY'

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003',5);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',10);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',1);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',6);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',3);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',7);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010',5 );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',5);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476809,'Anabel','Noroña','WNorona18@gmail.com','12/04/2000',2);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',9);

-- inserts profesores
insert into profesores(codigo, nombre)
values(1,'Carlos Gonzales');
insert into profesores(codigo, nombre)
values(2,'Patricio Jacome');
insert into profesores(codigo, nombre)
values(3,'Santiago Mosquera');
insert into profesores(codigo, nombre)
values(4,'Francisco Rivas');
insert into profesores(codigo, nombre)
values(5,'Sandra Ramos');
insert into profesores(codigo, nombre)
values(6,'Lorena Poveda');
insert into profesores(codigo, nombre)
values(7,'Miriam Lucio');
insert into profesores(codigo, nombre)
values(8,'David Cadena');
insert into profesores(codigo, nombre)
values(9,'Francisco Rojas');
insert into profesores(codigo, nombre)
values(10,'Lucia Morales');

-- crea relacion estudiantes_profesores
alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)

