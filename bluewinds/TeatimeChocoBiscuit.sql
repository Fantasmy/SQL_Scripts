-- Obtener todos los clientes que hayan comprado alguna vez mas de 30 "Teatime Chocolate Biscuits"

select u.*

from Customers u

inner join Orders o on o.CustomerId = u.Id
inner join OrderItems oi on oi.OrderId = o.Id
inner join Products p on p.Id = o.Id
where p.Id = 55
AND oi.Quantity > 30
