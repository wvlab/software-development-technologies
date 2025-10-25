-- 15:
-- Вивести ПІБ покупців, назву інструмента, назву марки, клас інструмента та назву постачальника,
-- які вони купляли. Сортувати за прізвищем
SELECT
    C.last_name + ' ' + C.first_name + ' ' + C.patronym AS [ПІБ Покупця],
    I.name AS InstrumentName,
    B.name AS BrandName,
    CL.name AS ClassName,
    S.name AS SupplierName
FROM Customer AS C
INNER JOIN Warranty AS W ON C.id = W.customer_id
INNER JOIN Receipt AS R ON W.receipt_id = R.id
INNER JOIN Instrument AS I ON R.instrument_id = I.id
INNER JOIN Brand AS B ON I.brand_id = B.id
INNER JOIN Class AS CL ON I.class_id = CL.id
INNER JOIN Supplier AS S ON I.supplier_id = S.id
ORDER BY C.last_name;
