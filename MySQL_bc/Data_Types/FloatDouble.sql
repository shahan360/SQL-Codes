-- This will show how to use Float and Double data types in MySQL and how they different from each other as well as from decimal data type.
-- The Float and Double data types are used to store floating-point numbers in MySQL.
-- The Float data type is a single-precision floating-point number, while the Double data type is a double-precision floating-point number.
-- The Float data type can store numbers with a precision of up to 7 decimal digits, while the Double data type can store numbers with a precision of up to 15 decimal digits.
-- The Float data type is used for numbers that require less precision, while the Double data type is used for numbers that require more precision.
-- The Decimal data type is used for fixed-point numbers and can store numbers with a precision of up to 65 decimal digits.
-- The Decimal data type is often used for financial calculations where precision is important.
-- The Float and Double data types are used for floating-point numbers, while the Decimal data type is used for fixed-point numbers.
-- Below are the SQL statements to create a table with Float, Double, and Decimal columns
-- and insert some values into it.
CREATE TABLE float_double_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    float_value FLOAT NOT NULL,
    double_value DOUBLE NOT NULL,
    decimal_value DECIMAL(10, 2) NOT NULL
);
-- -- Insert some values into the table
INSERT INTO float_double_example (float_value, double_value, decimal_value)
VALUES (1.2345, 1.2345, 1.23);
INSERT INTO float_double_example (float_value, double_value, decimal_value)
VALUES (123456789.123456789, 123456789.123456789, 123456789.12);
INSERT INTO float_double_example (float_value, double_value, decimal_value)
VALUES (0.000123456789, 0.000123456789, 0.00);
INSERT INTO float_double_example (float_value, double_value, decimal_value)
VALUES (12345678901234567890.123456789, 12345678901234567890.123456789, 12345678901234567890.12);
-- -- Select all values from the table
SELECT * FROM float_double_example;
-- -- -- The above SQL statements create a table named `float_double_example` with three columns: `float_value`, `double_value`, and `decimal_value`.
-- -- -- The `float_value` column is defined as FLOAT, meaning it can store single-precision floating-point numbers.
-- -- -- The `double_value` column is defined as DOUBLE, meaning it can store double-precision floating-point numbers.
-- -- -- The `decimal_value` column is defined as DECIMAL(10, 2), meaning it can store fixed-point numbers with a precision of 10 digits and 2 decimal places.
-- -- -- The INSERT statements insert some sample values into the table, and the SELECT statement retrieves all the values from the table.
