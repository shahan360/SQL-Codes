"""
Table: Products

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| new_price     | int     |
| change_date   | date    |
+---------------+---------+
(product_id, change_date) is the primary key (combination of columns with unique values) of this table.
Each row of this table indicates that the price of some product was changed to a new price at some date.
 

Write a solution to find the prices of all products on 2019-08-16. Assume the price of all products before any change is 10.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Products table:
+------------+-----------+-------------+
| product_id | new_price | change_date |
+------------+-----------+-------------+
| 1          | 20        | 2019-08-14  |
| 2          | 50        | 2019-08-14  |
| 1          | 30        | 2019-08-15  |
| 1          | 35        | 2019-08-16  |
| 2          | 65        | 2019-08-17  |
| 3          | 20        | 2019-08-18  |
+------------+-----------+-------------+
Output: 
+------------+-------+
| product_id | price |
+------------+-------+
| 2          | 50    |
| 1          | 35    |
| 3          | 10    |
+------------+-------+
"""

-- Common Table Expression (CTE) to calculate the difference between '2019-08-16' and each product's change_date.
WITH data AS (
    SELECT *, ('2019-08-16'::date - change_date) AS diff
    FROM Products
)

-- Main query to calculate the price of each product on '2019-08-16'.
SELECT T.product_id, COALESCE(SUM(T.price), 10) AS price
FROM (
    -- Subquery to calculate the price based on the minimum difference between the change_date and '2019-08-16' for each product.
    SELECT data.*, d2.min_diff, 
           -- Calculate the price based on the condition:
           -- If the difference equals the minimum difference, use the new_price.
           -- If the difference doesn't equal the minimum difference, use 0.
           -- If there is no minimum difference, use NULL.
           CASE WHEN data.diff = d2.min_diff THEN new_price 
                WHEN data.diff <> d2.min_diff THEN 0 
                ELSE NULL 
           END AS price
    FROM data 
    -- Join with a subquery that calculates the minimum difference for each product.
    LEFT JOIN (
        SELECT product_id, MIN(diff) AS min_diff 
        FROM data
        WHERE diff >= 0 -- Ensure the minimum difference is non-negative.
        GROUP BY product_id
    ) d2 ON data.product_id = d2.product_id
) T
-- Group the results by product_id to get the final price for each product.
GROUP BY T.product_id;
