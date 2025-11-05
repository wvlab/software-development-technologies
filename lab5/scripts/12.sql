-- 12: В таблиці «Постачальники» для постачальників з ідентифікаторами від 15 до 40 змінити місто на «Київ»
USE MusicShop;
GO

UPDATE Supplier
SET address = 'Київ'
WHERE id BETWEEN 15 AND 40;
