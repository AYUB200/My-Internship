-- Creating a database
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- Creating a table for library

CREATE TABLE Author (author_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL);

CREATE TABLE Book (book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
publisher VARCHAR(100),
category VARCHAR(50));

CREATE TABLE Member (
 member_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(100) NOT NULL,
 email VARCHAR(100) UNIQUE,
 join_date DATE NOT NULL);

CREATE TABLE BookAuthor (
book_id INT,
author_id INT,
PRIMARY KEY (book_id, author_id),
FOREIGN KEY (book_id) REFERENCES Book(book_id),
FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Loan (
    loan_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (member_id) REFERENCES Member(member_id)
);