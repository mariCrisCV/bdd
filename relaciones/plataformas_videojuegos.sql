--modificar tabla videojuegos
select * from videojuegos
delete from videojuegos

-- crear tabla plataformas
create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
)


-- inserts tabla videojuegos
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'terror', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'suspenso', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'psicoligia', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'guerra', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'deporte', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'guerra', 8);

--inserts tabla plataformas
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('30','Twich',07563);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('31','YouTube Gaming',35784);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('32','Kick',07563);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('33','Facebook gaming',35784);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('34','Sony PlayStation 5',15983);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('35','Nintendo Switch',15983);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('36','Xbox Series',85421);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('37','PC',35784);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('38','Sony PlayStation 2',07563);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values('39','Steam Deck',85421);

--se crea relacion videojuegos_plataformas
alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)
