select * from personas

delete from personas

alter table personas
add column estado_civil_codigo char(1) not null

create table estado_civil(
	codigo char(1) not null,
	description varchar(20) not null,
	constraint estado_civil_pk primary key(codigo)
)

alter table personas
add constraint persona_estado_civil_fk 
foreign key (estado_civil_codigo)
references estado_civil(codigo)

insert into personas (cedula,nombre,apellido,estado_civil_codigo)
values('1714616122', 'Santiago2','Mosquera2','U')

select * from estado_civil

insert into estado_civil(codigo, description)
values('U','UNION LIBRE');
insert into estado_civil(codigo, description)
values('C','CASADO');
insert into estado_civil(codigo, description)
values('S','SOLTERO');

