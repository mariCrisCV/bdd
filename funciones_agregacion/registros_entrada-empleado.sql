select * from registros_entrada
select * from empleado

--1.COUNT
select cedula_empleado, count (*) AS total_registros_entrada
from registros_entrada re, empleado em
where re.codigo_empleado= em.codigo_empleado
group by cedula_empleado

--2.MAX - MIN
select MAX(fecha), MIN (fecha)
from registros_entrada