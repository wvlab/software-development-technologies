-- 28: Клас, у якого середня ціна більше 3000
SELECT c.name AS class_name, AVG(i.price) AS avg_price
FROM Instrument i
JOIN Class c ON i.class_id = c.id
GROUP BY c.name
HAVING AVG(i.price) > 3000;
