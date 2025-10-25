-- 03: Марки, які не вироблені в "Японії"
SELECT id, name, country FROM Brand
WHERE country <> 'Японія';
