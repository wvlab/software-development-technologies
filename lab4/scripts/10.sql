-- 10: Вивести марки інструментів, у яких середня ціна, вище середньої ціни в крамниці.
SELECT B.name
FROM Brand AS B
JOIN Instrument AS I ON B.id = I.brand_id
GROUP BY B.name
HAVING AVG(I.price) > (SELECT AVG(price) FROM Instrument);
