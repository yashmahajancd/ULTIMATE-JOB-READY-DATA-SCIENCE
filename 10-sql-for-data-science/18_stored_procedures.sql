------ Stored Procedures in MySQL ------
----------------------------------------

-- Use company_db
USE company_db;

-----------------------------------------------------------------------

------ Creating a Stored Procedure

---- Example: Simple Procedure to List All Employees
DELIMITER //

CREATE PROCEDURE list_employees()

BEGIN
    SELECT * FROM employee;
    SELECT first_name FROM employee;
END //

DELIMITER ;


---- Calling a Stored Procedure
CALL list_employees();

-----------------------------------------------------------------------

------ Stored Procedure with Parameters

---- Example: Get details of an employee by ID
