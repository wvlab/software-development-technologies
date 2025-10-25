-- 6: Вивести Назву інструмента, ціну, марку, які було продано в липні.
SELECT DISTINCT I.name, I.price, B.name AS brand_name
FROM Instrument AS I
JOIN Brand AS B ON I.brand_id = B.id
WHERE I.id IN (
    SELECT R.instrument_id
    FROM Receipt AS R
    WHERE MONTH(R.sale_date) = 7
)
ORDER BY I.name;
