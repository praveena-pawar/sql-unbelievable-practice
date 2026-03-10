-- Query 1 :
-- Find the names of employees whose salary is greater than the average salary of their department.

SELECT name, department, salary
FROM employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employees e2
    WHERE e1.department = e2.department
);


-- Query 2 :
-- Find employees who earn the highest salary in their department.
SELECT name, department, salary
FROM employees e1
WHERE salary = (SELECT MAX(salary)
	FROM employees e2
    WHERE e1.department = e2.department
);


--Query 3 :
-- Find departments where the average salary is greater than the company's overall average salary.
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);