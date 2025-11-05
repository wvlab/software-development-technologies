-- 15: Збільшити максимальну ціну на інструмент в 2 рази
USE MusicShop;
GO

UPDATE Instrument
SET price = price * 2
WHERE price = (SELECT MAX(price) FROM Instrument);
