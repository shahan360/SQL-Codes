-- Below are the SQL statements to show the difference between CHAR and VARCHAR data types in MySQL.
-- -- The CHAR type is a fixed-length string data type, while the VARCHAR type is a variable-length string data type.
-- -- The CHAR type is used for strings of a fixed length, while the VARCHAR type is used for strings of variable length.
-- -- The CHAR type is often used for strings that are always the same length, such as postal codes or fixed-length identifiers.
-- -- The VARCHAR type is often used for strings that can vary in length, such as names or descriptions.
-- -- The CHAR type is defined with a length of 10, meaning it can store strings up to 10 characters long.
-- -- The VARCHAR type is defined with a length of 50, meaning it can store strings up to 50 characters long.
-- Below are the SQL statements to create a table with CHAR and VARCHAR columns
-- and insert some values into it.
CREATE TABLE char_varchar_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fixed_length CHAR(10) NOT NULL,
    variable_length VARCHAR(50) NOT NULL
);
-- Insert some values into the table
INSERT INTO char_varchar_example (fixed_length, variable_length) VALUES
('1234567890', 'Hello, World!'),
('ABCDEFGHIJ', 'MySQL is great!'),
('1234', 'This is a test.'),
('A', 'Short string.'),
('12345678901234567890', 'This string is longer than the fixed length.');
-- -- Select all values from the table
SELECT * FROM char_varchar_example;
-- -- The above SQL statements create a table named `char_varchar_example` with two string columns: `fixed_length` and `variable_length`.
-- -- The `fixed_length` column is defined as CHAR(10), meaning it can store strings of exactly 10 characters.
-- -- The `variable_length` column is defined as VARCHAR(50), meaning it can store strings of up to 50 characters.
-- -- The INSERT statements add several rows of data to the table, demonstrating the use of the CHAR and VARCHAR types.
-- -- The SELECT statement retrieves all rows from the table to show the inserted values.
-- -- Note: The CHAR type is padded with spaces to the defined length if the inserted string is shorter than the defined length.
-- -- The VARCHAR type does not pad with spaces and can store strings of varying lengths.
-- -- The CHAR type is often used for strings that are always the same length, such as postal codes or fixed-length identifiers.
-- -- The VARCHAR type is often used for strings that can vary in length, such as names or descriptions.
-- -- The CHAR type is defined with a length of 10, meaning it can store strings up to 10 characters long.
-- -- The VARCHAR type is defined with a length of 50, meaning it can store strings up to 50 characters long.
-- -- The CHAR type is a fixed-length string data type, while the VARCHAR type is a variable-length string data type.
-- -- The CHAR type is used for strings of a fixed length, while the VARCHAR type is used for strings of variable length.