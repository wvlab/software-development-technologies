-- 17: Видалити записи з таблиці «Гарантія», у яких ПокупецьId>3 та у яких ПокупецьId<5
USE MusicShop;
GO

DELETE FROM Warranty
WHERE customer_id > 3 AND customer_id < 5;
