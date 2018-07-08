--OBTENER LA CANTIDAD PROMEDIO DE ITEMS QUE COMPRA CADA CLIENTE

select c.FirstName, c.LastName, avg(sq.quantity) as 'Promedio de productos' from customers c
inner join orders o on o.CustomerId = c.id
inner join 
(select o1.id, sum(oi.quantity) quantity from OrderItems oi 
inner join orders o1 on o1.id = oi.OrderId
group by o1.id) 
as sq  on o.id = sq.Id
group by c.FirstName, c.LastName

-- Subquery

select o1.id, sum(oi.quantity) quantity from OrderItems oi 
inner join orders o1 on o1.id = oi.OrderId
group by o1.id
