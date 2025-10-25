-- 15: Вивести кількість класів, в яких кількість інструментів класу>3.
SELECT COUNT(class_id) AS number_of_classes
FROM (
    SELECT class_id
    FROM Instrument
    GROUP BY class_id
    HAVING COUNT(id) > 3
) AS classes_with_many_instruments;
