------ How to Update Data in a MySQL Table ------
-------------------------------------------------

--- Update a Single Row
UPDATE vtp_students SET is_passed = true WHERE name = 'Bhavesh';


--- Update Multiple Columns
UPDATE vtp_students SET admission_date = '2024-05-20', is_passed = true WHERE name LIKE '%sh' AND age = 19;


--- Update All Rows
UPDATE vtp_students SET age = age + 1;


--- Conditional Update with Comparison Operators
UPDATE vtp_students SET admission_date = '2024-05-28' WHERE admission_date = '2024-05-20';

UPDATE vtp_students SET age = age - 1 WHERE age > 21;


--- Update Using IS NULL
INSERT INTO vtp_students (id, name, is_passed, age, email, admission_date) VALUES (11, 'Shailesh', 0, 20, 'shailesh@gmail.com', NULL);

-- Example: Set default admission_date to ‘Pending’ where graadmission_datede is NULL
UPDATE vtp_students SET admission_date = '2024-08-06' WHERE admission_date IS NULL;


--- Verify the Update
SELECT * FROM student;