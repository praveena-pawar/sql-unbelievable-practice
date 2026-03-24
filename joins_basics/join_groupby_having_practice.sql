-- customer name
-- total order amount
-- Condition: total > 400
-- only customers who placed orders

SELECT name,
       SUM(o.amount) AS total_order_amount
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
GROUP BY name
HAVING AVG(o.amount) > 400;




-- Query2 : List all customers who have made more than one order, along with the number of orders they have made. 
-- Sort the results by the number of orders in descending order.