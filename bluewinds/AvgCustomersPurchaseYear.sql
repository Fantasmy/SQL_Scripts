-- Promedio y total de gasto por cliente por año en la tienda

select o.OrderDate, o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, year(o.OrderDate)
order by 1 -- ordena por la 1a columna del select (select o.OrderDate, o.CustomerId)


select o.OrderDate, o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, year(o.OrderDate)
order by 2 -- ordena por la columna 2 (customerId) 
select * from orders
where CustomerId = 1

--Solo salen un mes de cada (mete años diferentes pero del mismo mes):

select month(o.OrderDate), o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, month(o.OrderDate)
order by 2 -- ordena por la columna 2 (customerId) 
select * from orders
where CustomerId = 1

--Agrupa por año, mes, cliente:

select month(o.OrderDate), o.CustomerId, avg(totalamount) , sum(totalamount)
from orders o
group by o.CustomerId, year(o.OrderDate)
order by 2,1 -- ordena por la columna 2 (customerId) 
select * from orders
where CustomerId = 1

update orders set orderdate = '2014-10-13' where id = 455

