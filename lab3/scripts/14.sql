-- 14:
-- Вивести назву інструмента, назву марки, кількість проданих екземплярів,
-- які вироблені не в 2001 та 2005 рр. Сортувати за назвою
SELECT
    I.name AS InstrumentName,
    B.name AS BrandName,
    SUM(R.quantity) AS TotalSold
FROM Instrument AS I
INNER JOIN Brand AS B ON I.brand_id = B.id
INNER JOIN Receipt AS R ON I.id = R.instrument_id
WHERE I.year_of_production NOT IN (2001, 2005)
GROUP BY I.name, B.name
ORDER BY I.name;
