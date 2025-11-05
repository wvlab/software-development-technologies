-- 7: Із таблиці Марка вставити дані в таблицю МаркаCopyC тільки для записів, у яких МаркаId>5
USE zkMyCopy_v4;
GO

INSERT INTO zkMyCopy_v4.dbo.BrandCopyC (id, name, country, description)
SELECT id, name, country, description
FROM MusicShop.dbo.Brand
WHERE id > 5;
