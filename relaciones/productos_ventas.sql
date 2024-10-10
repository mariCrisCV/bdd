--modificar contenido tabla productos
select * from productos
delete from productos

-- crear tabla ventas
create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key (id_venta)
)

--inserts tabla productos
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Maní','Artesanal',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

--inserts tabla ventas
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('20','1','2024/09/29',5 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('21','3','2024/10/10',2 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('22','5','2024/09/22',3 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('23','7','2024/10/5',1 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('24','9','2024/09/28',5 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('25','2','2024/10/1',6 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('26','1','2024/09/2',4 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('27','3','2024/10/6',10 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('28','5','2024/09/15',1 );
insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad)
values ('29','10','2024/10/8',3 );

--se crea relacion producto_ventas
select * from ventas

 alter table ventas
 add constraint productos_ventas_fk
 foreign key (codigo_producto)
 references productos(codigo)


