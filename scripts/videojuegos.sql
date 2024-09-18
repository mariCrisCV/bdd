-- crea tabla videojuegos
drop table videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key (codigo)
)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('111','The Legend of Zelda','accion',9)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('112','Tony Hawks Pro Skater','accion',8)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('113','Grand Theft Auto','accion',7)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('114','Soul Calibur','accion',8)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values ('115','Super Mario Galaxi','Wii',9)