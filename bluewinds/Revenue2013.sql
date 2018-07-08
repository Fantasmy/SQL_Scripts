-- Calcular la suma del valor de todas las ordenes del a�o 2013

select sum(o.TotalAmount) as 'Billing in 2013' 
from Orders o
where year(o.OrderDate) = '2013'

--OTRO M�TODO:
select sum(o.TotalAmount) as 'Billing in 2013' 
from Orders o
where o.OrderDate >= '2013-01-01'
AND O.OrderDate < '2014-01-01'
