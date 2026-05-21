------ SQL Tutorial: Deep Dive into Constraints ------
------------------------------------------------------

CREATE DATABASE ex_constraints;
USE ex_constraints;

--- 1. NOT NULL Constraint
CREATE TABLE emp (
	id INT NOT NULL,
    name VARCHAR(20) NOT NULL
);


--- 2. UNIQUE Constraint
CREATE TABLE users (
	username VARCHAR(20) UNIQUE,
    email VARCHAR(30) UNIQUE
);


--- 3. DEFAULT Constraint
CREATE TABLE products (
    name VARCHAR(50),
    status VARCHAR(20) DEFAULT 'in_stock'
);


--- 4. CHECK Constraint
CREATE TABLE accounts (
	id INT,
    balance DECIMAL(10, 2) CHECK (balance > 500)
);


--- 5. Naming Constraints
CREATE TABLE college_students (
	roll_no INT PRIMARY KEY,
    age INT CONSTRAINT check_age CHECK (age >= 18),
    email VARCHAR(40) UNIQUE
);