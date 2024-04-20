--UPDATE
--Syntax:
--UPDATE table
--SET column1 = value1,
--	  column2 = value2,...
--    WHERE condition;

--Example:
--UPDATE account
--SET last_login = CURRENT_TIMESTAMP
-- WHERE last_login IS NULL;

--Reset everything without specifying WHERE condition
--UPDATE account
--SET last_login  = CURRENT_TIMESTAMP

--Set based on another column
--UPDATE account 
--SET last_login = created_on

--Using another table's values (UPDATE join)
--UPDATE TableA
--SET orignial_col = TableB.new_col
--FROM tableB
--WHERE tableA.id = TableB.id

--Return affected rows
--UPDATE account
--SET last_login = created_on
--RETURNING account_id,last_login

-- SELECT * FROM account;

-- UPDATE account
-- SET last_Login = CURRENT_TIMESTAMP;

-- SELECT * FROM account;