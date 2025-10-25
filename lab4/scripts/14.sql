-- 14: Вивести кількість покупців, які мають більше 2 гарантій.
SELECT COUNT(customer_id) AS number_of_customers
FROM (
    SELECT customer_id
    FROM Warranty
    GROUP BY customer_id
    HAVING COUNT(id) > 2
) AS customers_with_many_warranties;
