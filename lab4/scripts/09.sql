-- 9: Вивести Назву інструмента, рік виробництва, клас та кількість проданих екземплярів, якщо їх кількість проданих екземплярів вище або дорівнює середній кількості проданих екземплярів в крамниці для всіх інструментів.
SELECT
    I.name,
    I.year_of_production,
    C.name AS class_name,
    SUM(R.quantity) AS total_sold
FROM Instrument AS I
JOIN Receipt AS R ON I.id = R.instrument_id
JOIN Class AS C ON I.class_id = C.id
GROUP BY I.id, I.name, I.year_of_production, C.name
HAVING SUM(R.quantity) >= (
    SELECT AVG(total_quantity_per_instrument)
    FROM (
        SELECT SUM(quantity) AS total_quantity_per_instrument
        FROM Receipt
        GROUP BY instrument_id
    ) AS sub
);
