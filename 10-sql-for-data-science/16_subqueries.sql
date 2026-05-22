------ Subqueries in MySQL ------
---------------------------------

------ Subquery in the WHERE Clause

--- Example: Employees who earn more than average
SELECT first_name, last_name, salary FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);