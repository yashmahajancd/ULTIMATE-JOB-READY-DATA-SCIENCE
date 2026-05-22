------ Subqueries in MySQL ------
---------------------------------

------ Subquery in the WHERE Clause

--- Example: Employees who earn more than average
SELECT first_name, last_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

----------------------------------------------------------------------

------ Subquery in the FROM Clause

--- Example: Department-wise average salary above 50,000
SELECT department, avg_salary
FROM (
	SELECT department, AVG(salary) AS avg_salary
	FROM employee
	GROUP BY department
) AS dept_avg
WHERE avg_salary > 50000;

----------------------------------------------------------------------

------ Subquery in the SELECT Clause

--- Example: Count of projects per employee
SELECT
	CONCAT(first_name, ' ', last_name) AS Name,
    (SELECT COUNT(*)
	FROM employee e2
	WHERE e2.manager_id = e1.emp_id) AS employees_managed_count
FROM employee e1;

----------------------------------------------------------------------

------ Correlated Subqueries

--- Example: Employee earning more than department’s average
SELECT
	emp_id AS Emp_ID,
	CONCAT(first_name, ' ', last_name) AS Name,
    department AS Department,
    salary AS Salary
FROM employee e
WHERE salary > (
	SELECT AVG(salary)
    FROM employee
    WHERE department = e.department
);