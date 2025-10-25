-- 20:
-- Вивести всі назви класів інструментів та як доповнення - інструмент, цього класу,
-- але наявність інструментів класу не є обов’язковою умовою
SELECT
    C.name AS ClassName,
    I.name AS InstrumentName
FROM Class AS C
LEFT JOIN Instrument AS I ON C.id = I.class_id;
