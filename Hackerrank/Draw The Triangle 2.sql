P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

* 
* * 
* * * 
* * * * 
* * * * *
Write a query to print the pattern P(20).

-- Solution
/*
Enter your query here.
*/
-- Create a temporary table of numbers
WITH RECURSIVE Numbers AS(
    SELECT 1 AS n
    UNION ALL
    SELECT n+1 FROM Numbers WHERE n<20
)
-- Select the pattern based on the numbers table
SELECT REPEAT('* ', 0+n) AS pattern_line
FROM Numbers
ORDER BY n;