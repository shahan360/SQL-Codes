"""
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Weather table:
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
"""
-- Write your PostgreSQL query statement below
-- -- Selecting the Id from the Weather table
-- SELECT Weather.Id 

-- -- Joining the Weather table with itself, creating an alias 'w' for the joined table
-- FROM Weather 
-- JOIN Weather AS w 

-- -- Join condition: Matching records where the RecordDate of 'w' is equal to the RecordDate of 'Weather' minus one day
-- ON w.RecordDate = Weather.RecordDate - INTERVAL '1 day' 

-- -- Filtering rows where the Temperature of 'Weather' is greater than the Temperature of 'w'
-- WHERE Weather.Temperature > w.Temperature;

SELECT w1.id
FROM Weather w1 LEFT JOIN Weather w2  -- Performing Self Join when we need to join the same table with itself.
ON w1.recordDate - INTERVAL '1 DAY' = w2.recordDate -- Taking the day interval of 1 day so used INTERVAL '1 DAY'. This is generally used for date operations in SQL.
WHERE w1.temperature>w2.temperature;
