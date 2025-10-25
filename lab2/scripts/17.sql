-- 17: Кількість інструментів, мін, макс, середня ціна
SELECT COUNT(*) AS total_instruments,
       MIN(price) AS min_price,
       MAX(price) AS max_price,
       AVG(price) AS avg_price
FROM Instrument;
