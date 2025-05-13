USE sql_store;

-- Tüm müşterileri çekmek için tüm sütunları seçiyoruz
SELECT * FROM customers;

SELECT * 
FROM customers
-- Birden fazla SQL ifade olduğunda her ifadeyi noktalı virgül ile sonlandırmak gerekli.
-- WHERE customer_id = 1 -- 1. sırada bulunan Babara adlı kişi çıkar sonuçta
ORDER BY first_name   -- Müşterileri adlarına göre sırlamamızı sağlar.
-- =Bu ifadeler SELECT, FROM ve ORDER BY yani bu 3 ifade siparişin verildiği yerdir.
-- =Bu cümlelerin sırası önemlidir, bu yüzden her zaman önce SELECT'i kullanırız. Sonra nereden, nereye ve neye göre olduğu sıralanır.
-- veya üstteki gibi yazmak yerine tek bir satırda da kullanılabilir yani SELECT * FROM cutomers gibi :)
