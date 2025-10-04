-- Create Database and Table
CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  emp_name VARCHAR(50),
  salary DECIMAL(10,2)
);

INSERT INTO Employees (emp_name, salary) VALUES
('John', 30000), ('Sara', 45000), ('David', 60000), ('Lina', 55000);

-- Stored Procedure
DELIMITER //
CREATE PROCEDURE GetHighSalaryEmployees(IN min_salary DECIMAL(10,2))
BEGIN
  SELECT emp_id, emp_name, salary
  FROM Employees
  WHERE salary > min_salary;
END //
DELIMITER ;

CALL GetHighSalaryEmployees(40000);

-- Function
DELIMITER //
CREATE FUNCTION YearlySalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  RETURN monthly_salary * 12;
END //
DELIMITER ;

SELECT emp_name, salary, YearlySalary(salary) AS Annual_Salary FROM Employees;












