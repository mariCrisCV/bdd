select * from transacciones
select * from banco

--1.COUNT
select count (tipo) AS total_transacciones_credito
from transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and tipo = 'C'

--2.AVG
select numero_cuenta, ROUND(AVG(CAST(monto AS decimal)),2) AS monto_promedio
from transacciones
group by numero_cuenta