-- 1: Отримати ВСІ ПІБ (назви) та телефони для покупців та постачальників
SELECT
    LTRIM(RTRIM(CONCAT(last_name, ' ', first_name, ' ', patronym))) AS FullName,
    phone AS PhoneNumber
FROM
    Customer
UNION ALL
SELECT
    name AS FullName,
    phone AS PhoneNumber
FROM
    Supplier;
