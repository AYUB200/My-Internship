use librarydb;
-- Select all members
SELECT * FROM Member;

-- Select specific columns
SELECT title, category FROM Book;

-- WHERE condition
SELECT * FROM Book WHERE category = 'Fantasy';

-- LIKE operator
SELECT * FROM Member WHERE name LIKE 'A%';

-- WHERE with AND
SELECT * FROM Book 
WHERE category = 'Fantasy' AND publisher = 'Bloomsbury';

-- WHERE with OR
SELECT * FROM Book 
WHERE category = 'Fantasy' OR category = 'Dystopian';

-- BETWEEN example (assume borrow_date values exist)
SELECT * FROM Borrow 
WHERE borrow_date BETWEEN '2025-01-01' AND '2025-12-31';

-- ORDER BY
SELECT * FROM Book ORDER BY title ASC;

-- LIMIT
SELECT * FROM Book LIMIT 1;
