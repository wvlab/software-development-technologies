-- 08: Інструменти з Id марки 1,2,5 від постачальників 3,7
SELECT * FROM Instrument
WHERE brand_id IN (1,2,5) AND supplier_id IN (3,7);
