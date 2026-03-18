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
SELECT name, department, age
FROM employees 
WHERE department IN (SELECT department
	FROM employees 	
    WHERE age > 35
);




-- Query 3 :
-- Find employees who work in departments where no employee earns more than 90000.
SELECT name, department, salary
FROM employees
WHERE department NOT IN (SELECT department
	FROM employees 
    WHERE salary > 90000
);




-- Query 4 :
-- Find employees whose salary is greater than ANY salary in the HR department.
SELECT name, department, salary 
FROM employees 
WHERE salary > ANY (
    SELECT salary
    FROM employees 
    WHERE department = 'HR'
);




-- Query 5 : 
-- WHEN question says only HR then we use
SELECT name, department, salary 
FROM employees 
WHERE department = "HR"
AND salary > ANY (SELECT salary
	FROM employees 
    WHERE department = "Hr"
);




-- Query 6 :
-- Find employees whose salary is greater than ALL salaries in the HR department.
SELECT name, department, salary 
FROM employees
WHERE salary > ALL (SELECT salary
	FROM employees 
    WHERE department = "HR"
);




-- Query 7 :
-- Find employees whose salary is greater than ALL salaries in the Sales department.
SELECT name, department, salary 
FROM employees
WHERE salary > ALL (SELECT salary
	FROM employees 
    WHERE department = "Sales"
);