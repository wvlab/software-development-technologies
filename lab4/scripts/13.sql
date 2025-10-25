-- 13: Вивести всі інструменти, тієї ж марки, що і «Рояль».
SELECT *
FROM Instrument
WHERE brand_id = (SELECT brand_id FROM Instrument WHERE name = 'Рояль')
AND name <> 'Рояль';
