--Consulta
select * from productos pd, ventas ve

select * from ventas

select pd.nombre, pd.stock, ve.cantidad from
productos pd, ventas ve
where pd.codigo= ve.codigo_producto
and pd.nombre like '%m%' or pd.descripcion like '%0%'

--Subconsulta
select pd.nombre, pd.stock from
productos pd, ventas ve
where pd.codigo= ve.codigo_producto
and ve.cantidad = 5
