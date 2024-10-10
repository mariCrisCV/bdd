-- modificar tabla registros_entrada
select * from registros_entrada

delete from registros_entrada

alter table registros_entrada
add column codigo_empleado int not null

--crea tabla empleado
create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

select * from empleado
delete from empleado

-- inserts tabla registros_entrada
set datestyle= 'ISO, DMY'

insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12345, '1754416489', '18/06/2023', '13:00', 2201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12355, '1758254591', '03/08/2023', '14:00',2202);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12346, '1715974492', '25/03/2022', '23:00', 2203);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12347, '1735642583', '28/12/2023', '10:00',2204);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12389, '1707416984', '16/07/2012', '8:00',2205);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12349, '1778541235', '17/03/2013', '10:00',2201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12310, '1742158637', '14/05/2017', '19:00',2202);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12311, '1756321784', '15/05/2004', '20:00',2203);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12358, '1712546328', '07/07/2008', '21:00',2205);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12378, '1725785413', '02/09/2023', '9:00',2207);


-- inserts tabla empleado
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2201,'Lucia Guerrero','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2202,'Luciana Aro','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2203,'Fernando Ulloa','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2204,'Lola Mejia','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2205,'Carlos Moca','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2206,'Luis Iza','2023/08/02','8:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2207,'Ariel Sanchez','2023/08/02','8:00');

--Relacion empleado-registros_entrada
alter table registros_entrada
add constraint registros_entrada_empleados_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)