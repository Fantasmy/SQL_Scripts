-- Agregar una venta del producto anterior en el dia de ayer al cliente "Antonio Moreno" que vive en "México D.F." por 10 unidades con precio unitario 13 y 10 cajas

declare @orderid int;
select * from OrderItems where orderid = (select max(Id) from orders);
set @orderid = (select max(Id)+1 from Orders)  -- está devolviendo una table, se necesita ()
insert Orders (OrderDate, OrderNumber, CustomerId, TotalAmount) values ('2018-07-02', 543208, 4, 130.00)
insert OrderItems (OrderId, ProductId, UnitPrice, Quantity) values (@orderid, 78, 13, 18)
select * from OrderItems 
where orderId = @orderid;

--OTRO MÉTODO:
select * from OrderItems where orderid = (select max(Id) from orders);
insert Orders (Orderdate, OrderNumber, CustomerId, TotalAmount) values ('2018-07-02', 543208, 4, 130.00)
insert OrderItems (OrderId, ProductId, UnitPrice, Quantity) values (@@IDENTITY, 78, 13, 18)
insert Orders (Orderdate, OrderNumber, CustomerId, TotalAmount) values ('2018-07-02', 543208, 4, 130.00)
insert OrderItems (OrderId, ProductId, UnitPrice, Quantity) values (@@IDENTITY, 78, 13, 18)
select * from OrderItems where orderid = @@IDENTITY;


--OTRO MÉTODO:
declare @orderid int;
select * from OrderItems where orderid = (select max(Id) from orders);
insert Orders (Orderdate, OrderNumber, CustomerId, TotalAmount) values ('2018-07-02', 543208, 4, 130.00)
set @orderid = SCOPE_DIENTITY(); -- para obtener el ultimo order id
insert OrderItems (OrderId, ProductId, UnitPrice, Quantity) values (@@IDENTITY, 78, 13, 18)
insert Orders (Orderdate, OrderNumber, CustomerId, TotalAmount) values ('2018-07-02', 543208, 4, 130.00)
set @orderid = SCOPE_IDENTITY();
insert OrderItems (OrderId, ProductId, UnitPrice, Quantity) values (@@IDENTITY, 78, 13, 18)
select * from OrderItems where orderid = @@IDENTITY;
