use northwind;
-- 1
select min(unit_price) as lowestprice, max(unit_price) as highestprice
from products;

-- 2
select round(avg (unit_price),2), count(product_id)
from products;
-- 3
select min(freight), max(freight)
from orders
where ship_country = 'UK';

-- 4
select avg (unit_price)
from products;
select product_name, unit_price
from products
WHERE unit_price > 28.86;

-- 5
select count(discontinued)
from products
where discontinued = 1;
-- no hay productos descontinuados
-- 6
select (product_id), product_name, discontinued
from products
where discontinued = 0
order by product_id desc
limit 10;

