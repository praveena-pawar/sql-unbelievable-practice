-- Query 1 :
-- Find the names of employees whose salary is greater than the company's average salary.
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
	FROM employees
);