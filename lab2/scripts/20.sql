-- 20: Кількість імен покупців на літеру К
SELECT COUNT(*) AS names_start_K
FROM Customer
WHERE first_name LIKE 'К%';
