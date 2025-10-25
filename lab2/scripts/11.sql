-- 11: Покупці з по-батькові, телефон починається на "067"
SELECT * FROM Customer
WHERE patronym IS NOT NULL AND phone LIKE '38067%';
