--modificar tabla transacciones
select * from transacciones

delete from transacciones

--crea tabla banco
create table banco(
	codigo_banco int not null,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key (codigo_banco)
)

select *from banco
delete from banco

--inserts tabla transacciones
set datestyle= 'ISO, DMY'

insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '22003', 200, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '22001', 1600, 'C', '17/05/2021', '16:37');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '02147', 300, 'D', '20/03/2019', '22:19');
insert into transacciones(codigo, numero_cuenta, monto, tipo,fecha, hora)
values(23210, '22004', 400, 'C', '20/03/2019','13:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '96325', 800, 'D', '06/11/2012', '11:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900, 'D', '23/10/2002', '9:00');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '22003', 2000, 'C', '11/09/1999', '7:30');

--inserts tabla banco
insert into banco (codigo_banco, codigo_transaccion)
values(236, 78945);
insert into banco (codigo_banco, codigo_transaccion)
values(237, 53147);
insert into banco (codigo_banco, codigo_transaccion)
values(238,32548 );
insert into banco (codigo_banco, codigo_transaccion)
values(239,32165 );
insert into banco (codigo_banco, codigo_transaccion)
values(240, 78542);
insert into banco (codigo_banco, codigo_transaccion)
values(241,23210 );
insert into banco (codigo_banco, codigo_transaccion)
values(242,35412 );
insert into banco (codigo_banco, codigo_transaccion)
values(243,54193);
insert into banco (codigo_banco, codigo_transaccion)
values(244,95124);
insert into banco (codigo_banco, codigo_transaccion)
values(245,1);

--crea relacion transacciones_banco
alter table banco
add constraint transacciones_banco_fk
foreign key (codigo_transaccion)
references transacciones(codigo)



