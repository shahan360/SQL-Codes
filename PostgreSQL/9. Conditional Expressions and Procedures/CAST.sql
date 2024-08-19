-- The CAST operator let's you convert from one data type into another.
-- Keep in mind not every instance of a data type can be CAST to another data type, it must be reasonable to convert the data,
-- for example '5' to an integer will work, 'five' to an integer will not.

--Syntax for CAST function:
--SELECT CAST('5' AS INTEGER)

--PostgreSQL CAST operator
--SELECT '5'::INTEGER

--Keep in mid you can then use this in a SELECT query with a column name instead of a single instance.
--SELECT CAST(date AS TIMESTAMP) FROM table

SELECT CAST('5' AS INTEGER) AS new_int;

SELECT CAST('five' AS INTEGER) AS new_int; -- will throw error

SELECT '5'::INTEGER;

SELECT 'five'::INTEGER; -- will throw error

SELECT * FROM rental; 

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;
