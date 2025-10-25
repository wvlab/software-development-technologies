-- 1: Визначити список постачальників, які поставляли інструмент.
SELECT DISTINCT S.name
FROM Supplier AS S
WHERE S.id IN (SELECT DISTINCT I.supplier_id FROM Instrument AS I)
ORDER BY S.name;
