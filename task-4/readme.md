# Task 4: Aggregate Functions and Grouping

This task focuses on using **aggregate functions** and **grouping** in SQL to summarize and analyze data effectively. It was performed as part of my internship to strengthen database querying skills.

## Objective

- Learn to use aggregate functions like **SUM, COUNT, AVG, MIN, MAX**  
- Group data using **GROUP BY** to categorize results  
- Filter grouped data using **HAVING**  

## Tools Used

- DB Browser for SQLite  
- MySQL Workbench  

## Deliverables

- SQL queries demonstrating the use of aggregate functions and grouping  
- File: **Task-4/aggregate_group_queries.sql**  

## SQL Aggregate Functions Used

Aggregate functions perform calculations on multiple rows of a table and return a single value:

- **COUNT()**  
  Counts the number of rows that match a condition. Useful for totals like the number of members or loans.

- **SUM()**  
  Adds up all values in a numeric column. For example, it can calculate the total number of books borrowed.

- **AVG()**  
  Computes the average value of a numeric column. Helps determine metrics like average books borrowed per member.

- **MIN()**  
  Returns the smallest value in a column. Used to find the earliest loan date or minimum books in a category.

- **MAX()**  
  Returns the largest value in a column. Useful for the most recent loan date or category with the highest books.

- **GROUP BY**  
  Groups rows sharing the same values in one or more columns, allowing aggregate functions to apply to each group. Example: counting books per category.

- **HAVING**  
  Filters groups created by **GROUP BY** based on conditions. Example: show only categories with more than 5 books.

---

**Author:** Mohamed Ayub
