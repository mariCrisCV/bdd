--Consulta
select * from estudiantes es, profesores pr

select pr.codigo, es.nombre, es.apellido from
estudiantes es, profesores pr
where pr.codigo= es.codigo_profesor
and es.apellido like '%n%'

--Subconsulta
select es.cedula, es.nombre, es.apellido, es.email, es.fecha_nacimiento, es.codigo_profesor from
estudiantes es, profesores pr
where pr.codigo= es.codigo_profesor
and pr.nombre like 'Francisco%'
	
