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
DELIMITER //

CREATE PROCEDURE get_employee_by_id(IN p_emp_id INT)

BEGIN
	SELECT * FROM employee WHERE emp_id = p_emp_id;
END //

DELIMITER ;


---- Call it
CALL get_employee_by_id(3);

-----------------------------------------------------------------------

------ Dropping a Stored Procedure

---- To delete a stored procedure
DROP PROCEDURE IF EXISTS get_employee_by_id;

-----------------------------------------------------------------------
-----------------------------------------------------------------------

---- Example: Get details of an employee by Department
DELIMITER //

CREATE PROCEDURE get_emp_by_dept(IN dept VARCHAR(20))

BEGIN
	SELECT * FROM employee WHERE department = dept;
END //

DELIMITER ;


---- Call it
CALL get_emp_by_dept('IT');


---- Delete it
DROP PROCEDURE IF EXISTS get_emp_by_dept;