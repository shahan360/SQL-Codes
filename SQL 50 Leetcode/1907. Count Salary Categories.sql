"""
Table: Accounts

+-------------+------+
| Column Name | Type |
+-------------+------+
| account_id  | int  |
| income      | int  |
+-------------+------+
account_id is the primary key (column with unique values) for this table.
Each row contains information about the monthly income for one bank account.
 

Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:

"Low Salary": All the salaries strictly less than $20000.
"Average Salary": All the salaries in the inclusive range [$20000, $50000].
"High Salary": All the salaries strictly greater than $50000.
The result table must contain all three categories. If there are no accounts in a category, return 0.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Accounts table:
+------------+--------+
| account_id | income |
+------------+--------+
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |
+------------+--------+
Output: 
+----------------+----------------+
| category       | accounts_count |
+----------------+----------------+
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |
+----------------+----------------+
Explanation: 
Low Salary: Account 2.
Average Salary: No accounts.
High Salary: Accounts 3, 6, and 8.
"""
-- Select the predefined categories and count the number of accounts in each category.
SELECT cat.category, COUNT(T.account_id) AS accounts_count
FROM (
    -- Subquery to generate predefined categories: 'Low Salary', 'Average Salary', 'High Salary'
    SELECT 'Low Salary' AS category 
    UNION 
    SELECT 'Average Salary'
    UNION 
    SELECT 'High Salary'
) cat
-- Left join the predefined categories with the Accounts table categorized by income.
LEFT JOIN (
    -- Subquery to categorize accounts based on income into the predefined categories.
    SELECT *, 
           CASE 
               -- Categorize accounts with income less than 20000 as 'Low Salary'
               WHEN income < 20000 THEN 'Low Salary'
               -- Categorize accounts with income between 20000 and 50000 as 'Average Salary'
               WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
               -- Categorize accounts with income greater than 50000 as 'High Salary'
               ELSE 'High Salary' 
           END AS category
    FROM Accounts
) T ON cat.category = T.category
-- Group the result by the predefined categories.
GROUP BY cat.category;
