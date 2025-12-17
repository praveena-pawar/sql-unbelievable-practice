-- LEVEL 1 – QUESTION 1 (BASICS)

-- Find all customers who have never placed any order.
SELECT c.customer_id, c.customer_name, c.city
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;




-- - LEVEL 1 – QUESTION 2 (next basic)
-- Find the total number of orders placed by each customer.
SELECT c.customer_name, c.customer_id, COUNT(o. order_id) AS total_number_of_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name, c.customer_id;