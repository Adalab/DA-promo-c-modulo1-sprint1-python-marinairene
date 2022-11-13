USE northwind;
-- 1
SELECT employee_id, last_name, first_name
FROM employees;
-- 2
SELECT unit_price
FROM products
WHERE unit_price<= 5;
-- 3
SELECT *
FROM products
WHERE unit_price= 18 OR unit_price= 19 OR unit_price=20;
-- 4
SELECT *
FROM products
WHERE unit_price>= 15 AND unit_price<= 50;
-- 5
SELECT *
FROM products
WHERE unit_price IS NULL;
-- 6
SELECT *
FROM products
WHERE unit_price< 15 AND product_id< 10;
-- 7
SELECT *
FROM products
WHERE NOT unit_price>= 15 AND NOT product_id>= 10;
-- 8
SELECT ship_country, ship_region
FROM orders;









