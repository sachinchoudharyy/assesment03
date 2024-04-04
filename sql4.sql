
use sales;

CREATE TABLE inventory (

product_id INT PRIMARY KEY,
product_name VARCHAR(255),
stock_level INT );
INSERT INTO inventory (product_id, product_name, stock_level) VALUES
(1, 'Laptop', 60),
(2, 'Shirt', 30),
(3, 'Microwave', 20);

SELECT product_name, stock_level
FROM inventory
WHERE stock_level < 50;
