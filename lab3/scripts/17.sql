-- 17:
-- Вивести кількість інструментів марки (назву марки), які мають клас «Духові»
SELECT
    B.name AS BrandName,
    COUNT(I.id) AS NumberOfInstruments
FROM Brand AS B
INNER JOIN Instrument AS I ON B.id = I.brand_id
INNER JOIN Class AS C ON I.class_id = C.id
WHERE C.name = N'Духові'
GROUP BY B.name;
