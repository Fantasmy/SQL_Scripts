-- Promedio y total de gasto por cliente por año en la tienda donde le promedio sea mayor a 500

select month(o.OrderDate), o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, month(o.OrderDate)
having avg(totalamount) > 500
order by 2,1 
