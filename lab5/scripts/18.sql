-- 18: Видалити з таблиці «Гарантія» записи про покупців з телефоном на «063…»
USE MusicShop;
GO

DELETE FROM Warranty
WHERE customer_id IN (SELECT id FROM Customer WHERE phone LIKE '063%');
