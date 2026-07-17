-- pre seeded data
INSERT INTO librarians (username, password_hash) VALUES
('admin', '$2b$12$ExampleHashForAdmin123'),
('librarian1', '$2b$12$ExampleHashForLib001');

INSERT INTO members (name, email, phone, password_hash, status) VALUES
('Aarav Sharma', 'aarav@example.com', '9876543210', '$2b$12$hash1', 'ACTIVE'),
('Priya Singh', 'priya@example.com', '9876543211', '$2b$12$hash2', 'ACTIVE'),
('Rahul Verma', 'rahul@example.com', '9876543212', '$2b$12$hash3', 'ACTIVE'),
('Sneha Das', 'sneha@example.com', '9876543213', '$2b$12$hash4', 'ACTIVE'),
('Rohan Gupta', 'rohan@example.com', '9876543214', '$2b$12$hash5', 'ACTIVE'),
('Ananya Roy', 'ananya@example.com', '9876543215', '$2b$12$hash6', 'ACTIVE'),
('Karan Mehta', 'karan@example.com', '9876543216', '$2b$12$hash7', 'ACTIVE'),
('Neha Kapoor', 'neha@example.com', '9876543217', '$2b$12$hash8', 'ACTIVE');

INSERT INTO books
(title, author, publisher, genre, isbn, publication_year, copies_total, copies_available)
VALUES
('The Alchemist', 'Paulo Coelho', 'HarperOne', 'Fiction', '9780061122415', 1988, 8, 5),

('Atomic Habits', 'James Clear', 'Avery', 'Self Help', '9780735211292', 2018, 10, 6),

('Clean Code', 'Robert C. Martin', 'Prentice Hall', 'Programming', '9780132350884', 2008, 5, 3),

('Introduction to Algorithms', 'Thomas H. Cormen', 'MIT Press', 'Programming', '9780262046305', 2022, 4, 2),

('The Pragmatic Programmer', 'Andrew Hunt', 'Addison-Wesley', 'Programming', '9780135957059', 2019, 6, 4),

('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Plata Publishing', 'Finance', '9781612680194', 2017, 7, 7),

('The Psychology of Money', 'Morgan Housel', 'Harriman House', 'Finance', '9780857197689', 2020, 9, 8),

('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Bloomsbury', 'Fantasy', '9780747532699', 1997, 12, 10),

('1984', 'George Orwell', 'Penguin', 'Dystopian', '9780141036144', 1949, 6, 4),

('The Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 'Fantasy', '9780261102217', 1937, 8, 7);


INSERT INTO borrow_transactions
(member_id, book_id, issue_date, due_date, return_date, status)
VALUES

(1, 2, '2026-07-01', '2026-07-15', NULL, 'ISSUED'),

(2, 3, '2026-06-20', '2026-07-04', '2026-07-03', 'RETURNED'),

(3, 4, '2026-06-18', '2026-07-02', NULL, 'OVERDUE'),

(4, 8, '2026-07-05', '2026-07-19', NULL, 'ISSUED'),

(5, 1, '2026-06-10', '2026-06-24', '2026-06-23', 'RETURNED'),

(6, 9, '2026-07-03', '2026-07-17', NULL, 'ISSUED'),

(7, 5, '2026-06-28', '2026-07-12', NULL, 'OVERDUE'),

(8, 7, '2026-07-06', '2026-07-20', NULL, 'ISSUED');