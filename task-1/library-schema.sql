-- Create database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Author table
CREATE TABLE Author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

-- Book table
CREATE TABLE Book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    publisher VARCHAR(100),
    category VARCHAR(50),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Member table
CREATE TABLE Member (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Borrow table
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id)
);
