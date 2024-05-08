"""
Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
 

Write a solution to find managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+
"""

-- Write your PostgreSQL query statement below
SELECT e2.name -- Only select the name from the table where we apply the GROUP BY and HAVING clause 
FROM Employee e1 INNER JOIN Employee e2 -- Performing a self join on the Employee table to fetch the employees from e1 table and their managers from e2 table
ON e1.managerId = e2.id -- Joining the tables on the managerId of e1 table and id(Employee id) of e2 table
GROUP BY e2.id, e2.name -- Grouping the result by the id and name of the manager from e2 table
HAVING COUNT(e1.id)>=5; -- Filtering the result by the count of employees managed by the manager from e2 table.