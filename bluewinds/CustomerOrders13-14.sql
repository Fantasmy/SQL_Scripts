-- Obtener el Nombre y Apellido de todos los clientes que hayan comprado algo entre 2013-01-01 y 2014-07-08 ordenados por nombre

select c.FirstName, c.LastName, o.OrderDate
from Orders o
inner join Customers c on c.Id = o.CustomerId
where OrderDate >= '2013-01-01' and OrderDate <= '2014-07-08'
order by 1 , 2
