-- Query 1 :
-- Find the names of employees whose salary is greater than the company's average salary.
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary)
	FROM employees
);




-- Query 2 :
-- Find employees who earn the second highest salary in the company.
SELECT name, salary
FROM employees
WHERE salary = (SELECT DISTINCT salary
	FROM employees
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1
);

-- One more way to write the query for same question 2
SELECT name, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary)
        FROM employees
    )
);




-- Query 3 :
-- Find departments where the total salary is greater than the company's average department salary.
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > (
    SELECT AVG(dept_total)
    FROM (
        SELECT SUM(salary) AS dept_total
        FROM employees
        GROUP BY department
    ) AS t
);




-- Query 4 :
-- Find the employees who earn the minimum salary in the company.
SELECT name, salary
FROM employees
WHERE salary = (SELECT MIN(salary)
	FROM employees
);



-- Query 5 :
-- Find the employees who earn more than the average salary of the HR department.
SELECT name, salary 
FROM employees
WHERE salary > (SELECT AVG(salary)
	FROM employees
    WHERE department = "HR"
);




-- Query 6 : 
-- Find HR employees who earn more than the average salary of HR.
SELECT name, salary 
FROM employees
WHERE department = "HR" 
AND salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department = "HR"
);




-- Query 7 : 
-- Find the employees who work in the same department as 'Alice'.
SELECT name, department 
FROM employees
WHERE department = (SELECT department 
	FROM employees
    WHERE name = "Alice"
);




--Query 8 :
-- Find the employees who work in the same department as 'Alice'.
SELECT name, salary
FROM employees
WHERE salary > (SELECT salary 
	FROM employees
    WHERE name = "Alice"
);




--Query 8 :
-- Find the employees who earn the same salary as Bob using a subquery.
SELECT name, salary
FROM employees
WHERE salary = (SELECT salary 
	FROM employees
    WHERE name = "Bob"
);




--Query 9 :
-- Find the employees who are older than the average age of the company.
SELECT name, age
FROM employees
WHERE age > (SELECT AVG(age) 
	 FROM employees
);





--Query 10 :
-- Find the employees who work in the same department as Bob using a subquery.
SELECT name, department
FROM employees
WHERE department = (SELECT department
	FROM employees
    WHERE name = "Bob"
);
