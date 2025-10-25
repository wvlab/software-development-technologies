-- 06: Вивести всю множину записів, яка може бути для таблиць Клас та Інструмент, по іменах
SELECT
    Class.name,
    Instrument.name
FROM Class
CROSS JOIN Instrument;
