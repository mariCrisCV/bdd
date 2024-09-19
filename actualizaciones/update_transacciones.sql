select * from transacciones

update transacciones set tipo = 'T'
where monto>money(100) and monto<money(500) 
and fecha between '2024/09/01' and '2024/09/30'
and hora between '14:00' and '20:00'