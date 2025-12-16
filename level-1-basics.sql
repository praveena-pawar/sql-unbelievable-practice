-- LEVEL 1 – QUESTION 1 (BASICS)

-- Find all customers who have never placed any order.
SELECT c.customer_id, c.customer_name, c.city
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
