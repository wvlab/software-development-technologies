-- 21:
-- Вивести всі марки інструментів та наявні інструменти цих марок (якщо такі маються)
SELECT
    B.name AS BrandName,
    I.name AS InstrumentName
FROM Brand AS B
LEFT JOIN Instrument AS I ON B.id = I.brand_id;
