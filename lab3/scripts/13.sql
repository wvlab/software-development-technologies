-- 13:
-- Вивести назву інструмента, назву марки, кількість проданих екземплярів з ціною більше 3400
-- в період продажу з 2013-01-01 по 2013-04-01
SELECT
    I.name AS InstrumentName,
    B.name AS BrandName,
    SUM(R.quantity) AS TotalSold
FROM Instrument AS I
INNER JOIN Brand AS B ON I.brand_id = B.id
INNER JOIN Receipt AS R ON I.id = R.instrument_id
WHERE
    I.price > 3400
    AND R.sale_date BETWEEN '2013-01-01' AND '2013-04-01'
GROUP BY I.name, B.name;
