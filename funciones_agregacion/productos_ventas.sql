select * from productos
select * from ventas

--1. MAX
select MAX(cast(precio as numeric)) AS precio_maximo
from productos

--2. SUM
select SUM(cantidad) AS cantidad_total_vendida
from ventas