-- Where nedir, buna bakacağız!

SELECT *
FROM Customers
WHERE points > 3000

SELECT *
FROM Customers
WHERE state = 'VA' -- Buradaki VA ifadesi va şeklinde de olabilir, aynı sonuç çıkar yani 

SELECT *
FROM Customers 
WHERE state != 'va' 

SELECT *
FROM Customers 
WHERE state <> 'va' -- yukarıdaki != ile aynı işlevi görür 

SELECT *
FROM Customers
WHERE birth_date > '1990-01-01'

-- Get the orders birthday this year
SELECT *
FROM Customers
WHERE birth_date >= '2025-01-01' 

-- ------------------------------------------------------------------- --

-- AND, OR and NOT Operators

SELECT *
FROM Customers 
WHERE birth_date > '1990-01-01' AND points > 1000 

SELECT *
FROM Customers 
WHERE birth_date > '1990-01-01' OR points > 1000 

SELECT *
FROM Customers 
WHERE birth_date > '1990-01-01' AND 
	  (points > 1000 OR 
       state = 'VA')

-- aritmetik işlemlerde öncelik sırasına göre; () , *, /, +, - şeklindedir.
-- mantıksal operatörde ise bu sıra; AND, OR şeklindedir.alter

SELECT *
FROM Customers 
WHERE NOT (birth_date <= '1990-01-01' AND points > 1000) 
	
-- 6. ogeyi sec ve onun puanını döndür
SELECT *
FROM Customers
WHERE customer_id = 6 AND (points >= 3000)


