--Consulta
select * from videojuegos vj, plataformas pl

select * from plataformas

select * from
videojuegos vj, plataformas pl
where vj.codigo = pl.codigo_videojuego
and vj.descripcion like '%guerra%' and vj.valoracion > 7 or vj.nombre like 'C%' 
and vj.valoracion > 8 or vj.nombre like 'D%' 

--Subconsulta
select pl.id_plataforma, pl.nombre_plataforma, pl.codigo_videojuego from
videojuegos vj, plataformas pl 
where vj.codigo = pl.codigo_videojuego
and vj.nombre like 'God of War'

