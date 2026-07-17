-- This folder contains only DDL statements
drop database if exists library;

create database library;

use library;

CREATE TABLE librarians(
    librarian_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE members(
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    password_hash VARCHAR(255) NOT NULL,
    join_date DATE DEFAULT (CURRENT_DATE),
    status ENUM('ACTIVE','INACTIVE') DEFAULT 'ACTIVE'
);

CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(150) NOT NULL,
    publisher VARCHAR(100),
    genre VARCHAR(100),
    isbn VARCHAR(20) UNIQUE,
    publication_year INT,
    copies_total INT NOT NULL,
    copies_available INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE borrow_transactions(
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,

    member_id INT NOT NULL,

    book_id INT NOT NULL,

    issue_date DATE NOT NULL,

    due_date DATE NOT NULL,

    return_date DATE,

    status ENUM(
        'ISSUED',
        'RETURNED',
        'OVERDUE'
    ) DEFAULT 'ISSUED',

    FOREIGN KEY(member_id)
        REFERENCES members(member_id)
        ON DELETE CASCADE,

    FOREIGN KEY(book_id)
        REFERENCES books(book_id)
        ON DELETE CASCADE
);