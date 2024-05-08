"""
Table: Transactions

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| country       | varchar |
| state         | enum    |
| amount        | int     |
| trans_date    | date    |
+---------------+---------+
id is the primary key of this table.
The table has information about incoming transactions.
The state column is an enum of type ["approved", "declined"].
 

Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Transactions table:
+------+---------+----------+--------+------------+
| id   | country | state    | amount | trans_date |
+------+---------+----------+--------+------------+
| 121  | US      | approved | 1000   | 2018-12-18 |
| 122  | US      | declined | 2000   | 2018-12-19 |
| 123  | US      | approved | 2000   | 2019-01-01 |
| 124  | DE      | approved | 2000   | 2019-01-07 |
+------+---------+----------+--------+------------+
Output: 
+----------+---------+-------------+----------------+--------------------+-----------------------+
| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
+----------+---------+-------------+----------------+--------------------+-----------------------+
| 2018-12  | US      | 2           | 1              | 3000               | 1000                  |
| 2019-01  | US      | 1           | 1              | 2000               | 2000                  |
| 2019-01  | DE      | 1           | 1              | 2000               | 2000                  |
+----------+---------+-------------+----------------+--------------------+-----------------------+
"""

-- This SQL query calculates aggregated transaction statistics grouped by month and country.

SELECT 
    TO_CHAR(trans_date, 'YYYY-MM') AS month, -- Formats the transaction date as 'YYYY-MM' and aliases it as 'month'
    country, -- Selects the country column
    COUNT(id) AS trans_count, -- Counts the number of transactions and aliases it as 'trans_count'
    SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END)::numeric AS approved_count, -- Sums the approved transactions (where state='approved') and aliases it as 'approved_count'
    SUM(amount) AS trans_total_amount, -- Sums the total transaction amounts and aliases it as 'trans_total_amount'
    SUM(CASE WHEN state='approved' THEN amount ELSE 0 END)::numeric AS approved_total_amount -- Sums the amounts of approved transactions and aliases it as 'approved_total_amount'
FROM 
    Transactions -- Selects from the Transactions table
GROUP BY 
    TO_CHAR(trans_date, 'YYYY-MM'), country; -- Groups the results by month and country
