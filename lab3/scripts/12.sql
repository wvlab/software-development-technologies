-- 12:
-- Вивести ПІБ покупців, дату початку дії гарантії, дату продажу,
-- назву інструмента та його марку. Сортувати за прізвищем
SELECT
    C.last_name + ' ' + C.first_name + ' ' + C.patronym AS [ПІБ Покупця],
    W.start_date,
    R.sale_date,
    I.name AS InstrumentName,
    B.name AS BrandName
FROM Customer AS C
INNER JOIN Warranty AS W ON C.id = W.customer_id
INNER JOIN Receipt AS R ON W.receipt_id = R.id
INNER JOIN Instrument AS I ON R.instrument_id = I.id
INNER JOIN Brand AS B ON I.brand_id = B.id
ORDER BY C.last_name;
