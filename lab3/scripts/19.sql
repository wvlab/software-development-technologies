-- 19:
-- Вивести список інструментів, які були продані в період з 01 по 07 червня:
-- Назву інструмента, марку, дату продажу. Відсортувати за маркою, назвою інструмента
SELECT
    I.name AS InstrumentName,
    B.name AS BrandName,
    R.sale_date
FROM Instrument AS I
INNER JOIN Brand AS B ON I.brand_id = B.id
INNER JOIN Receipt AS R ON I.id = R.instrument_id
WHERE MONTH(R.sale_date) = 6 AND DAY(R.sale_date) BETWEEN 1 AND 7
ORDER BY BrandName, InstrumentName;
