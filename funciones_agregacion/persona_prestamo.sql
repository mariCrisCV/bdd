select * from persona
select * from prestamo

--1. SUM
select pe.cedula, SUM(cast(monto as numeric)) AS monto_total_prestamos
from persona pe, prestamo pr
where pe.cedula = pr.cedula
group by pe.cedula

--2. COUNT
select count (*) AS total_personas
from persona pe, prestamo pr
where  pe.cedula = pr.cedula
and pe.numero_hijos>1
