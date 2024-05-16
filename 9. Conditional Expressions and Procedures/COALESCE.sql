--The COALESCE function accepts an unlimited number of arguments. It returns
--the first argument that is not null. If all arguments are null, the COALESCE 
--function will return null.
--COALESCE(arg_1,arg_2,...,arg_n)

--Example
--SELECT COALESCE(NULL, 1, 2, 3); -- Returns 1
--SELECT COALESCE(NULL, NULL, NULL); -- Returns NULL
--SELECT COALESCE(NULL, NULL, 3); -- Returns 3
--SELECT COALESCE(1,2); -- Returns 1

--The COALESCE function becomes useful when querying a table that contains null values and substituting it with another value.
--Example:
--SELECT item,(price - COALESCE(discount,0)) AS final FROM table -- This will give the final column values without returning any 'null' value for each record.
--Keep the COALESCE function in mind in case you encounter a table with null values that you want to perform operations on!