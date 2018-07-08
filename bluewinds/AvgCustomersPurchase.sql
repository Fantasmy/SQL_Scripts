-- Promedio de compra y gastos total por cliente

select o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId
order by 1 -- cliente id 1

select o.OrderDate, o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, o.OrderDate
order by 1 -- cliente id 1
