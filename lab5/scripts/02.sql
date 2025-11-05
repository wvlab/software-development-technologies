-- 2: Отримати ПІБ(назви) та телефони для покупців та постачальників, виключивши дублікати
SELECT
    LTRIM(RTRIM(CONCAT(last_name, ' ', first_name, ' ', patronym))) AS FullName,
    phone AS PhoneNumber
FROM
    Customer
UNION
SELECT
    name AS FullName,
    phone AS PhoneNumber
FROM
    Supplier;
