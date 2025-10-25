-- 07: Вивести всю множину записів, яка може бути для таблиць Клас та
-- Інструмент, по іменах з використанням псевдонімів
SELECT
    C.name AS ClassName,
    I.name AS InstrumentName
FROM Class AS C
CROSS JOIN Instrument AS I;
