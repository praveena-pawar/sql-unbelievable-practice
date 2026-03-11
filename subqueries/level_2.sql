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




-- Query 2 :
-- Find departments where the total salary is greater than the company's average department salary.