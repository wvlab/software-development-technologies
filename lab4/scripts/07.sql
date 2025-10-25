-- 7: Видати Марку, Назву інструмента, для яких дата початку дії гарантії 01.01.2015.
-- Варіант 1: Запит із 2 підзапитами
SELECT B.name AS brand_name, I.name AS instrument_name
FROM Brand AS B
JOIN Instrument AS I ON B.id = I.brand_id
WHERE I.id IN (
    SELECT R.instrument_id
    FROM Receipt AS R
    WHERE R.id IN (
        SELECT W.receipt_id
        FROM Warranty AS W
        WHERE W.start_date = '2015-01-01'
    )
);

-- Варіант 2: Запит через JOIN (часто більш ефективний)
/*
SELECT B.name AS brand_name, I.name AS instrument_name
FROM Brand AS B
JOIN Instrument AS I ON B.id = I.brand_id
JOIN Receipt AS R ON I.id = R.instrument_id
JOIN Warranty AS W ON R.id = W.receipt_id
WHERE W.start_date = '2015-01-01';
*/
