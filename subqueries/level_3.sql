-- Query 1:
-- Find the employees whose salary is greater than the average salary of their department.
SELECT name, department, salary 
FROM employees e1
WHERE salary > (SELECT AVG(salary)
	FROM employees e2
    WHERE e1.department = e2.department
);



-- Query 2:
-- Find the employees who have the highest salary in their department.
SELECT name, department, salary 
FROM employees e1
WHERE salary = (SELECT MAX(salary)
	FROM employees e2
    WHERE e1.department = e2.department
);