------ GROUP BY in MySQL ------
-------------------------------

-- Use company_db
USE company_db;


---- Example: Count of employees in each department
SELECT department, COUNT(*) AS total_employees
FROM employee
GROUP BY department;


---- Example: Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;


---- Using GROUP BY with Multiple Columns
SELECT department, status, AVG(salary) AS avg_salary
FROM employee
GROUP BY department, status;

-----------------------------------------------------------------

------ The HAVING Clause

---- Example: Departments with more than 5 employees
SELECT department, status, AVG(salary) AS avg_salary
FROM employee
GROUP BY department, status
HAVING avg_salary > 60000;

-----------------------------------------------------------------

------ Using WITH ROLLUP in MySQL
SELECT department, status, AVG(salary) AS avg_salary
FROM employee
GROUP BY department, status
WITH ROLLUP;