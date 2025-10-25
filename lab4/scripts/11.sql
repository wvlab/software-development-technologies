-- 11: Вивести дані про постачальників, які мають в таку ж адресу що й ПостачальникId=7.
SELECT *
FROM Supplier
WHERE address = (SELECT address FROM Supplier WHERE id = 7)
AND id <> 7;
