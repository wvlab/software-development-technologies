-- 21: Кількість марок в кожній країні, впорядкувати по країні
SELECT country AS "Country", COUNT(*) AS "Brand Count"
FROM Brand
GROUP BY country
ORDER BY country;
