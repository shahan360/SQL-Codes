### What is a Common Table Expression (CTE)?

A Common Table Expression (CTE) in SQL is a temporary, named result set that you define within a query using the WITH keyword. Think of it as a way to create a "virtual table" that only exists while your query is running. You can use this virtual table just like a regular table in your main query, but it disappears after the query finishes

### CTEs are useful for:

- Breaking complex queries into smaller, easier-to-read parts

- Avoiding repeating the same subquery multiple times

- Improving the readability and maintainability of your SQL code

- Handling hierarchical or recursive data (like organizational charts)

Basic Syntax
Here’s the basic structure of a CTE:
`
WITH cte_name AS (
    SELECT ...
    FROM ...
    WHERE ...
)
SELECT ...
FROM cte_name;
`

- cte_name: The name you give to your CTE (like naming a temporary table)

- The query inside the parentheses defines what data goes into the CTE

- You can then use cte_name in your main query as if it were a table

### Simple Example
Suppose you have an Employees table and you want to find employees who earn more than $50,000:

`
WITH HighEarningEmployees AS (
    SELECT EmployeeID, FirstName, LastName, Salary
    FROM Employees
    WHERE Salary > 50000
)
SELECT EmployeeID, FirstName, LastName
FROM HighEarningEmployees;
`

* The CTE HighEarningEmployees is defined first with the WITH clause
* The main query then selects from HighEarningEmployees

### Why Use a CTE Instead of a Subquery?
1. Readability: CTEs make your SQL easier to read and understand, especially for complex queries.
2. Reusability: You can reference the same CTE multiple times in your main query, which isn’t possible with a subquery.
3. Organization: CTEs help you organize your SQL code by separating logical steps

Example: Calculating Average Salary by Department
Suppose you want to find the average salary for each department:
`
WITH AvgSalaryByDept AS (
    SELECT Department, AVG(Salary) AS AvgSalary
    FROM Employees
    GROUP BY Department
)
SELECT *
FROM AvgSalaryByDept;
`
- The CTE AvgSalaryByDept calculates the average salary per department
- The main query simply selects all results from the CTE

### Recursive CTEs
A recursive CTE is a CTE that refers to itself. This is useful for working with hierarchical data, like finding all employees under a certain manager. Recursive CTEs have a base case and a recursive part, and they repeat until all results are found.

### Key Points
* CTEs are temporary and only exist for the duration of the query.

* You define a CTE with the WITH keyword, give it a name, and provide a query.

* You can use CTEs in SELECT, INSERT, UPDATE, or DELETE statements.

* CTEs are supported in most modern SQL databases, including MySQL, PostgreSQL, SQL Server, Oracle, and more.

# Summary Table
<code>|Feature | CTE | Subquery|
|Readability | High (named, organized) | Lower (nested, complex)|
|Reusability | Can reference multiple times | Used once per query|
|Temporary Table |	Yes (within query only) | No|
</code>

# Conclusion
A CTE is a powerful tool to simplify complex SQL queries, improve readability, and make your code easier to maintain. Just remember: define it with WITH, give it a name, and use it like a temporary table in your main query