-- 9: Експортувати дані про інструменти 1995 року в Таблицю ІнструментCopy в БД zkMyCopy
USE zkMyCopy_v4;
GO

SELECT *
INTO zkMyCopy_v4.dbo.InstrumentCopy
FROM MusicShop.dbo.Instrument
WHERE year_of_production = 1995;
