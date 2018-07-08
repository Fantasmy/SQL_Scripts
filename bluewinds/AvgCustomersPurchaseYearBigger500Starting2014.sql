-- Promedio y total de gasto por cliente por año en la tienda donde le promedio seamayor a 500 para todas las compras desde el 2014 en adelante

select month(o.OrderDate), o.CustomerId, avg(totalamount) , sum(totalamount) 
from orders o
where orderdate >= '2014-01-01'

group by o.CustomerId, month(o.OrderDate)
having avg(totalamount) > 500
order by 2,1 
