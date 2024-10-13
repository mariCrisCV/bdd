create table ciudad(
	ciudad_id int not null,
	nombre varchar (45) not null,
	constraint cuidad_pk primary key (ciudad_id)
)

create table municipio(
	municipio_id int not null,
	nombre varchar(45),
	ciudad_id int not null,
	constraint municipio_pk primary key (municipio_id),
	constraint municipio_ciudad_fk foreign key (ciudad_id) references ciudad(ciudad_id)
)

create table proyecto(
	proyecto_id int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (proyecto_id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key (municipio_id) references municipio (municipio_id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto (proyecto_id),
	constraint proyecto_municipio_pk primary key (proyecto_id,municipio_id)
)

select * from municipio
select * from proyecto
select * from proyecto_municipio

--1. CONSULTA 
select mu.nombre, pro.proyecto
from municipio mu, proyecto pro, proyecto_municipio pm
where pm.municipio_id= mu.municipio_id
and pm.proyecto_id = pro.proyecto_id

--SUBCONSULTA
select pro.proyecto
from proyecto pro, proyecto_municipio pm
where pm.proyecto_id = pro.proyecto_id
and pro.proyecto_id IN(SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id=1)

--FUNCION DE AGREGACION
select mu.nombre, COUNT(pm.proyecto_id)
from municipio mu, proyecto_municipio pm
where pm.municipio_id= mu.municipio_id
group by mu.nombre

--2. CONSULTA
select mu.nombre, pro.proyecto
from municipio mu, proyecto pro, proyecto_municipio pm
where pm.municipio_id= mu.municipio_id
and pm.proyecto_id = pro.proyecto_id
and mu.nombre like '%GAD%'

--FUNCION DE AGREGACION
select mu.nombre, MIN (pm.proyecto_id)
from municipio mu, proyecto_municipio pm
where pm.municipio_id= mu.municipio_id
group by mu.nombre

--3. CONSULTA
select mu.nombre, ciu.nombre
from municipio mu, ciudad ciu
where mu.ciudad_id= ciu.ciudad_id

--SUBCONSULTA
select pro.proyecto
from proyecto pro, proyecto_municipio pm
where pm.proyecto_id = pro.proyecto_id
and pro.proyecto_id IN(SELECT proyecto_id FROM proyecto_municipio WHERE municipio_id=3)

--FUNCION DE AGREGACION
select mu.nombre, MAX(pm.proyecto_id)
from municipio mu, proyecto_municipio pm
where pm.municipio_id= mu.municipio_id
group by mu.nombre


