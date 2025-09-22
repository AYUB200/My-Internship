
# Library Management System - Task 1

This repository contains my Library Management System database design for Task 1 of my internship. It includes the SQL script to create the database, the ER diagram, and the editable MySQL Workbench file.

## What’s Inside

- Task-1/library_schema.sql – SQL script to create tables and relationships
- Task-1/er_diagram.png – Visual ER diagram
- Task-1/ER-diagram.mwb – Editable MySQL Workbench file

## About the Database

Entities:

- Author – Stores information about book authors
- Book – Contains details of books in the library
- Member – Keeps track of library members
- BookAuthor – Junction table for many-to-many relationship between books and authors
- Loan – Tracks which member borrowed which book and when

Relationships:

- A book can have multiple authors, and an author can write multiple books
- A member can borrow multiple books

## How to Use This

1. Import library_schema.sql into MySQL Workbench or any SQL-compatible database
2. Open ER-diagram.mwb in MySQL Workbench to view or edit the ER diagram
3. Use er_diagram.png for a quick reference

## About Me

- Mohamed Ayub – Internship project on database design and ER modeling
