-- 13: Збільшити ціну на духові та клавішні на 25%
USE MusicShop;
GO

UPDATE Instrument
SET price = price * 1.25
WHERE class_id IN (SELECT id FROM Class WHERE name IN ('Духові', 'Клавішні'));
