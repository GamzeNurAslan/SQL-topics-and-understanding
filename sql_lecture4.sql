-- IN Kullanımı
SELECT *
FROM Customers
-- WHERE state = 'VA' OR state = 'GA' OR state = 'FL' böyle yazmak yerine IN ifadesini kullanabiliriz.
-- WHERE state IN ('VA', 'FL', 'GA')
-- WHERE state NOT IN ('VA', 'FL', 'GA')

-- ------------------------------------------------------------ --

SELECT *
FROM Customers
WHERE points  IN  (2273, 3073, 3675)

-- ------------------------------------------------------------ --

-- BETWEEN Kullanımı
SELECT *
FROM Customers
-- WHERE points >= 1000 AND points <= 3000  -- bunun yerine BETWEEN kullanmak daha iyidir.
WHERE points BETWEEN 1000 AND 3000

SELECT *
FROM customers
WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'

SELECT *
FROM customers
WHERE last_name LIKE 'b%'
-- sadece soyisim olarak almak istersek de 'brush%' kullanmak en mantıklısı
SELECT *
FROM customers
WHERE last_name LIKE 'brush%'

-- --------------------------------------------------- --

-- isminde herhangi bir yerde içinde e harfi geçen isimleri çıktı olarak görmek istiyorsak :
SELECT *
FROM customers
WHERE last_name LIKE '%b%' 

-- --------------------------------------------------- --

-- soyadı y ile biten tüm müşterilere ulaşmak istiyorum :
SELECT *
FROM customers 
WHERE last_name LIKE '%y' 

-- -------------------------------------------------- --

-- altta _ kadar karakter olmalı ama sonu y ile bitmeli
SELECT *
FROM customers 
WHERE last_name LIKE '_______y' 

-- -------------------------------------------------- --
-- eğer diyelim ki b ile başlamasını ama y ile bitmesini istiyoruz o zaman da:
SELECT *
FROM customers
WHERE last_name LIKE 'b____y'

-- % any number of characters 
-- _ single character

-- ------------------------------------------------- --

SELECT *
FROM customers 
/*WHERE city LIKE '%Waltham%' OR 
      city LIKE '%Orlando%' */
WHERE phone LIKE '%9' 

-- ----------------------------------------------- --
-- eğer sonunun 9 ile bitmesini istemiyorsanız NOT LIKE ifadesini kullanabilirsiniz.
SELECT *
FROM customers
WHERE phone NOT LIKE '%9'

