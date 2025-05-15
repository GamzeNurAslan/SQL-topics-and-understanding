SELECT 
     -- işlem önceliği burada da geçerli
     first_name, 
     last_name, 
     points, 
     (points * 10) + 100 AS 'discount factor' -- AS kullanmanın faydası tanımlayıcı isimler verebilmemizdir. 
											  -- Ayrı olarak sütun adını tırnak işareti(tek/çift fark etmez) içine almamız gerekir.
FROM customers
  
/*--------------------------------------------*/
  
SELECT state -- Müşterilerin bulunduğu eyaletler
FROM customers
  
/*--------------------------------------------*/
  
SELECT DISTINCT state /*Eyaletlerin benzersiz listesini alacağız. Yani mantık olarak bir eyaletin isminin kopyalanmasını engelliyor.
FROM customers

/*--------------------------------------------*/

SELECT name, unit_price, unit_price * 1.1 AS new_price
FROM products
