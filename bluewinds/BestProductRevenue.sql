--OBTENER EL PRODUCTO QUE MAS GANANCIA GENERO ENTRE MARZO Y OCTUBRE DE 2013

select top 1
p.ProductName
, p.UnitPrice
, sum(oi.Quantity*oi.UnitPrice) ganancias
from Products p
inner join OrderItems oi
on oi.ProductId = p.Id
inner join Orders o
on o.Id = oi.OrderId
where year (o.OrderDate) = 2013
AND month(o.OrderDate) >= 3
AND month(o.OrderDate) <= 10

group by p.ProductName, p.UnitPrice

order by ganancias desc
