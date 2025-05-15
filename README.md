![image](https://github.com/user-attachments/assets/9aa2754e-4308-4dfa-92ad-62661d2e6862)

SQL (Structured Query Language), veritabanlarıyla iletişim kurmak için kullanılan bir sorgulama dilidir. Temel olarak, veritabanında veri oluşturmak, okumak, güncellemek ve silmek (CRUD işlemleri: Create, Read, Update, Delete) için kullanılır.

🔹 SQL’in Temel Komutları

1. SELECT – Veri Okuma (Read)
Veritabanından veri çekmek için kullanılır.

SELECT * FROM ogrenciler;

Bu sorgu ogrenciler tablosundaki tüm satır ve sütunları getirir.

2. INSERT – Veri Ekleme (Create)
Yeni kayıt eklemek için kullanılır.

INSERT INTO ogrenciler (isim, yas) 

VALUES ('Ali', 22);

3. UPDATE – Veri Güncelleme (Update)
Var olan veriyi değiştirmek için kullanılır.

UPDATE ogrenciler SET yas = 27

WHERE isim = 'Gamze';

4. DELETE – Veri Silme (Delete)
Veriyi silmek için kullanılır.

DELETE FROM ogrenciler 

WHERE isim = 'Ali';

------------------------------------------------------------------

🔹 Tablo Oluşturma
Veritabanında yeni tablo oluşturmak için CREATE TABLE komutu kullanılır:

CREATE TABLE ogrenciler (

    id INT PRIMARY KEY,
    
    isim VARCHAR(50),
    
    yas INT
);

-------------------------------------------------------------------

🔹 Koşullar ve Filtreleme
WHERE, AND, OR, LIKE, BETWEEN, IN gibi yapılar kullanılır:

SELECT * FROM ogrenciler 

WHERE yas > 20 AND isim LIKE 'A%';

-------------------------------------------------------------------

🔹 Sıralama ve Gruplama
ORDER BY sıralama için:

SELECT * FROM ogrenciler 

ORDER BY yas DESC;

GROUP BY gruplama için:

SELECT yas, COUNT(*) FROM ogrenciler

GROUP BY yas;

------------------------------------------------------------------

🔹 JOIN (Tabloları Birleştirme)
İki veya daha fazla tabloyu ilişkilendirmek için kullanılır:

SELECT o.isim, d.ders_adi 

FROM ogrenciler o

JOIN dersler d ON o.id = d.ogrenci_id;

-------------------------------------------------------------------

Kısaca SQL:
İnsan dili gibi okunur.
Veritabanıyla konuşmanın en yaygın yoludur.
MySQL, PostgreSQL, SQL Server, SQLite gibi sistemlerde kullanılır.

