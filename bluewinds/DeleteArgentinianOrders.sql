--ELIMINAR TODAS LAS ORDENES DE LOS CLIENTES DE ARGENTINA

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
 
BEGIN TRAN

select count(*) FROM OrderItems oi
inner join Orders o on o.id = oi.orderid
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';


select count(*) FROM Orders o 
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';


delete oi FROM OrderItems oi
inner join Orders o on o.id = oi.orderid
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';

delete o FROM Orders o 
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';


select count(*) FROM OrderItems oi
inner join Orders o on o.id = oi.orderid
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';


select count(*) FROM Orders o 
inner join customers c on c.id = o.customerid
where c.Country = 'Argentina';

ROLLBACK
