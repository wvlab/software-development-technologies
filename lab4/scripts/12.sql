-- 12: Вивести всі інструменти, які мають клас, такий самий як «Флейта» та мають ціну > середня ціна.
SELECT *
FROM Instrument
WHERE
    class_id = (SELECT class_id FROM Instrument WHERE name = 'Флейта')
    AND price > (SELECT AVG(price) FROM Instrument)
    AND name <> 'Флейта'
ORDER BY name DESC;
