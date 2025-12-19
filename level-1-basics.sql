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



-- LEVEL 1 – QUESTION 3 (next basic)
-- Find the total revenue generated for each order.
SELECT o.order_id, SUM(quantity * price) AS total_revenue
FROM orders o
INNER JOIN order_items i
    ON o.order_id = i.order_id
INNER JOIN products p
	ON p.product_id = i.product_id 
GROUP BY o.order_id;



-- LEVEL 1 – QUESTION 4 (next basic)
-- 	Find the total amount spent by each customer.
SELECT c.customer_id, c.customer_name, SUM(quantity * price) AS total_spent
FROM customers c 
INNER JOIN orders o 
	ON c.customer_id = o.customer_id 
INNER JOIN order_items i
    ON i.order_id = o.order_id
INNER JOIN products p 
    ON p.product_id  = i.product_id 
GROUP BY   c.customer_id, c.customer_name;



-- LEVEL 1 – QUESTION 5 (next basic)
-- Find the number of distinct products purchased by each customer.
SELECT 
     c.customer_name, c.customer_id, COUNT(DISTINCT i.product_id) AS distinct_products_purchased
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN order_items i
    ON i.order_id = o.order_id
GROUP BY   c.customer_name, c.customer_id;
