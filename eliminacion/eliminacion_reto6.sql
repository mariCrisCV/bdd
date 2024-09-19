select * from productos

delete from productos
where descripcion is null
--------------------------
select * from cuentas

delete from cuentas
where cedula_propietario like '10%'
---------------------------
select * from estudiantes

delete from estudiantes
where cedula like '%05'
--------------------------
select * from registros_entrada

delete from registros_entrada
where fecha between '2024/06/01' and '2024/06/30'
------------------------------
select * from videojuegos

delete from videojuegos
where valoracion <=7
-----------------------------
select * from transacciones

delete from transacciones
where fecha between '2024/06/01' and '2024/06/30'
and hora between '14:00' and '18:00'
---------------------------------------