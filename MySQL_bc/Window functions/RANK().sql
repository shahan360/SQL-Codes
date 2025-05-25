-- The below command using RANK() function
SELECT 
emp_no,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_salary_rank,
RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM employees ORDER BY department;

-- The above command will return the employee number, department, salary, and their rank within their department based on salary, as well as their overall rank across all departments based on salary.
-- The RANK() function assigns a rank to each row within a partition of a result set, with gaps in the ranking for ties.
-- The PARTITION BY clause divides the result set into partitions to which the RANK() function is applied.
-- The ORDER BY clause specifies the order in which the rows are ranked.
-- The result will show the rank of each employee's salary within their department and overall across all departments.