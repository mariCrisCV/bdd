select * from clientes
select * from compras

--1. SUM
select cl.cedula, SUM(monto)
from clientes cl, compras co
where cl.cedula = co.cedula
group by cl.cedula

--2. COUNT
select co.fecha_compra, count(*)
from compras co, clientes cl
where cl.cedula = co.cedula
and co.fecha_compra = '2024/09/28'
group by co.fecha_compra

