use sales;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(255));
CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE);
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie');
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-01-01'),
(2,2,'2024-01-02'),
(3,3,'2024-01-03');


SELECT customers.customer_name AS customer_name,
       COUNT(orders.order_id) AS total_orders
FROM customers 
LEFT JOIN orders  ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;
