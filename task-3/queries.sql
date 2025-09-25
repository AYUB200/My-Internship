use librarydb;
-- Select all members
SELECT * FROM Member;

-- Select specific columns
SELECT title, category FROM Book;

-- WHERE condition
SELECT * FROM Book WHERE category = 'Fantasy';

-- LIKE operator
SELECT * FROM Member WHERE name LIKE 'A%';

-- ORDER BY
SELECT * FROM Book ORDER BY title ASC;

-- LIMIT
SELECT * FROM Book LIMIT 1;
