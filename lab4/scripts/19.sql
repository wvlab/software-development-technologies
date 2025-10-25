-- 19: Вивести марки, інструменти яких вироблено лише в 2005 році (тобто не вироблялись в жодному іншому році).
SELECT B.name
FROM Brand AS B
JOIN Instrument AS I ON B.id = I.brand_id
GROUP BY B.id, B.name
HAVING
    MIN(I.year_of_production) = 2005
    AND MAX(I.year_of_production) = 2005;
