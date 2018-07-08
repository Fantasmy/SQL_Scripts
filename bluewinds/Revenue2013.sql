-- Calcular la suma del valor de todas las ordenes del año 2013

select sum(o.TotalAmount) as 'Billing in 2013' 
from Orders o
where year(o.OrderDate) = '2013'

--OTRO MÉTODO:
select sum(o.TotalAmount) as 'Billing in 2013' 
from Orders o
where o.OrderDate >= '2013-01-01'
AND O.OrderDate < '2014-01-01'
