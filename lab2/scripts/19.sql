-- 19: Кількість унікальних прізвищ покупців
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM Customer;
