create database Employees;
use Employees;

-- 1. Create Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

-- 2. Insert 6 records into Employee
INSERT INTO Employee (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Alice', 'HR', 5000),
(102, 'Bob', 'IT', 7000),
(103, 'Charlie', 'Sales', 6000),
(104, 'David', 'IT', 8000),
(105, 'Eve', 'HR', 5500),
(106, 'Frank', 'Sales', 6500);

-- 3. Create a view for selected employees (only IT and HR)
CREATE VIEW Employee_View AS
SELECT emp_id, emp_name, dept_name, salary
FROM Employee
WHERE dept_name IN ('HR', 'IT')
LIMIT 3;

-- 4. Queries using the view

-- a) Select all employees from the view
SELECT * FROM Employee_View;

-- b) Select employees with salary > 6000
SELECT * 
FROM Employee_View
WHERE salary > 6000;

-- c) Select only employee names from the view
SELECT emp_name
FROM Employee_View;





