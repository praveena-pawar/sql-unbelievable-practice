-- name
-- dept_id
-- salary
-- max salary in that employee’s department

SELECT name, dept_id, salary,
	MAX(salary) OVER (PARTITION BY dept_id) AS max_dept_salary
FROM employee;