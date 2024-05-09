"""
Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column.
 

Find all numbers that appear at least three times consecutively.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.
"""

-- Select distinct numbers (ConsecutiveNums) from the Logs table where each number is consecutive.
SELECT DISTINCT(L1.num) AS ConsecutiveNums
-- Join Logs table with itself twice to compare consecutive numbers.
FROM Logs L1
-- Left join Logs table with its consecutive number.
LEFT JOIN Logs L2
ON L1.id+1 = L2.id
-- Left join Logs table with the number after the consecutive number to check if it forms a consecutive sequence.
LEFT JOIN Logs L3
ON L2.id+1 = L3.id
-- Filter the rows where three consecutive numbers have the same value.
WHERE L1.num = L2.num
AND L2.num = L3.num;
