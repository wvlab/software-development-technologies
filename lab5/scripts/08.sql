-- 8: Створити таблицю КласCopy та скопіювати з Клас дані, у яких Id>3 та <6
USE zkMyCopy_v4;
GO

CREATE TABLE ClassCopy (
    id INT,
    name NVARCHAR(100) NOT NULL,
    description NVARCHAR(MAX)
);

INSERT INTO zkMyCopy_v4.dbo.ClassCopy (id, name, description)
SELECT id, name, description
FROM MusicShop.dbo.Class
WHERE id > 3 AND id < 6;
