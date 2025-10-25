-- 09:
-- Вивести всі інструменти, які мають клас «Духові»

-- Неявний синтаксис з’єднання (старий стиль синтаксису з’єднання)
SELECT
    Instrument.name, Instrument.price
FROM
    Instrument, Class
WHERE
    Instrument.class_id = Class.id AND Class.name = N'Духові';

-- Неявний синтаксис з використанням псевдонімів
SELECT
    I.name, I.price
FROM
    Instrument AS I, Class AS C
WHERE
    I.class_id = C.id AND C.name = N'Духові';

-- Явний синтаксис з’єднання (SQL ANSI:1992 синтаксис з’єднання)
SELECT
    Instrument.name, Instrument.price
FROM
    Instrument
INNER JOIN Class ON Instrument.class_id = Class.id
WHERE
    Class.name = N'Духові';

-- Явний синтаксис з використанням псевдонімів
SELECT
    I.name, I.price
FROM
    Instrument AS I
INNER JOIN Class AS C ON I.class_id = C.id
WHERE
    C.name = N'Духові';
