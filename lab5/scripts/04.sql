-- 4: Отримати всі різні дати, в які було оформлено Чек на продаж і починалася дія Гарантії
SELECT sale_date FROM Receipt
INTERSECT
SELECT start_date FROM Warranty;
