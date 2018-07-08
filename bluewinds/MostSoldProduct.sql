--obtener el producto que mas unidades vendio en 2012

select top 1
	p.ProductName
	, p.Id 
	, sum(oi.Quantity) AS VENDIDOS
from Products p
inner join OrderItems oi 
	on oi.ProductId = p.Id
inner join Orders o 
	on oi.OrderId = o.Id 
where year(o.OrderDate) = 2012

group by p.ProductName, p.Id

order by VENDIDOS desc
