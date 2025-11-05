-- 16: Створити стовбець ДатаПоставки, заповнити його та змінити для «ОАО Орлов»
USE MusicShop;
GO

ALTER TABLE Instrument
ADD DateOfSupply DATE;

UPDATE Instrument
SET DateOfSupply = '2013-09-01';

UPDATE Instrument
SET DateOfSupply = '2015-09-01'
WHERE supplier_id = (SELECT id FROM Supplier WHERE name = 'ОАО Орлов');
