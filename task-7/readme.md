# Task 7: Creating Views

**Objective:** Learn to create and use views in SQL.

**Description:**  
Views are virtual tables created from SQL queries. They help simplify complex queries, provide abstraction, and enhance security by limiting direct access to base tables.  

In this task, we created a view `Employee_View` that includes only selected employees from the `Employee` table. For example, the view shows only 3 employees (Alice, Bob, David) based on the condition `dept_name IN ('HR','IT')`. Employees not matching the condition, like Eve, do not appear in the view.  

**Key Points:**  
1. **CREATE VIEW with complex SELECT** – The view uses a filtered SELECT query to include only specific rows and columns.  
2. **Views for abstraction and security** – Users querying the view cannot access the full table, hiding unnecessary or sensitive data.  

**Prepared by:** Mohamed Ayub
