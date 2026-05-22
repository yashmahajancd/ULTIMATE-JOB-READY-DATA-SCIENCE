------ MySQL Functions ------
-----------------------------

--- Create Database
CREATE DATABASE company_db;


--- Use Database
USE company_db;


--- Create Employee Table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    hire_date DATE,
    job_title VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    status VARCHAR(20) DEFAULT 'Active'
);


--- Insert Records into Employee Table
INSERT INTO employee
(first_name, last_name, gender, date_of_birth, email, phone, hire_date,
 job_title, department, salary, manager_id, city, state, country, status)
VALUES
('Rahul', 'Sharma', 'Male', '1995-04-12', 'rahul.sharma@gmail.com', '9876543210',
 '2021-06-15', 'Software Engineer', 'IT', 65000, NULL, 'Mumbai', 'Maharashtra', 'India', 'Active'),

('Priya', 'Patel', 'Female', '1998-09-21', 'priya.patel@gmail.com', '9876543211',
 '2022-01-10', 'HR Executive', 'HR', 45000, 1, 'Surat', 'Gujarat', 'India', 'Active'),

('Amit', 'Verma', 'Male', '1992-11-05', 'amit.verma@gmail.com', '9876543212',
 '2020-03-18', 'Database Administrator', 'IT', 75000, 1, 'Delhi', 'Delhi', 'India', 'Active'),

('Sneha', 'Iyer', 'Female', '1996-07-14', 'sneha.iyer@gmail.com', '9876543213',
 '2023-02-25', 'Accountant', 'Finance', 50000, 3, 'Chennai', 'Tamil Nadu', 'India', 'Active'),

('Karan', 'Mehta', 'Male', '1994-01-30', 'karan.mehta@gmail.com', '9876543214',
 '2019-08-12', 'Team Lead', 'IT', 90000, NULL, 'Pune', 'Maharashtra', 'India', 'Active'),

('Neha', 'Joshi', 'Female', '1997-05-19', 'neha.joshi@gmail.com', '9876543215',
 '2021-11-01', 'Marketing Executive', 'Marketing', 48000, 5, 'Ahmedabad', 'Gujarat', 'India', 'Active'),

('Rohan', 'Das', 'Male', '1993-12-22', 'rohan.das@gmail.com', '9876543216',
 '2018-07-09', 'Network Engineer', 'IT', 68000, 5, 'Kolkata', 'West Bengal', 'India', 'Inactive'),

('Pooja', 'Singh', 'Female', '1999-03-11', 'pooja.singh@gmail.com', '9876543217',
 '2024-01-15', 'Data Analyst', 'Analytics', 62000, 3, 'Jaipur', 'Rajasthan', 'India', 'Active'),

('Arjun', 'Nair', 'Male', '1991-10-08', 'arjun.nair@gmail.com', '9876543218',
 '2017-05-20', 'Project Manager', 'Management', 120000, NULL, 'Bangalore', 'Karnataka', 'India', 'Active'),

('Kavya', 'Reddy', 'Female', '1995-06-17', 'kavya.reddy@gmail.com', '9876543219',
 '2022-09-30', 'UI/UX Designer', 'Design', 58000, 9, 'Hyderabad', 'Telangana', 'India', 'Active');


----------------------------------------------------------------------------------------------------

---- 1. CONCAT() – Join strings together
SELECT first_name, last_name, CONCAT(first_name, ' ', last_name)
AS 'Full Name'
FROM employee;


---- 2. NOW() – Get the current date and time
SELECT NOW();   -- '2026-05-22 17:08:23'


---- 3. LENGTH() – Find length of a string (in bytes)
SELECT CONCAT(first_name, ' ', last_name) AS Name, LENGTH(first_name) + 1 + LENGTH(last_name)
AS Length
FROM employee;


---- 4. ROUND() – Round numbers to a specific number of decimal places
SELECT ROUND(1426.75284, 2);   -- 1426.75


---- 5. DATEDIFF() – Difference between two dates (in days)
SELECT DATEDIFF('2026-03-31', '2025-03-31');   -- 365

SELECT DATEDIFF(NOW(), hire_date)
AS Days
FROM employee;

SELECT DATEDIFF(NOW(), hire_date) / 365
AS Years
FROM employee;

SELECT DATEDIFF(NOW(), '2005-03-31') / 365;   -- 21.1562

SELECT ROUND(DATEDIFF(NOW(), '2005-03-31') / 365);   -- 21

SELECT ROUND(DATEDIFF(NOW(), '2005-03-31') / 365, 1);   -- 21.2


----------------------------------------------------------------------------------------------------

---- Comprehensive List of Useful MySQL Functions ----
------------------------------------------------------

-- String Functions
SELECT CONCAT('Yash ', 'Mahajan');   -- 'Yash Mahajan'

SELECT LENGTH('Yash Mahajan');   -- 12

SELECT CHAR_LENGTH('हिंदी');   -- 5

SELECT LOWER('MySQL');   -- 'mysql'

SELECT UPPER('hello');   -- 'HELLO'

SELECT REPLACE('Yash Mahajan', 'Yash', 'Praful');   -- 'Praful Mahajan'

SELECT TRIM('     Yash     ');   -- 'Yash'


-- Date & Time Functions
SELECT NOW();   -- '2026-05-22 18:42:32'

SELECT CURDATE();   -- '2026-05-22'

SELECT CURTIME();   -- '18:44:52'

SELECT DATE(NOW());   -- '2026-05-22'

SELECT MONTH(NOW());   -- '5'

SELECT MONTHNAME(NOW());   -- 'May'

SELECT YEAR(NOW());   -- '2026'

SELECT DAY(NOW());   -- '22'

SELECT DATEDIFF('2026-06-01', '2026-05-01');   -- '31'


-- Numeric Functions
SELECT ROUND(54.7253, 2);   -- '54.73'

SELECT FLOOR(5.9);   -- '5'

SELECT CEIL(5.1);   -- '6'

SELECT ABS(-22);   -- '22'

SELECT MOD(7, 2);   -- '1'

SELECT RAND();   -- '0.5343541666253975'


-- NULL Handling Functions
SELECT IFNULL(NULL, 'N/A');   -- 'N/A'

SELECT COALESCE(NULL, 99, NULL, 14, 3, NULL, 22);   -- '99'


-- Aggregate Functions
SELECT COUNT(first_name), COUNT(email) FROM employee;   -- '10'  '10'

SELECT AVG(salary) FROM employee;   -- '68100.000000'

SELECT SUM(salary) FROM employee;   -- '681000.00'

SELECT MIN(salary) FROM employee;   -- '45000.00'

SELECT MAX(salary) FROM employee;   -- '120000.00'