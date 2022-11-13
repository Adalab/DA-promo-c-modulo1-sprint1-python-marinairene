USE northwind;
-- 1
SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id
LIMIT 10;
-- 2
SELECT product_id, product_name, unit_price
FROM products
ORDER BY product_id DESC
LIMIT 10;
-- 3
SELECT DISTINCT order_id, product_id
FROM order_details;
-- 4
SELECT DISTINCT order_id
FROM order_details
LIMIT 2;
-- 5
SELECT unit_price AS ImporteTotal, order_id
FROM order_details
ORDER BY unit_price DESC
LIMIT 3;
-- 6
SELECT order_id, unit_price 
FROM order_details
ORDER BY unit_price DESC 
limit 5
offset 5;
-- 7
select distinct category_name as NombredeCategoria
from categories;
-- 8 
select shipped_date, order_id, date_add(shipped_date, interval 5 day) as FechaRetrasada
from orders;
-- 9
select unit_price, product_name
from products
where unit_price between 15 and 50
order by unit_price;
-- 10
select unit_price, product_name
from products
where unit_price in (18, 19, 20);
