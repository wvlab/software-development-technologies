-- 10: Id інструментів проданих у травні 2015 кількість >=3
SELECT instrument_id FROM Receipt
WHERE MONTH(sale_date) = 5 AND YEAR(sale_date) = 2015 AND quantity >= 3;
