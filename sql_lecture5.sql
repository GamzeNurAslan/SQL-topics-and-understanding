SELECT *
FROM customers 
WHERE last_name LIKE '%field' /*Bu ifadenin aynısını Regexp kullanarak da bulabiliriz */

SELECT *
FROM customers 
WHERE last_name REGEXP 'field'

SELECT *
FROM customers
WHERE last_name REGEXP '^field' -- last_name'in başının field ile başlaması gerektiğini gösterir 

SELECT *
FROM customers
WHERE last_name REGEXP 'field$'  -- last name'in sonunun fields ile bitmesi gerektiğini söyler.

SELECT *
FROM customers
WHERE last_name REGEXP 'field|mac'

SELECT *
FROM customers
WHERE last_name REGEXP '^field|mac|rose' 

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e' -- ge veya ie veya me olsun istenir bu şekildeki halinde

SELECT *
FROM customers
WHERE last_name REGEXP '[a-h]e'

-- ^ beginning
-- $ end
-- | logical or
-- [abcd] liste yapısı için
-- [a-f] aralık belitmek için

/* Get the customers whose 
   first names are ELKA or AMBUR 
   last names end with EY or ON 
   last names start with MY or contains SE
   last names contain B followed by R or U */
   
SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur' 

SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$' 

SELECT *
FROM customers
WHERE last_name REGEXP '^my|se'

SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu'


