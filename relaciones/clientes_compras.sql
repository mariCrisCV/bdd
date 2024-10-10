-- creacion tabla clientes
select * from clientes
drop table compras

create table clientes(
 cedula char(10) not null,
 nombre varchar(50) not null,
 apellido varchar(50) not null,
 constraint clientes_pk primary key (cedula)
)

-- creacion tabla compras
create table compras(
	id_compra int,
	cedula char (10) not null,
	fecha_compra date not null,
	monto decimal (10,2) not null,
	constraint compras_pk primary key (id_compra)
)

-- inserts tabla clientes
insert into clientes (cedula, nombre, apellido)
values ('1721730131','Sofia','Vallejo');
insert into clientes (cedula, nombre, apellido)
values ('1721730114','Mónica','Salas');
insert into clientes (cedula, nombre, apellido)
values ('1721730175','Erick','Jimbo');
insert into clientes (cedula, nombre, apellido)
values ('1721730189','Consuelo','Riera');
insert into clientes (cedula, nombre, apellido)
values ('1721730163','Santiago','Loja');
insert into clientes (cedula, nombre, apellido)
values ('1721730172','Alex','Valle');
insert into clientes (cedula, nombre, apellido)
values ('1721730132','Marcela','Valencia');
insert into clientes (cedula, nombre, apellido)
values ('1721730179','Eduardo','Castro');
insert into clientes (cedula, nombre, apellido)
values ('1721730110','Mercedes','Perez');
insert into clientes (cedula, nombre, apellido)
values ('1721730173','Carmen','Caza');

-- inserts tabla compras
set datestyle= 'ISO, DMY'

insert into compras (id_compra, cedula, fecha_compra, monto)
values('123','1721730173','02/10/2024', 36.20 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('546','1721730172','28/09/2024', 5.24 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('005','1721730173','15/09/2024', 14.82 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('896','1721730110','05/10/2024', 33.05 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('056','1721730172','22/08/2024', 45.87 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('098','1721730114','12/09/2024', 1.25 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('482','1721730110','05/09/2024', 6.50 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('631','1721730173','16/08/2024', 11.35 );
insert into compras (id_compra, cedula, fecha_compra, monto)
values('651','1721730163','26/09/2024', 65.05);
insert into compras (id_compra, cedula, fecha_compra, monto)
values('321','1721730189','06/10/2024', 42.23 );

-- relacion clientes-cuentas
alter table compras
add constraint clientes_cuentas_fk
foreign key (cedula)
references clientes(cedula)





