-- 08: Вивести назву інструментів та марку


-- Неявний синтаксис з’єднання (старий стиль синтаксису з’єднання)
SELECT
    Instrument.name,
    Brand.name
FROM
    Instrument, Brand
WHERE
    Instrument.brand_id = Brand.id;

-- Неявний синтаксис з використанням псевдонімів
SELECT
    I.name,
    B.name
FROM
    Instrument AS I, Brand AS B
WHERE
    I.brand_id = B.id;

-- Явний синтаксис з’єднання (SQL ANSI:1992 синтаксис з’єднання)
SELECT
    Instrument.name,
    Brand.name
FROM
    Instrument
INNER JOIN Brand ON Instrument.brand_id = Brand.id;

-- Явний синтаксис з використанням псевдонімів
SELECT
    I.name,
    B.name
FROM
    Instrument AS I
INNER JOIN Brand AS B ON I.brand_id = B.id;
