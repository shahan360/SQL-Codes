"""
Table: Triangle

+-------------+------+
| Column Name | Type |
+-------------+------+
| x           | int  |
| y           | int  |
| z           | int  |
+-------------+------+
In SQL, (x, y, z) is the primary key column for this table.
Each row of this table contains the lengths of three line segments.
 

Report for every three line segments whether they can form a triangle.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Triangle table:
+----+----+----+
| x  | y  | z  |
+----+----+----+
| 13 | 15 | 30 |
| 10 | 20 | 15 |
+----+----+----+
Output: 
+----+----+----+----------+
| x  | y  | z  | triangle |
+----+----+----+----------+
| 13 | 15 | 30 | No       |
| 10 | 20 | 15 | Yes      |
+----+----+----+----------+
"""

-- Select all columns from the Triangle table, along with a calculated column indicating whether the triangle is valid or not
SELECT *,
    CASE
        -- Check if the sum of any two sides of the triangle is greater than the third side
        WHEN x+y>z AND y+z>x AND x+z>y THEN 'Yes' -- If the conditions are met, label the triangle as 'Yes'
        ELSE 'No' -- Otherwise, label it as 'No'
    END AS triangle -- Alias the calculated column as 'triangle'
FROM Triangle; -- Retrieve data from the Triangle table
