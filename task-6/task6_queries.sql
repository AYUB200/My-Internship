create database employee;
use employee;

-- Create Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert 3 records into Department
INSERT INTO Department (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales');

-- Create Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

-- Insert 3 records into Employee
INSERT INTO Employee (emp_id, emp_name, dept_id, salary) VALUES
(101, 'Alice', 1, 5000),
(102, 'Bob', 2, 7000),
(103, 'Charlie', 3, 6000);

-- 1. Scalar Subquery: Find the employee with the maximum salary
SELECT emp_name, salary
FROM Employee
WHERE salary = (SELECT MAX(salary) FROM Employee);


-- 2. Correlated Subquery: Find employees earning more than average salary of their department
SELECT e.emp_name, e.salary
FROM Employee e
WHERE e.salary > (
    SELECT AVG(salary) 
    FROM Employee 
    WHERE dept_id = e.dept_id
);

-- 3. Subquery with IN: Find employees who belong to IT or Sales
SELECT emp_name
FROM Employee
WHERE dept_id IN (SELECT dept_id FROM Department WHERE dept_name IN ('IT', 'Sales'));

-- 4. Subquery with EXISTS: Check if there is any employee in HR department
SELECT dept_name
FROM Department d
WHERE EXISTS (
    SELECT 1 FROM Employee e WHERE e.dept_id = d.dept_id
);


-- Subquery with = : Find the employee who belongs to the HR department
SELECT emp_name
FROM Employee
WHERE dept_id = (
    SELECT dept_id 
    FROM Department 
    WHERE dept_name = 'HR'
);
