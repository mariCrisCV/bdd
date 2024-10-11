--Consulta
select * from clientes cl, compras co

select cl.nombre, cl.apellido from
clientes cl, compras co
where cl.cedula = co.cedula
and co.cedula like '%7%'

--Subconsulta
select co.cedula, cl.nombre, cl.apellido from  
clientes cl, compras co
where cl.cedula = co.cedula
and cl.nombre = 'Mónica'
