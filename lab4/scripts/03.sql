-- 3: Визначити класи, інструментів яких не має.
SELECT DISTINCT C.name
FROM Class AS C
WHERE C.id NOT IN (SELECT DISTINCT I.class_id FROM Instrument AS I)
ORDER BY C.name;
