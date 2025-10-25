-- 18: Визначити середню ціну марки, назву та Id марки (Марка може мати декілька інструментів від одного постачальника. Тож необхідно брати найбільшу ціну марки для кожного постачальника. Після цього необхідно знайти середню ціну від отриманого результату вже по всіх постачальниках – це і буде середньою ціною марки).
SELECT
    B.name AS brand_name,
    B.id AS brand_id,
    CAST(ROUND(AVG(brand_supplier_max.max_price), 2) AS DECIMAL(10, 2)) AS avg_brand_price
FROM (
    SELECT brand_id, supplier_id, MAX(price) AS max_price
    FROM Instrument
    GROUP BY brand_id, supplier_id
) AS brand_supplier_max
JOIN Brand AS B ON brand_supplier_max.brand_id = B.id
GROUP BY B.id, B.name;
