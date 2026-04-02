-- name
-- dept_id
-- salary
-- max salary in that employee’s department

SELECT name, dept_id, salary,
	MAX(salary) OVER (PARTITION BY dept_id) AS max_dept_salary
FROM employee;






-- Assign a row number to each employee based on salary (highest first)
-- Output:
-- name
-- salary
-- row number (1 = highest salary)
SELECT 
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_numbers
FROM employee;