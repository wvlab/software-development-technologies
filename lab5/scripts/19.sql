-- 19: Видалити з таблиці «Покупець» покупців ПокупецьId>4 та у яких <8
DELETE FROM Customer
WHERE id > 4 AND id < 8;
