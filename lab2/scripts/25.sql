-- 25: Дні з більше ніж 25 чеків
SELECT sale_date AS "Date", COUNT(*) AS "Receipts Count"
FROM Receipt
GROUP BY sale_date
HAVING COUNT(*) > 25
ORDER BY sale_date;
