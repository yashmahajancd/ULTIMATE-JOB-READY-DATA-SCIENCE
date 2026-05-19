------ How to Select Data in MySQL ------
-----------------------------------------

--- 1. Basic SELECT Statement
SELECT * FROM vtp_students;

-- To retrieve specific columns (e.g., only name and grade ):
SELECT name, is_passed FROM vtp_students;


--- 2. Using the WHERE Clause
SELECT * FROM vtp_students WHERE is_passed = true;

SELECT * FROM vtp_students WHERE age < 20;

SELECT * FROM vtp_students WHERE age > 20 and is_passed = true;


--- 3. Comparison Operators in MySQL
SELECT * FROM vtp_students WHERE age = 20;

SELECT * FROM vtp_students WHERE is_passed != true;

SELECT * FROM vtp_students WHERE is_passed <> true;

SELECT * FROM vtp_students WHERE age > 20;

SELECT * FROM vtp_students WHERE age < 20;

SELECT * FROM vtp_students WHERE age >= 20;

SELECT * FROM vtp_students WHERE age <= 20;

SELECT * FROM vtp_students WHERE age BETWEEN 20 AND 21;

SELECT * FROM vtp_students WHERE age IN (19, 23);

SELECT * FROM vtp_students WHERE age NOT IN (20, 23);

SELECT * FROM vtp_students WHERE name LIKE 'Y%';

SELECT * FROM vtp_students WHERE name LIKE '%sh';

SELECT * FROM vtp_students WHERE name NOT LIKE 'K%';