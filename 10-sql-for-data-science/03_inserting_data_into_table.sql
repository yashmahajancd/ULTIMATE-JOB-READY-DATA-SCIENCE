------ How to Insert Rows into a Table in MySQL ------
------------------------------------------------------

-- 1. Create a New Database
CREATE DATABASE schooldb;


-- 2. Select the Database
USE schooldb;


-- 3. Create the student Table
CREATE TABLE vtp_students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    is_passed BOOL DEFAULT True,
    age INT,
    email VARCHAR(50) UNIQUE,
    admission_date DATE
);


-- 4. Insert Data into the Table
--------------------------------

-- Insert One Row at a Time
INSERT INTO vtp_students (id, name, is_passed, age, email, admission_date) VALUES (1, 'Rohit', true, 20, 'rohit@email.com', '2024-06-25');

INSERT INTO vtp_students (id, name, is_passed, age, email, admission_date) VALUES (2, 'Dhruv', false, 19, 'dhruv@email.com', '2024-07-09');


-- Insert All Rows at Once
INSERT INTO vtp_students (id, name, is_passed, age, email, admission_date) VALUES
(3, 'Bhavesh', false, 20, 'bhavesh@email.com', '2024-06-15'),
(4, 'Yash', true, 21, 'yash@email.com', '2024-07-27'),
(5, 'Kashish', true, 19, 'kashish@email.com', '2024-06-11'),
(6, 'Komal', true, 20, 'komal@email.com', '2024-06-19'),
(7, 'Dattatray', true, 20, 'datta@email.com', '2024-07-17'),
(8, 'Namrata', true, 20, 'namrata@email.com', '2024-06-07'),
(9, 'Hitesh', false, 19, 'hitesh@email.com', '2024-07-21'),
(10, 'Shreya', true, 20, 'shreya@email.com', '2024-06-24'),
(11, 'Jay', false, 23, 'jay@email.com', '2024-07-20'),
(12, 'Pranav', false, 20, 'pranav@email.com', '2024-07-16');


-- 5. Verify the Inserted Records
SELECT * FROM vtp_students;