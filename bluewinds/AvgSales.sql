-- Obtener el promedio de ventas de las ordenes:

select avg(totalamount) from orders
select count (*) from orders where OrderDate > '2014-01-01'
group by OrderNumber  -- permite tomar información con la misma clave y luego poder aplciar funciones sobre esos grupos
