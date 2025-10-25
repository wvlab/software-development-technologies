-- 5: Визначити марки, для яких немає інструментів в крамниці.
SELECT DISTINCT B.name
FROM Brand AS B
WHERE B.id NOT IN (SELECT DISTINCT I.brand_id FROM Instrument AS I)
ORDER BY B.name;
