-- crea tabla transacciones
drop table transacciones

create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key (codigo)
)
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1243','11445',100,'C','2024/09/15','10:20')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1244','11123',20,'D','2024/09/16','8:40')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1245','11788',10,'C','2024/09/17','9:25')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1246','11789',300,'D','2024/09/18','11:47')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1247','11852',500,'D','2024/09/15','12:10')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1248','11963',800,'C','2024/09/15','13:15')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1249','11741',450,'D','2024/09/17','14:58')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1250','11147',630,'C','2024/09/18','16:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1251','11447',740,'C','2024/09/15','15:25')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values ('1252','11885',123,'D','2024/09/16','10:02')

select * from transacciones