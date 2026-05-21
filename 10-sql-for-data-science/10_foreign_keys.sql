------ MySQL Foreign Key Tutorial ------
----------------------------------------

--- 1. Create a Database
CREATE DATABASE school;

USE school;


--- 2. Create Tables
CREATE TABLE classes (
	class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(60) NOT NULL,
    class_id_of_student INT,
    FOREIGN KEY (class_id_of_student) REFERENCES classes(class_id)
    ON UPDATE CASCADE
    ON DELETE SET NULL
);


--- 3. Insert Sample Data
INSERT INTO classes (class_name) VALUES
('Mathematics'),
('Science'),
('History');

INSERT INTO students (student_name, class_id_of_student) VALUES
('Shreya', 1),
('Komal', 2),
('Yash', 1);

----------------------------------------------------------------

-- ON DELETE SET NULL
DELETE FROM classes WHERE class_id = 1;

-- ON UPDATE CASCADE
UPDATE classes SET class_id = 102 WHERE class_id = 2;

----------------------------------------------------------------

--- 5. View the Relationships

-- To check the foreign key constraints:
SHOW CREATE TABLE students;

-- To see all foreign keys in the current database:
SELECT 
	table_name,
    column_name,
    constraint_name,
    referenced_table_name,
    referenced_column_name
FROM
	information_schema.key_column_usage
WHERE
	referenced_table_name IS NOT NULL
    AND table_schema = 'school';