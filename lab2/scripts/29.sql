-- 029: Середні ціни по марках, де середня > 4500
SELECT b.name AS brand_name, AVG(i.price) AS avg_price
FROM Instrument i
JOIN Brand b ON i.brand_id = b.id
GROUP BY b.name
HAVING AVG(i.price) > 4500;
