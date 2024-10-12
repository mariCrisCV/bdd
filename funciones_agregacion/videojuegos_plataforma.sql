select * from videojuegos
select * from plataformas

--1.COUNT
select codigo_videojuego, count (*) AS total_plataformas
from plataformas pl, videojuegos vi
where pl.codigo_videojuego = vi.codigo
group by codigo_videojuego

--2. AVG
select ROUND(AVG(valoracion),2) AS valoracion_promedio
from videojuegos