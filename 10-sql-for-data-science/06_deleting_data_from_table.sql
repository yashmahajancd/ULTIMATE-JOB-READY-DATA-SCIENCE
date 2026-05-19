------ How to Delete Data in a MySQL Table ------
-------------------------------------------------

--- First Insert a Specific Row
INSERT INTO vtp_students (id, name, is_passed, age, email, admission_date) VALUES (12, 'Nayan', false, 20, NULL, '2024-07-22');


--- Delete a Specific Row
DELETE FROM vtp_students WHERE email IS NULL;


--- Delete Rows Using Comparison Operators
DELETE FROM vtp_students WHERE age <= 18;




------ Syntax ------
--------------------

-- Delete All Rows (Use with Caution)
DELETE FROM table_name;


-- Completely Remove the Table
DROP TABLE table_name;