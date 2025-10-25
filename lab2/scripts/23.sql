-- 23: Перелік марок та кількість постачальників, які мають ціну 2000
SELECT b.name AS "Brand",
       COUNT(DISTINCT i.supplier_id) AS "Suppliers with 2000"
FROM Instrument i
JOIN Brand b ON i.brand_id = b.id
WHERE i.price = 2000
GROUP BY b.name;
