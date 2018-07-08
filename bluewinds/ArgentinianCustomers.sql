-- Obtener todos los clientes de Argentina que tengan compras

select c.FirstName, c.LastName
from Customers c
where c.Id in
(
select o.CustomerId from Orders o
)
and c.Country like 'Argentina'

