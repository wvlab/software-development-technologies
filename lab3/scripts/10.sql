-- 10:
-- Вивести рік виробництва, Назву інструмента, ціну, характеристики для інструментів,
-- які вироблені або в «Німеччина» або в «Японія». Сортувати за назвою
SELECT
    I.year_of_production,
    I.name,
    I.price,
    I.characteristics
FROM Instrument AS I
INNER JOIN Brand AS B ON I.brand_id = B.id
WHERE B.country IN (N'Німеччина', N'Японія')
ORDER BY I.name;
