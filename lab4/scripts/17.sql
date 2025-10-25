-- 17: Вивести Назву інструмента, середню кількість проданих екземплярів, назву марки, середню кількість проданих екземплярів марки та рік виробництва для інструментів, чия середня кількість проданих екземплярів вище, ніж середня кількість проданих екземплярів для їх марки.
SELECT
    I.name AS instrument_name,
    inst_sales.avg_qty AS avg_instrument_sales,
    B.name AS brand_name,
    brand_sales.avg_qty AS avg_brand_sales,
    I.year_of_production
FROM
    Instrument AS I
JOIN Brand AS B ON I.brand_id = B.id
JOIN (
    SELECT instrument_id, AVG(CAST(quantity AS FLOAT)) AS avg_qty
    FROM Receipt
    GROUP BY instrument_id
) AS inst_sales ON I.id = inst_sales.instrument_id
JOIN (
    SELECT I.brand_id, AVG(CAST(R.quantity AS FLOAT)) AS avg_qty
    FROM Receipt AS R
    JOIN Instrument AS I ON R.instrument_id = I.id
    GROUP BY I.brand_id
) AS brand_sales ON I.brand_id = brand_sales.brand_id
WHERE
    inst_sales.avg_qty > brand_sales.avg_qty;
