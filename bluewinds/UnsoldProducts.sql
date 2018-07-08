-- Obtener todos los productos que nunca se vendieron

select * 
from Products p
where Not p.Id In 
(
select oi.ProductId
from OrderItems oi
);

-- Otro método
select p.* 
from products p
left join orderitems oi on oi.ProductId = p.Id
where oi.ProductId is Null

--MÉTODO con exists y subquery:
select p.* 
from products p
where NOT EXISTS -- que el select devuelva vacío
(
select oi.ProductId
from OrderItems oi 
where oi.ProductId = p.Id
);
