SELECT customer_id, first_name, last_name
FROM customer
WHERE customer_id <> ALL (
    SELECT 
customer_id
    FROM rental
    WHERE return_date IS NULL
);
