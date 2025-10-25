-- 18:
-- Вивести для покупців з телефонами, що починаються на 050: ПІБ покупців, назву інструмента,
-- назву марки, назву постачальника та кількість класів інструментів, які вони купляли
SELECT
    C.last_name + ' ' + C.first_name + ' ' + C.patronym AS [ПІБ Покупця],
    I.name AS InstrumentName,
    B.name AS BrandName,
    S.name AS SupplierName,
    COUNT(DISTINCT CL.id) AS NumberOfClasses
FROM Customer AS C
INNER JOIN Warranty AS W ON C.id = W.customer_id
INNER JOIN Receipt AS R ON W.receipt_id = R.id
INNER JOIN Instrument AS I ON R.instrument_id = I.id
INNER JOIN Brand AS B ON I.brand_id = B.id
INNER JOIN Supplier AS S ON I.supplier_id = S.id
INNER JOIN Class AS CL ON I.class_id = CL.id
WHERE C.phone LIKE '050%'
GROUP BY
    C.last_name, C.first_name, C.patronym,
    I.name, B.name, S.name;
