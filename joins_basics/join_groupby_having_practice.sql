-- customer name
-- total order amount
-- Condition: total > 800
-- only customers who placed orders

SELECT name,
       SUM(o.amount) AS total_order_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY name
HAVING AVG(o.amount) > 400;