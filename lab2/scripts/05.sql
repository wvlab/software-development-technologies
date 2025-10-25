-- 05: Назва починається на "Т" та країна "Німеччина" або країна "Китай"
SELECT id, name, country FROM Brand
WHERE name LIKE 'Т%' OR country = 'Німеччина' OR country = 'Китай';
