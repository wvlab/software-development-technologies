-- 04: Марки, вироблені в "Китай" або країна починається на "Ка"
SELECT id, name, country FROM Brand
WHERE country = 'Китай' OR country LIKE 'Ка%';
