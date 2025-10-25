-- 8: Вивести Назву інструмента, ціну, марку, країну виробника для всіх інструментів, ціна яких більше ніж середня в крамниці та рік виробництва >= 2010.
SELECT I.name, I.price, B.name AS brand_name, B.country
FROM Instrument AS I
JOIN Brand AS B ON I.brand_id = B.id
WHERE I.price > (SELECT AVG(price) FROM Instrument)
AND I.year_of_production >= 2010;
