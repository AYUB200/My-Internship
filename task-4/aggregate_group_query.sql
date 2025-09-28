-- Task 4: Aggregate Functions and Grouping (Simple Version)
use librarydb;

-- 1. Count total members
SELECT COUNT(*) FROM Member;

-- 2. Count total books
SELECT COUNT(*) FROM Book;

-- 3. Find average book_id (example of AVG)
SELECT AVG(book_id) FROM Book;

-- 4. Find maximum and minimum borrow_id
SELECT MAX(borrow_id), MIN(borrow_id) FROM Borrow;

-- 5. Count how many books each category has
SELECT category, COUNT(*) 
FROM Book
GROUP BY category;

-- 6. Count how many times each member borrowed
SELECT member_id, COUNT(*) 
FROM Borrow
GROUP BY member_id;

-- 7. Show only members who borrowed more than 1 book
SELECT member_id, COUNT(*) 
FROM Borrow
GROUP BY member_id
HAVING COUNT(*) > 1;

-- 8. Count how many books borrowed in 2025
SELECT COUNT(*) 
FROM Borrow
WHERE YEAR(borrow_date) = 2025;

-- 9. Sum of all book IDs
SELECT SUM(book_id) AS total_book_ids
FROM Book;









