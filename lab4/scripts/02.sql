-- 2: Визначити список постачальників, які не поставляли інструмент.
SELECT DISTINCT S.name
FROM Supplier AS S
WHERE S.id NOT IN (SELECT DISTINCT I.supplier_id FROM Instrument AS I)
ORDER BY S.name;
