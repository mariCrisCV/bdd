--Consulta
select * from usuario us,cuentas cu

select cu.numero_cuenta, us.nombre from
cuentas cu, usuario us
where cu.cedula_propietario = us.cedula_propietario
and cu.saldo >= money(100) and saldo <= money(1000)

--Subconsulta
select cu.numero_cuenta, cu.fecha_creacion,cu.saldo, us.cedula_propietario from 
cuentas cu, usuario us
where cu.cedula_propietario = us.cedula_propietario
and cu.fecha_creacion between '2022/09/21' and '2023/09/21'

