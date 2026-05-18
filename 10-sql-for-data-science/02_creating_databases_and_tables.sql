------ Creating a Database ------
---------------------------------
CREATE DATABASE student_db;
CREATE DATABASE student;


-- Viewing All Databases
SHOW DATABASES;


-- Switching to a Database
USE student_db;


-- Dropping a Database
DROP DATABASE student;


------ Creating a Table in MySQL ------
---------------------------------------
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100) UNIQUE,
    admission_data DATE
);

CREATE TABLE std (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);


-- View All Tables
SHOW TABLES;


-- View Table Structure
DESCRIBE students;


-- Viewing Table Data
SELECT * FROM students;



------ Modifying a Table in MySQL ------
----------------------------------------

-- Renaming a Table
RENAME TABLE students TO vtp_students;


-- Dropping a Table
DROP TABLE std;


-- Renaming a Column
ALTER TABLE vtp_students RENAME COLUMN admission_data TO admission_date;


-- Adding a Column
ALTER TABLE vtp_students ADD COLUMN is_passed BOOL DEFAULT True;
ALTER TABLE students ADD COLUMN gender VARCHAR(10);


-- Dropping a Column
ALTER TABLE table_name DROP COLUMN gender;


-- Modifying a Column
ALTER TABLE vtp_students MODIFY COLUMN name VARCHAR(50) NOT NULL DEFAULT 'No Name';


-- Changing the Order of Columns
ALTER TABLE vtp_students MODIFY COLUMN is_passed BOOL DEFAULT True AFTER 
name;