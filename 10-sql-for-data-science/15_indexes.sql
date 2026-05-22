------ MySQL Indexes ------
---------------------------

-- Use Database
USE company_db;


---- 1. Single Column Index
CREATE INDEX idx_dept ON employee(department);

-- Check
SELECT * FROM employee WHERE department = 'IT';


---- 2. Multi-column (Composite) Index
CREATE INDEX idx_salary_gender ON employee(salary, gender);

-- Check
SELECT * FROM employee WHERE salary > 50000 AND gender = 'Female';

--------------------------------------------------------------------------------------

---- How to Delete (Drop) an Index
DROP INDEX idx_dept ON employee;


---- Viewing Existing Indexes
SHOW INDEX FROM employee;

--------------------------------------------------------------------------------------

-- Delete (Drop) an Index
DROP INDEX idx_salary_gender ON employee;

-- Viewing Existing Indexes
SHOW INDEX FROM employee;