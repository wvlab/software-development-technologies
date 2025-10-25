-- 4: Визначити марки, інструменти яких продали.
SELECT DISTINCT B.name
FROM Brand AS B
WHERE B.id IN (
    SELECT DISTINCT I.brand_id
    FROM Instrument AS I
    WHERE I.id IN (
        SELECT DISTINCT R.instrument_id FROM Receipt AS R
    )
)
ORDER BY B.name;
