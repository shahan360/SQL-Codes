-- Cross Joins are used to combine all rows from two or more tables.
-- The result set will contain all possible combinations of rows from the tables involved.
-- This type of join does not require any condition to join the tables.
-- It is important to note that cross joins can produce a large result set, especially if the tables involved have many rows.
-- In this example, we will create two tables: `products` and `categories`.
-- The `products` table will contain information about products, and the `categories` table will contain information about product categories.
-- We will then perform a cross join to combine all products with all categories.
-- Create the `products` table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);
-- Insert sample data into the `products` table
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 999.99),
(2, 'Smartphone', 499.99),
(3, 'Tablet', 299.99);
-- Create the `categories` table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);
-- Insert sample data into the `categories` table
INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Computers'),
(3, 'Accessories');
-- Perform a cross join to combine all products with all categories
SELECT p.product_id, p.product_name, c.category_id, c.category_name
FROM products p
CROSS JOIN categories c;
-- The result set will contain all possible combinations of products and categories.
-- For example, if there are 3 products and 3 categories, the result set will contain 9 rows.
-- Each product will be paired with each category, resulting in a Cartesian product.
-- This type of join is useful when you want to analyze all possible combinations of data from different tables.
-- However, be cautious when using cross joins, as they can lead to large result sets and performance issues if the tables involved have many rows.
-- Clean up the tables after use
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
-- Note: Cross joins are not commonly used in practice due to the potential for large result sets.
-- They are primarily used for specific scenarios where all combinations of data are needed.
-- In most cases, other types of joins (INNER JOIN, LEFT JOIN, etc.) are preferred for combining data from multiple tables.
-- This example demonstrates the use of cross joins in SQL.
-- Cross joins can be useful in certain scenarios, such as generating test data or analyzing combinations of data.
-- However, they should be used with caution due to the potential for large result sets.
-- Always consider the size of the tables involved and the impact on performance when using cross joins.
-- In summary, cross joins are a powerful tool in SQL for combining data from multiple tables.
-- They allow you to create all possible combinations of rows from the tables involved.
-- However, they should be used judiciously to avoid performance issues and large result sets.
-- Cross joins are not commonly used in practice, but they can be useful in specific scenarios.

-------------------------------------

SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;
 
 
SELECT * FROM orders 
WHERE customer_id = (SELECT id FROM customers WHERE last_name = 'George');
 
-- To perform a (kind of useless) cross join:
SELECT * FROM customers, orders;
