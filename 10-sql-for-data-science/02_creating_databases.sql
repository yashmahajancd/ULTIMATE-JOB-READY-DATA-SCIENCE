-- Creating a Database
CREATE DATABASE student_db;
CREATE DATABASE student;


-- Viewing All Databases
SHOW DATABASES;


-- Switching to a Database
USE student_db;


-- Dropping a Database
DROP DATABASE student;


-- Creating a Table in MySQL
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL DEFAULT 'No Name',
    age INT,
    email VARCHAR(100) UNIQUE,
    admission_date DATE
);