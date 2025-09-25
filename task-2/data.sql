-- Insert authors
INSERT INTO Author (name) VALUES ('J.K. Rowling');
INSERT INTO Author (name) VALUES ('George Orwell');

-- Insert books
INSERT INTO Book (title, publisher, category, author_id) VALUES
('Harry Potter', 'Bloomsbury', 'Fantasy', 1),
('1984', 'Secker & Warburg', 'Dystopian', 2);

-- Insert members
INSERT INTO Member (name, email) VALUES
('Alice', 'alice@mail.com'),
('Bob', NULL); -- Handling NULL email

-- Update record
UPDATE Member SET email = 'bob@mail.com' WHERE name = 'Bob';

-- Delete record
DELETE FROM Book WHERE title = '1984';

-- Insert borrow records
INSERT INTO Borrow (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2025-02-01', '2025-02-15'),
(2, 1, '2025-03-05', NULL);
