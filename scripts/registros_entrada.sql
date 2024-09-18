-- crea tabla registros_entrada
drop table registros_entrada

create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registros_entrada_pk primary key (codigo_registro)
)
insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('123','1721730151','2024/09/16','07:02')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('321','1721730741','2024/09/16','07:01')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('456','1721730852','2024/09/16','07:05')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('654','1721730963','2024/09/16','07:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('987','1721730258','2024/09/16','06:59')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('111','1721738963','2024/09/16','07:05')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('741','1721730357','2024/09/16','07:04')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('852','1721730748','2024/09/16','07:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('963','1721730986','2024/09/16','07:10')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values ('258','1721730362','2024/09/16','06:57')

select * from registros_entrada
