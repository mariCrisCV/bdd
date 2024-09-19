-- crea tabla estudiantes
drop table estudiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key (cedula)
)
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721730131','Cristina','Villarreal','crisvill@gmail.com','1999/10/02')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721735632','Vinicio','Castro','vinicastro@gmail.com','2001/02/06')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1718198938','Eduardo','Villacres','edu87@gmail.com','2000/01/18')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721734785','Rocío','Iza','rocio_iza@gmail.com','2002/05/25')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721730132','Antonio','Chicaiza','antonych@gmail.com','2000/11/02')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721778523','Elias','Andrade','elias_an@gmail.com','1999/03/01')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1721735236','Marlene','Aldáz','aldaz_mar@gmail.com','2001/12/25')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values ('1704080080','Leonidas','Panama','leo_pan@gmail.com','2002/07/08')

select * from estudiantes

select nombre,cedula from estudiantes
select nombre from estudiantes where cedula like '17%'
select nombre,apellido from estudiantes where nombre like 'A%'
