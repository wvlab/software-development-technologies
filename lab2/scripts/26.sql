-- 26: Середня ціна інструментів, рік виробництва між 2010 і 2014
SELECT name, AVG(price) AS avg_price
FROM Instrument
WHERE year_of_production BETWEEN 2010 AND 2014
GROUP BY name;
