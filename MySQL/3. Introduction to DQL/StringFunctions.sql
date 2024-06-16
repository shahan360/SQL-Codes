USE people;

-- Function 1 : UPPER 
-- 'UPPER' , as the name suggests its going to upper case all your characters you pass into it 

SELECT UPPER("dhoni");

-- Function 2 : LOWER  
--  'LOWER' lower cases all the characters .

-- SELECT CONCAT(UPPER(SUBSTRING("dhoni", 1 , 1) , LOWER(SUBSTRING("dhoni" , 2))));


SELECT LOWER("DHONI");

-- Function 3 : LENGTH  
-- 'LENGTH'  finds out the length of a given string 

SELECT LENGTH("Kohli");

/*
Function 4 : LEFT  
'LEFT' is used to return a specified number of characters from the left of the string
Takes in 2 args 
	1 . String.
    2 . An Integer which determines the characters upto which it should return from left
*/

SELECT LEFT("Sachin" , 3);

-- Function 5 : RIGHT  
-- 'RIGHT' is used to return a specified number of characters from the right of the string.

SELECT RIGHT("Sachin" ,  3);

-- Function 6 : SUBSTRING  
-- The 'SUBSTRING' function extracts a substring from a given string
-- 3 args 
--    1. String
--    2. Start position
--    3. Lenght of Substring (Optinal)

SELECT SUBSTRING("Sachin Tendulkar" , 8 , 6);

SELECT SUBSTRING("Sachin Tendulkar" , 8);

-- Function 7 : LTRIM  
-- The 'LTRIM' function removes all the spaces to the LEFT of the string . 

SELECT LTRIM("   Kapil");

-- Function 8 : RTRIM  
-- The 'RTRIM' function removes all the spaces to the RIGHT of the string .

SELECT RTRIM("Abhilash   ");

-- Function 9 : TRIM  
-- The 'TRIM' function removes all spaces to the left and right of the string .

SELECT TRIM("   Kapil   ");

-- Function 10 : LOCATE  
-- The 'LOCATE' function returns the position of the first occurrence of a substring in a string
-- 2 args , 
--     1 . SubString 
--     2 . Original string 

SELECT LENGTH("Sachin Tendulkar") - LOCATE("r" , REVERSE("Sachin Tendulkar")) + 1;

SELECT LOCATE(REVERSE("manoja"), 'a');

-- Function 11 : REPLACE
-- "REPLACE" function replaces all the occurrences of a substring within a string
-- 3 args , 
--     1 . Original string
--     2 . Substring which we want to replace
--     3 . Substring to be replaced with 

SELECT REPLACE("I am Sql programmer" , "I am" , "you are");
--  The result is "you are Sql programmer"
