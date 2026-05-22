------ MySQL Views ------
-------------------------

-- Use Database
USE company_db;


--- Creating a View
CREATE VIEW emp AS
SELECT CONCAT(first_name, ' ', last_name) AS name, salary, ROUND(DATEDIFF(NOW(), hire_date) / 365) AS years FROM employee;


--- Using a View
SELECT * FROM emp;


--- Apply filters
SELECT * FROM emp WHERE years > 5;


--- Updating a View
CREATE OR REPLACE VIEW emp AS
SELECT CONCAT(first_name, ' ', last_name) AS Name, salary AS Salary, department AS Department, ROUND(DATEDIFF(NOW(), hire_date) / 365) AS Years
FROM employee;


--- Dropping (Deleting) a View
-- DROP VIEW emp;