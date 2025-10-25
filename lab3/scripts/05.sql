-- 05: Вивести всю множину записів, яка може бути для таблиць Інструмент та Постачальник, по іменах
SELECT
    Instrument.name,
    Supplier.name
FROM Instrument
CROSS JOIN Supplier;
