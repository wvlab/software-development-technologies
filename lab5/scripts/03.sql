-- 3: Отримати всі дати, в які було оформлено Чек на продаж, але не починалася дія Гарантії
SELECT sale_date FROM Receipt
EXCEPT
SELECT start_date FROM Warranty;
