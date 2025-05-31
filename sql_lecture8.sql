-- SELF JOINS --
USE sql_hr;

SELECT 
  e.employee_id,
  e.first_name,
  m.first_name AS manager
FROM employees e
JOIN employees m 
    ON e.reports_to = m.employee_id;

/*employees tablosuna iki kez başvuruluyor:

e: çalışanı temsil eder

m: yöneticiyi temsil eder

e.reports_to = m.employee_id: Bu koşul, çalışanın bağlı olduğu yöneticiyi bulmak için kullanılır. Yani çalışan kaydındaki reports_to alanı, yöneticinin employee_id alanına eşitse, bu kişi onun yöneticisidir.
*/

-- JOINING MULTIPLE TABLES --
/* İki tablodan fazlasını nasıl birleştiririz? */

--------------------------------------------------------

USE sql_store;

SELECT *
FROM orders o
JOIN  customers c
   ON o.customer_id = c.customer_id
JOIN order_statuses os
   ON o.status = os.order_status_id -- böyle yazılırsa karmaşık bir tablo ile karşılaşabiliriz 

-------------------------------------------------------
  
USE sql_store;

SELECT 
  o.order_id,
  o.order_date,
  c.first_name,
  c.last_name,
  os.name AS status
FROM orders o
JOIN  customers c
   ON o.customer_id = c.customer_id
JOIN order_statuses os
   ON o.status = os.order_status_id

------------------------------------------------------
  
-- Exercise --
USE sql_invoicing;

SELECT 
   p.date,
   p.invoice_id,
   p.amount,
   c.name,
   pm.name
FROM payments p
JOIN clients c 
   ON p.client_id = c.client_id
JOIN payment_methods pm
   ON p.payment_method = pm.payment_method_id
