create table usuarios(
	id_usuario int not null,
	nombre varchar (25) not null,
	apellido varchar (25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id_usuario)
)

create table grupo(
	id_grupo int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (id_grupo)
)

create table usuario_grupo (
	us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key (us_id) references usuarios (id_usuario),
	constraint grupo_fk foreign key (gr_id) references grupo (id_grupo),
	constraint usuarios_por_grupo_pk primary key (us_id, gr_id)
)

select * from usuarios
select * from grupo
select * from usuario_grupo

--1. CONSULTA 
select us.nombre, gr.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.gr_id = gr.id_grupo

-- SUBCONSULTA
select us.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.gr_id = gr.id_grupo
and ug.us_id in(select us_id from usuario_grupo where gr_id=1)

--FUNCION AGREGACION
select gr.nombre, count (ug.us_id) 
from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id_grupo
group by gr.nombre

--2.CONSULTA
select us.nombre, gr.nombre 
from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.gr_id = gr.id_grupo
and gr.nombre like '%intensivo%'

--SUBCONSULTA
select us.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.gr_id = gr.id_grupo
and ug.us_id in(select us_id from usuario_grupo where gr_id=2)

--FUNCION AGREGACION
select gr.nombre, MAX (ug.us_id) , MIN(ug.us_id)
from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id_grupo
group by gr.nombre

--3. CONSULTA
select us.nombre, gr.fecha_creacion
from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.gr_id = gr.id_grupo
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'

--SUBCONSULTA
select us.nombre from usuarios us, usuario_grupo ug
where ug.us_id = us.id_usuario
and ug.us_id in(select us_id from usuario_grupo where gr_id=3)

--FUNCION AGREGACION
select gr.descripcion, count (ug.us_id) 
from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id_grupo
and gr.descripcion like '%matutino%'
group by gr.descripcion
