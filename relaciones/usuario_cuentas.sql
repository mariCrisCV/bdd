select * from cuentas 
delete from cuentas

-- creacion tabla y relacion
select * from usuario
delete from usuario
drop table usuario

create table usuario(
	cedula_propietario char(5) not null,
	nombre varchar(25) not null,
	apellido varchar (25) not null,
	tipo_cuenta varchar (20),
	limite_credito decimal (10,5),
	constraint usuario_pk primary key(cedula_propietario)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula_propietario)

-- Inserts de las tablas
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17508,'15/01/2030',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17515,'01/11/2028',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17512,'22/01/2023',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17503,'30/05/2022',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,14253,'15/03/2023',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17512,'15/05/2023',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17508,'15/09/2023',1500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'15/10/2024',2500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'15/08/2025',3500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'15/06/2017',4500);

set datestyle= 'ISO, DMY'
select * from cuentas
where fecha_creacion between '21/08/2022' and '21/09/2023'


insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17501','Fausto','Moscoso','Ahorros');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17509','Vinicio','Riera','Corriente');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17510','Ana','Tello','Ahorros');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17507','Maria','Taco','Ahorros');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17508','Lucia','Vargas','Corriente');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17515','Elias','Paez','Corriente');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17512','Rosa','Lopez','Ahorros');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('17503','Elisa','Rios','Ahorros');
insert into usuario (cedula_propietario, nombre, apellido, tipo_cuenta)
values ('14253','Marco','Villa','Corriente');



