-- 14: Збільшити мінімальну ціну на інструмент на 0,7
USE MusicShop;
GO

UPDATE Instrument
SET price = price + 0.7
WHERE price = (SELECT MIN(price) FROM Instrument);
