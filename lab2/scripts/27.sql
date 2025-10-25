-- 027:
-- * Загальна кількість по-батькові
-- * Кількість унікальних по-батькові
-- * Кількість покупців без по-батькові
SELECT COUNT(patronym) AS total_patronyms FROM Customer;

SELECT COUNT(DISTINCT patronym) AS unique_patronyms FROM Customer;

SELECT COUNT(*) AS no_patronym FROM Customer
WHERE patronym IS NULL;

