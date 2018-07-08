-- Clientes que no hayan comprado nada:

select c.FirstName, c.LastName
from Customers c
where c.Id not in  -- el select de abajo es independiente de arriba, porque no hay un c.customerid
(
select customerid from orders where OrderDate >= '2013-01-01' and OrderDate < '2014-01-01'
)

-- OTRA MANERA con not exists (si el id del customer encaja con el customerid del order entonces no lo mostrará):
select c.FirstName, c.LastName
from Customers c
where not exists
(
select * from orders o
where c.Id = o.CustomerId 
and o.OrderDate >= '2013-01-01' and OrderDate < '2014-01-01'
)
