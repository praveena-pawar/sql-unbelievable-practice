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



-- Query2 : Get department name and average salary of that department
-- Only include departments where average salary > overall average salary

SELECT d.dept_name,
       AVG(e.salary) AS avg_salary
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING AVG(e.salary) >
  (SELECT AVG(salary)
   FROM employee);




-- Query3 : Get employee name and salary
-- Only include employees who earn more than the average salary of their own department

SELECT e.name,
       e.salary
FROM employee e
WHERE e.salary >
    (SELECT AVG(salary)
     FROM employee e2
     WHERE e.dept_id = e2.dept_id);




-- Query4 : Get department name and highest salary in each department
-- Only include departments where highest salary > 60000

