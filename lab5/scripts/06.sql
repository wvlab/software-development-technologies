-- 6: Створення БД zkMyCopy, таблиць BrandCopyA/B/C та вставка даних
CREATE DATABASE zkMyCopy_v4;
GO

USE zkMyCopy_v4;
GO

-- Створення таблиці BrandCopyA (аналогічна Brand)
CREATE TABLE BrandCopyA (
    id INT,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(100),
    description NVARCHAR(MAX)
);

-- Створення таблиці BrandCopyB (з додатковим полем)
CREATE TABLE BrandCopyB (
    id INT,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(100),
    description NVARCHAR(MAX),
    Abbreviation NVARCHAR(10) -- Додаткове поле
);

-- Створення таблиці BrandCopyC (аналогічна Brand)
CREATE TABLE BrandCopyC (
    id INT,
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(100),
    description NVARCHAR(MAX)
);
GO

-- Вставка всіх даних з MusicShop.dbo.Brand в BrandCopyA
INSERT INTO zkMyCopy_v4.dbo.BrandCopyA (id, name, country, description)
SELECT id, name, country, description FROM MusicShop.dbo.Brand;

-- Вставка всіх даних з MusicShop.dbo.Brand в BrandCopyB
INSERT INTO zkMyCopy_v4.dbo.BrandCopyB (id, name, country, description)
SELECT id, name, country, description FROM MusicShop.dbo.Brand;
