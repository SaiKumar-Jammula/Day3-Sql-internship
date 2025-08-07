use e_commerce;
SELECT * FROM products;
SELECT * FROM customers;

-- specific columns from customers

SELECT customer_name, customer_email, customer_phone FROM customers;

-- products with price greater than 1000

SELECT * FROM products WHERE price > 1000;

-- orders with status 'Shipped'
SELECT * FROM orders WHERE status = 'Shipped';

-- customers whose name includes 'sai'
SELECT * FROM customers WHERE customer_name LIKE '%sai%';

-- using between
SELECT * FROM orders WHERE order_date BETWEEN '2025-08-01' AND '2025-08-03';

-- first 5 records from payments table
SELECT * FROM payments LIMIT 5;

-- Get all products in categories 'Electronics', 'Fashion', or 'Home , display one id from electronics'

SELECT * FROM products 
WHERE category_id IN (
    SELECT category_id FROM categories 
    WHERE category_name IN ('Electronics', 'Fashion', 'Home')
);

-- all products sorted by price descending
SELECT * FROM products ORDER BY price DESC;

-- alias
SELECT customer_name AS Name FROM customers;

-- using distnict
SELECT DISTINCT status FROM orders;

-- using order by
SELECT * FROM categories ORDER BY category_name;
