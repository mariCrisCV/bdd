-- crea tabla cuentas
drop table cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (numero_cuenta)
)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('12345','14253','2005/11/03',52.60)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54789','14587','2011/08/11',102)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54796','14356','2003/10/02',205)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54745','17148','2020/02/04',10.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47856','14123','2009/06/12',15.30)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47847','14169','2010/06/15',20.90)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54732','14654','2022/07/17',500)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47456','17862','2024/05/25',1500)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47523','14842','2002/03/29',55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('47981','14364','2000/12/10',76.25)

select * from cuentas
