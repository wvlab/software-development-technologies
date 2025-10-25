-- 20: Вивести постачальників, які постачають інструменти класу «Духові» ТА «Струнні».
SELECT S.name
FROM Supplier AS S
JOIN Instrument AS I ON S.id = I.supplier_id
JOIN Class AS C ON I.class_id = C.id
WHERE C.name IN ('Духові', 'Струнні')
GROUP BY S.id, S.name
HAVING COUNT(DISTINCT C.name) = 2;
