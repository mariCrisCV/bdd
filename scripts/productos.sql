-- crea tabla productos
drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key (codigo)
)
insert into productos(codigo,nombre,descripcion,precio,stock)
values ('5639','Shampoo','producto de aseo',8.75,22)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('8963','Jabon','producto de aseo personal',3.75,50)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('7452','Crema corporal','producto de cuidado personal',5.80,16)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('7854','Desodorante','producto de cuidado personal',4.95,41)

insert into productos(codigo,nombre,descripcion,precio,stock)
values ('7863','Acondicionador','producto de cuidado personal',7.95,32)

insert into productos(codigo,nombre,precio,stock)
values ('1112','Toalla',10.50,9)

insert into productos(codigo,nombre,precio,stock)
values ('1114','Salida de baño',15.66,14)

insert into productos(codigo,nombre,precio,stock)
values ('1187','Toalla cabello',7.50,22)

select * from productos
