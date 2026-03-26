-- order_id
-- amount
-- A new column category

-- Condition:
-- amount < 500 → 'Low'
-- amount between 500 and 1000 → 'Medium'
-- amount > 1000 → 'High'

SELECT order_id,
       amount,
       CASE
           WHEN amount < 500 THEN "Low"
           WHEN amount BETWEEN 500 AND 1000 THEN "Medium"
           WHEN amount > 1000 THEN "High"
       END AS category
FROM orders;






-- Count number of orders in each category:
-- Low
-- Medium
-- High

SELECT
    CASE
        WHEN amount < 500 THEN 'Low'
        WHEN amount BETWEEN 500 AND 1000 THEN 'Medium'
        WHEN amount > 1000 THEN 'High'
    END AS category,
    COUNT(*) AS total_orders
FROM orders
GROUP BY
    CASE
        WHEN amount < 500 THEN 'Low'
        WHEN amount BETWEEN 500 AND 1000 THEN 'Medium'
        WHEN amount > 1000 THEN 'High'
    END;





-- Show:
-- total amount of Low orders
-- total amount of Medium orders
-- total amount of High orders