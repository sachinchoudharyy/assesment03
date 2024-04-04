create database sales;
use sales;

CREATE TABLE employees (

employee_id INT PRIMARY KEY,
employee_name VARCHAR(255),
manager_id INT);

create table manager(manager_name varchar(20),manager_id int);

INSERT INTO employees (employee_id, employee_name, manager_id) VALUES
(1, 'John Doe', 2),
(2, 'Jane Smith', NULL),
(3, 'Bob Johnson', 2);

SELECT employees.employee_name ,
       manager.manager_name
FROM employees 
LEFT JOIN manager  ON manager.manager_id = employees.employee_id;
