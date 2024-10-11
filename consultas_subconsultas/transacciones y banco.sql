--Consulta
select * from transacciones tr, banco ba

select * from banco

select * from
transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and tr.tipo like 'C' and tr.numero_cuenta between '22001' and '22004'

--Subconsulta
select * from
transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and ba.codigo_transaccion =1
