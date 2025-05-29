SELECT *
FROM customers
WHERE phone IS NOT NULL

-- Get the orders that are not shipped
SELECT *
FROM orders 
WHERE shipper_id IS NULL


-- The ORDER BY Clause
SELECT *
FROM customers
ORDER BY first_name DESC -- tersten sırayla yazar.

SELECT *
FROM customers
ORDER BY state, first_name -- state isimlerini sırala.

SELECT *
FROM customers
ORDER BY state DESC, first_name DESC 

-- Diğer veritabanı yönetim sistemlerinden biri de MySQL'de sıralama yapılabilmesidir.

SELECT first_name, last_name, 10 AS points
FROM customers
ORDER BY 1, 2

SELECT birth_date, first_name, last_name, 10 AS points
FROM customers
ORDER BY first_name

-- Exercise
SELECT *, quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC 

-- ---------------------------------------------------- --

-- The LIMIT Clause -- sınırlama --

SELECT *
FROM customers
LIMIT 3

SELECT *
FROM customers
LIMIT 6, 3

-- Exercise -- 
-- Get the top three loyal customers
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3



