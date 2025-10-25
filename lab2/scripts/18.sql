-- 18: Інформація про класи інструментів: кількість, мін, макс, середня ціна по класах
SELECT c.name AS class_name,
       COUNT(i.id) AS total_instruments,
       MIN(i.price) AS min_price,
       MAX(i.price) AS max_price,
       AVG(i.price) AS avg_price
FROM Class c
LEFT JOIN Instrument i ON i.class_id = c.id
GROUP BY c.name;
