-- 13: Список інструментів впорядкований по назві та ціні DESC без повторів
SELECT DISTINCT * FROM Instrument
ORDER BY name ASC, price DESC;
