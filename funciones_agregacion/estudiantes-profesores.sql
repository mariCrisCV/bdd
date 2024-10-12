select * from estudiantes
select * from profesores

--1. COUNT
select es.codigo_profesor, count(*)
from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
group by es.codigo_profesor

--2. AVG
select ROUND(AVG(EXTRACT(YEAR FROM current_date) - EXTRACT(YEAR FROM fecha_nacimiento))) AS edad_promedio
from estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
