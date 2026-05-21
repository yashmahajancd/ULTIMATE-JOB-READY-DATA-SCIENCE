------ Using UNION in MySQL ------
----------------------------------

--- Create a Database
CREATE DATABASE union_practice;

USE union_practice;


--- Create table customers
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);


--- Insert customers
INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Surat'),
(2, 'Priya Patel', 'Ahmedabad'),
(3, 'Amit Verma', 'Mumbai'),
(4, 'Sneha Joshi', 'Pune'),
(5, 'Karan Mehta', 'Delhi');


--- Create table vendors
CREATE TABLE vendors (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(50),
    City VARCHAR(50)
);

--- Insert vendors
INSERT INTO vendors VALUES
(101, 'ABC Traders', 'Surat'),
(102, 'Shree Supplies', 'Rajkot'),
(103, 'Global Mart', 'Mumbai'),
(104, 'Metro Wholesale', 'Delhi'),
(105, 'Sunrise Agency', 'Jaipur'),
(106, 'Shree Supplies', 'Rajkot');


-------------------------------------------------------------------------

---- UNION
SELECT CustomerName, City FROM customers
UNION
SELECT VendorName, City FROM vendors;


---- UNION ALL
SELECT CustomerName, City FROM customers
UNION ALL
SELECT VendorName, City FROM vendors;


-------------------------------------------------------------------------

--- Create table students_2023
CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    batch VARCHAR(20)
);


--- Insert students_2023
INSERT INTO students_2023 VALUES
(1, 'Rahul', '2023'),
(2, 'Priya', '2023'),
(3, 'Amit', '2023'),
(4, 'Sneha', '2023'),
(5, 'Karan', '2023');


--- Create table students_2024
CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    batch VARCHAR(20)
);


--- Insert students_2024
INSERT INTO students_2024 VALUES
(101, 'Priya', '2024'),
(102, 'Neha', '2024'),
(103, 'Amit', '2024'),
(104, 'Rohan', '2024'),
(105, 'Simran', '2024');


-------------------------------------------------------------------------

--- Combine Students from Both Years
SELECT name, batch FROM students_2023
UNION
SELECT name, batch FROM students_2024;


--- Sorting the Combined Result
SELECT name FROM students_2023
UNION
SELECT name FROM students_2024
ORDER BY name;


--- Combine Only Names (Duplicates Allowed)
SELECT name FROM students_2023
UNION ALL
SELECT name FROM students_2024;

--- Add Year Type Column
SELECT name, 'Old Batch' AS Type
FROM students_2023
UNION
SELECT name, 'New Batch' AS Type
FROM students_2024;