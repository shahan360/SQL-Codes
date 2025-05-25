-- Link to MySQL documentation for Window Functions:
-- https://dev.mysql.com/doc/refman/8.0/en/window-functions.html
-- Window functions allow you to perform calculations across a set of table rows that are related to the current row.
-- They are similar to aggregate functions but do not group the result set into a single row.
-- Example of a simple window function using the SUM() function to calculate a running total.
SELECT 
    order_id,
    order_date,
    amount,
    SUM(amount) OVER (ORDER BY order_date) AS running_total
FROM
    orders
ORDER BY
    order_date;

-- Example of using the ROW_NUMBER() window function to assign a unique sequential integer to rows within a partition of a result set.
SELECT 
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS order_rank
FROM
    orders
ORDER BY
    customer_id, order_date;
-- Example of using the RANK() window function to assign a rank to each row within a partition of a result set.
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS rank_by_amount
FROM
    orders
ORDER BY
    customer_id, rank_by_amount;
-- Example of using the DENSE_RANK() window function to assign a rank to each row within a partition of a result set, without gaps in the ranking.
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY amount DESC) AS dense_rank_by_amount
FROM
    orders
ORDER BY
    customer_id, dense_rank_by_amount;
-- Example of using the NTILE() window function to distribute rows into a specified number of groups.
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    NTILE(4) OVER (ORDER BY amount DESC) AS quartile
FROM
    orders
ORDER BY
    customer_id, quartile;
-- Example of using the LAG() window function to access data from a previous row in the result set.
SELECT 
    order_id,
    order_date,
    amount,
    LAG(amount, 1) OVER (ORDER BY order_date) AS previous_amount
FROM
    orders
ORDER BY
    order_date;
-- Example of using the LEAD() window function to access data from a subsequent row in the result set.
SELECT 
    order_id,
    order_date,
    amount,
    LEAD(amount, 1) OVER (ORDER BY order_date) AS next_amount
FROM
    orders
ORDER BY
    order_date;
-- Example of using the FIRST_VALUE() window function to return the first value in an ordered partition of a result set.
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    FIRST_VALUE(amount) OVER (PARTITION BY customer_id ORDER BY order_date) AS first_order_amount
FROM
    orders
ORDER BY
    customer_id, order_date;
-- Example of using the LAST_VALUE() window function to return the last value in an ordered partition of a result set.  
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    LAST_VALUE(amount) OVER (PARTITION BY customer_id ORDER BY order_date 
                              ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_order_amount
FROM
    orders
ORDER BY
    customer_id, order_date;
-- Example of using the NTH_VALUE() window function to return the nth value in an ordered partition of a result set.
SELECT 
    customer_id,
    order_id,
    order_date,
    amount,
    NTH_VALUE(amount, 2) OVER (PARTITION BY customer_id ORDER BY order_date 
                                ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS second_order_amount
FROM
    orders
ORDER BY
    customer_id, order_date;


