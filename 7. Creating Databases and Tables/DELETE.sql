--We can use the DELETE clause to remove rows from a table.
--For example:
--DELETE FROM table WHERE row_id = 1

--We can delete rows based on their presence in other tables(DELETE Join).
--For example:
--DELETE FROM tableA USING tableB WHERE tableA.id = tableB.id

--We can also delete all rows from a table without specifying a condition.
--For example:
--DELETE FROM table

--Similar to UPDATE command, we can also add in a RETURNING call to return rows that were removed.

SELECT * FROM job;

INSERT INTO job(job_name)
VALUES ('Cowboy');

DELETE FROM job 
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name;

