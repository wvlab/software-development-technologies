-- 22: Кількість постачальників та марок по ціні інструментів
SELECT price AS "Price",
       COUNT(DISTINCT supplier_id) AS "Suppliers Count",
       COUNT(DISTINCT brand_id) AS "Brands Count"
FROM Instrument
GROUP BY price;
