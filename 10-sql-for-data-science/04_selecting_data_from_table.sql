------ How to Select Data in MySQL ------
-----------------------------------------

--- 1. Basic SELECT Statement
SELECT * FROM vtp_students;

-- To retrieve specific columns (e.g., only name and grade ):
SELECT name, is_passed FROM vtp_students;


--- 2. Using the WHERE Clause
SELECT * FROM vtp_students WHERE is_passed = true;

SELECT * FROM vtp_students WHERE age < 20;

SELECT * FROM vtp_students WHERE age > 20 AND is_passed = true;


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


--- 4. Handling NULL Values
SELECT * FROM vtp_students WHERE admission_date IS NULL;

SELECT * FROM vtp_students WHERE admission_date IS NOT NULL;


--- 5. Combining Conditions
SELECT * FROM vtp_students WHERE age > 20 AND is_passed = true;

SELECT * FROM vtp_students WHERE name LIKE '%sh' OR age < 18;

SELECT * FROM vtp_students WHERE (name LIKE '%sh' OR is_passed = true) AND age > 20;


--- 6. Sorting Results with ORDER BY
SELECT * FROM vtp_students ORDER BY age ASC;

SELECT * FROM vtp_students ORDER BY name DESC;


--- 7. Limiting Results with LIMIT
SELECT * FROM vtp_students LIMIT 5;

SELECT * FROM vtp_students LIMIT 2, 5;


--- 8. Using Wildcards with LIKE
SELECT * FROM vtp_students WHERE name LIKE 'K%';

SELECT * FROM vtp_students WHERE name LIKE '__sh';

-----------------------------------------------------------------------------------------


--- Matching Dates with _ Wildcard
SELECT * FROM vtp_students WHERE admission_date LIKE '____-__-19';

SELECT * FROM vtp_students WHERE admission_date LIKE '2024-06-%';

SELECT * FROM vtp_students WHERE admission_date LIKE '2024-07-__';

SELECT * FROM vtp_students WHERE admission_date LIKE '____-__-1_';