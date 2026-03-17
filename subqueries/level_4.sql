-- Query 1 :
-- Find the employees who work in departments that have at least one employee earning more than 90000.
SELECT name, department, salary
FROM employees
WHERE department IN (SELECT department
	FROM employees 
    WHERE salary > 90000
);




-- Query 2 :
-- Find employees who work in departments that have at least one employee older than 35.