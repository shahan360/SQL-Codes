--INSERT allows you to add in rows to a table.
--General Syntax:
--INSERT INTO table(column1, column2, ...)
--VALUES
--	(value1, value2, ...),
--	(value1, value2, ...),...;

--Syntax for Inserting Values from another table:
--INSERT INTO table(column1, column2, ...)
--SELECT column1, column2,...
--FROM another_table
--WHERE condition;
--NOTE: The inserted row values must match up for the table, including constraints.
--SERIAL columns do not need to be provided a value.

SELECT * from account;

INSERT INTO account(username, password, email, created_on)
VALUES
('Shashank','password','shashank@email.com',CURRENT_TIMESTAMP);

SELECT * from account;

INSERT INTO job(job_name)
VALUES
('Astronaut');

INSERT INTO job(job_name)
VALUES
('Engineer');

SELECT * FROM job;

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
	(1,1,CURRENT_TIMESTAMP);
	
SELECT * FROM account_job;

Below command with throw error due to foreign key constraint
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
	(1,1,CURRENT_TIMESTAMP);	
