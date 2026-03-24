-- Query1 : Get employee name, department name, salary
-- Only include employees whose salary is greater than the average salary of all employees

SELECT e.name,
       d.dept_name,
       e.salary
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
WHERE e.salary >
    (SELECT AVG(salary)
     FROM employee);