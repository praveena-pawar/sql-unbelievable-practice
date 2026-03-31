
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    dept_id INT,
    salary INT
);

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees (emp_id, name, dept_id, salary) VALUES
(1, 'Ravi', 101, 50000),
(2, 'Asha', 102, 60000),
(3, 'Kiran', 101, 70000),
(4, 'Meena', 103, 40000),
(5, 'John', 102, 65000);

INSERT INTO departments (dept_id, dept_name) VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance');

