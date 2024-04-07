create database sales;
use sales;



CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(255),
category VARCHAR(255)
);
CREATE TABLE sales (

sale_id INT PRIMARY KEY,
product_id INT,
sale_date DATE,
quantity INT,
price DECIMAL(10, 2) );
INSERT INTO products (product_id, product_name, category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Shirt', 'Clothing'),
(3, 'Microwave', 'Home Appliances');
INSERT INTO sales (sale_id, product_id, sale_date, quantity, price) VALUES
(1, 1, '2024-01-01', 5, 1000.00),
(2, 2, '2024-01-02', 10, 20.00),
(3, 3, '2024-01-03', 3, 150.00);




SELECT 
    p.category,
    SUM(s.quantity * s.price) AS TotalRevenue
FROM 
    sales s
JOIN 
    products p ON s.product_id = p.product_id
WHERE 
    YEAR(s.sale_date) = YEAR(CURRENT_DATE())
GROUP BY 
    p.category;

