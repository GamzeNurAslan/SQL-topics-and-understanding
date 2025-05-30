-- INNER JOIN --

SELECT *
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id

SELECT order_id, first_name, last_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id

SELECT order_id, customer_id, first_name, last_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id -- hata alırız çünkü hem siparişler hem de müşteriler
-- tablodaki sütunda görünüyor ve bu nedenle MySQL hangi tabloyu seçmek istediğini bilemiyor.

SELECT order_id, orders.customer_id, first_name, last_name
FROM orders
JOIN customers ON orders.customer_id = customers.customer_id

SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
JOIN customers c 
    ON o.customer_id = c.customer_id
    
-- exercise --
SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id

-- Joining Across Databases --

SELECT *
FROM order_items oi
JOIN sql_inventory.products p ON oi.product_id = p.product_id -- birden fazla veritabanındaki tablolar

USE sql_inventory;

SELECT *
FROM sql_store.order_items oi
JOIN products p ON oi.product_id = p.product_id


