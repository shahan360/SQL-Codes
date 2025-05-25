-- OVER() clause in MySQL is used to define a window of rows for window functions. It allows you to perform calculations across a set of rows related to the current row without collapsing the result set into a single row.

-- The difference between two queries without and with the OVER() clause is that the first query aggregates the data into a single row, while the second query retains all rows and applies the window function to each row individually.

-- This is shown in the following example:

-- Lets take the following demo data in the `orders` table:
-- +-------------+------------+--------+
-- | order_id    | customer_id| amount |
-- +-------------+------------+--------+
-- | 1           | 1          | 100    |
-- | 2           | 1          | 200    |
-- | 3           | 2          | 150    |
-- | 4           | 2          | 50     |
-- | 5           | 3          | 150    |
-- +-------------+------------+--------+
-- The `orders` table contains the following columns:
-- - `order_id`: Unique identifier for each order
-- - `customer_id`: Identifier for the customer who placed the order
-- - `amount`: Amount of the order
-- The following queries demonstrate the difference between using and not using the OVER() clause with a window function.
-- The first query calculates the total amount spent by each customer without using the OVER() clause, which groups the results by customer_id.
-- The second query calculates the same total amount but uses the OVER() clause to apply the SUM() function as a window function, allowing us to see the total amount for each order without collapsing the result set.
-- Query without OVER():
SELECT 
    customer_id,
    SUM(amount) AS total_amount
FROM
    orders
GROUP BY
    customer_id;

-- This query will return:
-- +------------+--------------+
-- | customer_id| total_amount |
-- +------------+--------------+
-- | 1          | 300          |
-- | 2          | 200          |
-- | 3          | 150          |
-- +------------+--------------+    

-- Query with OVER():
SELECT 
    order_id,
    customer_id,
    amount,
    SUM(amount) OVER () AS total_amount
    FROM
    orders;
-- This query will return:
-- +-------------+------------+--------+--------------+
-- | order_id    | customer_id| amount | total_amount |
-- +-------------+------------+--------+--------------+
-- | 1           | 1          | 100    | 650          |
-- | 2           | 1          | 200    | 650          |
-- | 3           | 2          | 150    | 650          |
-- | 4           | 2          | 50     | 650          |
-- | 5           | 3          | 150    | 650          |
-- +-------------+------------+--------+--------------+
-- The `total_amount` column shows the total amount for all orders, repeated for each row, without collapsing the result set into a single row.
-- This allows you to see the total amount alongside each individual order, which is not possible with the first query that uses GROUP BY.
-- The OVER() clause can also be used with partitioning and ordering to perform more complex calculations.

-------------------------------------------------


CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);
 
 
SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;
 
SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(),
    MAX(salary) OVER()
FROM employees;
    
    
SELECT 
    emp_no, department, salary, MIN(salary), MAX(salary)
FROM
    employees;