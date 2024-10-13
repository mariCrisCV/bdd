create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal (10,2) not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)

create table huespedes(
	id_huesped int not null,
	nombres varchar (45) not null,
	apellidos varchar (45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar (45),
	pais varchar (45),
	constraint huespedes_pk primary key (id_huesped)
)

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitaciones_fk foreign key (habitacion) references habitaciones (habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references huespedes (id_huesped),
	constraint habitaciones_huespedes_pk primary key (habitacion, huesped_id)
)

select * from habitaciones
select * from huespedes
select * from reservas

--1. CONSULTA 
select ha.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero
and re.huesped_id = hu.id_huesped

--SUBCONSULTA
select hu.nombres, hu.apellidos
from huespedes hu, reservas re
where re.huesped_id = hu.id_huesped
and id_huesped IN (SELECT huesped_id from reservas WHERE habitacion=2)

--FUNCION AGREGACION
select ha.habitacion_numero, count (re.huesped_id) 
from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero
group by ha.habitacion_numero

--2. CONSULTA
select ha.habitacion_numero, ha.piso, hu.nombres, hu. apellidos 
from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero
and re.huesped_id = hu.id_huesped
and ha.piso = 4

--SUBCONSULTA
select hu.nombres, hu. apellidos 
from  huespedes hu, reservas re
where re.huesped_id = hu.id_huesped
and re.habitacion = 3

--FUNCION DE AGREGACION
select re.habitacion, AVG(re.huesped_id)
from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero
group by re.habitacion

--3. CONSULTA
select ha.habitacion_numero, hu.nombres, hu.apellidos
from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero
and re.huesped_id = hu.id_huesped

--SUBCONSULTA
select hu.nombres, hu.apellidos
from huespedes hu, reservas re
where re.huesped_id = hu.id_huesped
and id_huesped IN (SELECT huesped_id from reservas WHERE habitacion=4)

--FUNCION AGREGACION
select re.habitacion, SUM(ha.precio_por_noche)
from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero
group by re.habitacion
