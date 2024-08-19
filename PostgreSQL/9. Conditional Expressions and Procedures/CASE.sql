--We can use the CASE statement to only execute SQL code when certain conditions are met.
--This is very simiar to IF/ELSE statements in other programming languages.
--There are two main ways to use a CASE statement, either a general CASE or a CASE expression.

--General Syntax:
--CASE
--	WHEN condition1 THEN result1
--	WHEN condition2 THEN result2
--	ELSE some_other_result
--END

-- Simple Example:
--SELECT a
--CASE WHEN a = 1 THEN 'one'
--     WHEN a = 2 THEN 'two'
--     ELSE 'other'
--END 
--FROM test;

-- CASE Expression:
--CASE expression
--	WHEN value1 THEN result1
--	WHEN value2 THEN result2
--	ELSE some_other_result
--END

-- Rewriting our previous example:
--SELECT a,
-- CASE a WHEN 1 THEN 'one'
--        WHEN 2 THEN 'two'
--        ELSE 'other'
--END
--FROM test;

SELECT customer_id, 
CASE 
	WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 and 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer;

SELECT customer_id, 
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer;

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS number_of_bargains
FROM film;

SELECT
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate
   WHEN 2.99 THEN 1
   ELSE 0
END) AS regular,
SUM(CASE rental_rate
   WHEN 4.99 THEN 1
   ELSE 0
END) AS premium   
FROM film;

-- Challenge Task
SELECT SUM(CASE rating
			WHEN 'R' THEN 1
			ELSE 0
			END) AS r,
		SUM(CASE rating
			WHEN 'PG' THEN 1
			ELSE 0
			END) AS pg,
		SUM(CASE rating
			WHEN 'PG-13' THEN 1
			ELSE 0
			END) AS pg13				
FROM film;