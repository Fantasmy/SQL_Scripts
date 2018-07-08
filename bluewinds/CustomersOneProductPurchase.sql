-- OBTENER EL NOMBRE DE LOS CLIENTES QUE REALIZARON ORDDENES CON 1 SOLO ITEM

select distinct 
	c.FirstName
	, c.LastName
from Customers c
inner join Orders o 
	on o.CustomerId = c.Id
inner join OrderItems oi 
	on oi.OrderId = o.Id
group by c.FirstName, c.LastName, o.Id
having count(oi.id) = 1
order by firstname, lastname

