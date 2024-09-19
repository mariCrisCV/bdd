select * from personas where hora_nacimiento 
between '10:00' and '22:54'

select * from personas where apellido like '%o%'

select * from personas where hora_nacimiento is not null

select * from personas where numero_hijos != 2

insert into personas (cedula, nombre, apellido,fecha_nacimiento)
values('0714616123','Jefferson','Farfan','1995/06/10')

insert into personas (cedula, nombre, apellido,fecha_nacimiento)
values('0714616124','Jefferson','Farfan','1995/06/11')

insert into personas (cedula, nombre, apellido,hora_nacimiento)
values('0514616124','Jefferson','Romero','22:54:10')

insert into personas (cedula, nombre, apellido,hora_nacimiento)
values('0314616124','Martina','Romero','10:05:10')





