-- We can use ORDER BY with window functions to control the order of rows within the window frame.
SELECT 
    employee_id,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM    
    employees
ORDER BY
    department, 
    salary_rank;
-- In this example, we rank employees within each department based on their salary in descending order.
-- The ORDER BY clause in the window function ensures that the ranking is done correctly within each department.
-- The final ORDER BY clause sorts the result set first by department and then by the calculated salary rank.
-- Note: The ORDER BY in the window function does not affect the final output order of the result set.
-- The final output will show employees ordered by department and their rank within that department based on salary.
-- This allows us to see how each employee ranks in terms of salary within their respective departments.
-- The output will look something like this:
-- +--------------+-------------+--------+-------------+
-- | employee_id | department  | salary | salary_rank |
-- +--------------+-------------+--------+-------------+
-- | 1            | Sales       | 60000  | 1           |
-- | 2            | Sales       | 55000  | 2           |
-- | 3            | HR          | 70000  | 1           |
-- | 4            | HR          | 65000  | 2           |
-- | 5            | IT          | 80000  | 1           |
-- | 6            | IT          | 75000  | 2           |
-- | 7            | Marketing   | 90000  | 1           |
-- | 8            | Marketing   | 85000  | 2           |
-- +--------------+-------------+--------+-------------+
-- This query is useful for generating reports where you need to analyze employee salaries within departments.
-- This example demonstrates how to use ORDER BY with window functions effectively in MySQL.

-----------------------------------------------------


SELECT 
    emp_no, 
    department, 
    salary, 
    SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;
 
SELECT 
    emp_no, 
    department, 
    salary, 
    MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) as rolling_min
FROM employees;