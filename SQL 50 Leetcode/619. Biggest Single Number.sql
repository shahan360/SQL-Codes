"""
Table: MyNumbers

+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
+-------------+------+
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
Each row of this table contains an integer.
 

A single number is a number that appeared only once in the MyNumbers table.

Find the largest single number. If there is no single number, report null.

The result format is in the following example.

 

Example 1:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |
+-----+
Output: 
+-----+
| num |
+-----+
| 6   |
+-----+
Explanation: The single numbers are 1, 4, 5, and 6.
Since 6 is the largest single number, we return it.
Example 2:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |
+-----+
Output: 
+------+
| num  |
+------+
| null |
+------+
Explanation: There are no single numbers in the input table so we return null.
"""

-- Solution 1

-- Selecting a single value 'num' from the 'MyNumbers' table
SELECT (
    -- Subquery to find the latest unique number 
    SELECT num
    -- Grouping numbers
    FROM MyNumbers
    GROUP BY num
    -- Filtering to retain only numbers occurring once
    HAVING COUNT(*) = 1
    -- Sorting numbers in descending order
    ORDER BY num DESC
    -- Limiting the result to 1 row
    LIMIT 1
) AS num;


-- Solution 2

-- Selecting the maximum value of 'num' from the derived table T
SELECT MAX(T.num) AS num
-- Derived table T: Selecting 'num' from the 'MyNumbers' table
FROM (SELECT num
      FROM MyNumbers 
      -- Grouping the numbers by 'num'
      GROUP BY num
      -- Filtering the groups to include only those with a count of 1
      HAVING COUNT(*) = 1) T;
