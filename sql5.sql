
use sales;

CREATE TABLE salaries (
employee_id INT PRIMARY KEY,
department VARCHAR(255),
salary DECIMAL(10, 2));
INSERT INTO salaries (employee_id, department, salary) VALUES
(1, 'HR', 50000.00),
(2, 'Finance', 60000.00),
(3, 'Sales', 55000.00),
(4,'HR', 52000.00),
(5, 'Sales', 53000.00);

SELECT department, AVG(salary) AS average_salary
FROM salaries
GROUP BY department;
