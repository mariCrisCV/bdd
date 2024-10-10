--Crear tabla persona
create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key (cedula)
)

--crear tabla prestamo
create table prestamo(
	cedula char(10) not null,
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key (cedula)
)

--insert tabla persona
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730132','Mariela','Fernandez','1996/12/23');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730114','Sean','Lopez','1998/02/5');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730115','Rosa','Olivo','1999/03/12');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730116','Alex','Tuz','2000/04/18');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730117','Jose','Rios','2001/06/20');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730118','Andres','Salgado','1995/05/22');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730119','Marisol','Pila','1992/08/25');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730113','Elizabeth','Bautista','1997/04/4');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730112','Juan','Nacato','2000/09/25');
insert into persona(cedula, nombre, apellido, fecha_nacimiento)
values('1721730120','Pablo','Rosado','1998/02/10');

select *from persona
delete from persona

--insert tabla prestamo
select *from prestamo
delete from prestamo

insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730120',120,'2020/05/16');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730132',140,'2021/06/5');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730113',200,'2022/07/15');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730114',250,'2023/02/22');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730115',310,'2020/03/6');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730116',425,'2021/01/17');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730117',580,'2022/08/25');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730118',950,'2023/03/6');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730119',840,'2024/11/28');
insert into prestamo(cedula,monto,fecha_prestamo)
values('1721730112',630,'2020/12/2');

--crea relacion perstamo_persona
alter table prestamo
add constraint prestamo_persona_fk
foreign key(cedula)
references persona (cedula)
