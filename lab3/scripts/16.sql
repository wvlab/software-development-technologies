-- 16:
-- Вивести кількість інструментів марки (назву марки)
SELECT
    B.name AS BrandName,
    COUNT(I.id) AS NumberOfInstruments
FROM Brand AS B
INNER JOIN Instrument AS I ON B.id = I.brand_id
GROUP BY B.name;
