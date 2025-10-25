-- 24: Кількість чеків в день, впорядкувати по даті
SELECT sale_date AS "Date", COUNT(*) AS "Receipts Count"
FROM Receipt
GROUP BY sale_date
ORDER BY sale_date;
