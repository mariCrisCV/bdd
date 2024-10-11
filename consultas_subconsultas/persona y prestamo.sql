--Consulta
select * from persona pr, prestamo ps

select * from prestamo

select pr.cantidad_ahorrada, ps.monto, ps.garante from
persona pr, prestamo ps
where pr.cedula= ps.cedula
and ps.monto >= money(100) and ps.monto <= money(1000)

--Subconsulta
select pr.cedula, pr.nombre, pr.apellido, pr.estatura, pr.fecha_nacimiento, pr.hora_nacimiento, pr.cantidad_ahorrada from
persona pr, prestamo ps
where pr.cedula= ps.cedula
and pr.nombre like 'Sean'
