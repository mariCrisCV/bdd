select * from cuentas
select * from usuario

--1. AVG
select AVG(cast(saldo as numeric))
from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula_propietario
and cu.cedula_propietario = '17512'

--2. COUNT
select tipo_cuenta, count(*) from usuario
group by tipo_cuenta
