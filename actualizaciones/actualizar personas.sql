select * from personas
where cedula='1714616125'

update personas set estatura=1.70
where cedula='1714616125'

update personas set cantidad_ahorrada=0.0
where cantidad_ahorrada is null

update personas set numero_hijos=0
where numero_hijos is null

update personas set estatura=1.80, fecha_nacimiento='2000/10/10'
where cedula= '0514616124'