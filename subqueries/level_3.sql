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



-- Query 3:
-- Find the employees who have the lowest salary in their department.
SELECT name, department, salary 
FROM employees e1
WHERE salary = (SELECT MIN(salary)
	FROM employees e2
    WHERE e1.department = e2.department
);




-- Query 4 :
-- Find employees whose age is greater than the average age of their department.
SELECT name, department, age
FROM employees e1
WHERE age > (SELECT AVG(age)
	FROM employees e2
    WHERE e1.department = e2.department
);