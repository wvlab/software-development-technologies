-- 5: Вивести покупців, які купляли інструменти з роком виробництва «2010» ТА «2000»
SELECT
    c.id,
    c.last_name,
    c.first_name,
    c.patronym
FROM
    Customer c
JOIN
    Warranty w ON c.id = w.customer_id
JOIN
    Receipt r ON w.receipt_id = r.id
JOIN
    Instrument i ON r.instrument_id = i.id
WHERE
    i.year_of_production IN (2000, 2010)
GROUP BY
    c.id, c.last_name, c.first_name, c.patronym
HAVING
    COUNT(DISTINCT i.year_of_production) = 2;
