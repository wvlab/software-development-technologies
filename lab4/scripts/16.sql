-- 16: Вивести кількість інструментів по класу, які продавали з одному і тому ж самому покупцю більше 1 разу.
SELECT
    C.name AS class_name,
    COUNT(DISTINCT I.id) AS number_of_instruments
FROM (
    SELECT R.instrument_id
    FROM Receipt AS R
    JOIN Warranty AS W ON R.id = W.receipt_id
    GROUP BY R.instrument_id, W.customer_id
    HAVING COUNT(R.id) > 1
) AS repeated_sales
JOIN Instrument AS I ON repeated_sales.instrument_id = I.id
JOIN Class AS C ON I.class_id = C.id
GROUP BY C.name;
