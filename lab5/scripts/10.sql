-- 10: Експортувати дані з таблиці Клас БД zkMy в Таблицю КласCopyNew БД zkMyCopy
USE zkMyCopy_v4;
GO

SELECT *
INTO zkMyCopy_v4.dbo.ClassCopyNew
FROM MusicShop.dbo.Class;
