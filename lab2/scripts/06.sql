-- 06: Назва починається на "Т" та країна "Німеччина" або "Японія"
SELECT id, name, country FROM Brand
WHERE name LIKE 'Т%' or country = 'Німеччина' OR country = 'Японія';
