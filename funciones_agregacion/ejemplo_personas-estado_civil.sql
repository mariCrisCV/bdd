--AGREGACION
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--COUNT

select count (ec.codigo) 
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'U'

--AVG - PROMEDIO
select AVG(estatura) from personas

select AVG(numero_hijos) from personas

select AVG(cast(cantidad_ahorrada as numeric)) 
from personas

select AVG(cast(cantidad_ahorrada as numeric))
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'U'

--MAX - MIN - SUM
select SUM(cast(cantidad_ahorrada as numeric)) 
from personas

select MAX(cast(cantidad_ahorrada as numeric)) 
from personas

select MIN(cast(cantidad_ahorrada as numeric)) 
from personas

select SUM(cast(cantidad_ahorrada as numeric))
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'U'

-- GROUP BY
select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo

select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo




