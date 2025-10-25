-- 07: Гарантії, де дата закінчення не від 2011-01-01 до 2014-12-31
SELECT description, start_date FROM Warranty
WHERE end_date NOT BETWEEN '2011-01-01' AND '2014-12-31';

-- SELECT 
--     w.description AS warranty_description,
--     w.start_date,
--     w.end_date,
--     c.id AS customer_id,
--     c.last_name,
--     c.first_name,
--     c.patronym
-- FROM Warranty w
-- JOIN Receipt r ON w.id = r.warranty_id
-- JOIN Customer c ON r.customer_id = c.id
-- WHERE w.end_date NOT BETWEEN '2011-01-01' AND '2014-12-31';
