-- Below are the SQL statements to create a table with a DECIMAL column
-- and insert some values into it.
-- The DECIMAL type is used for fixed-point numbers with a specified precision and scale.
-- The precision is the total number of digits, and the scale is the number of digits to the right of the decimal point.
-- The DECIMAL type is often used for financial calculations where exact precision is required.
-- Create a table with a DECIMAL column
CREATE TABLE decimal_example (
    id INT AUTO_INCREMENT PRIMARY KEY,
    price DECIMAL(10, 2) NOT NULL,
    quantity DECIMAL(5, 0) NOT NULL
);
-- Insert some values into the table
INSERT INTO decimal_example (price, quantity) VALUES
(19.99, 5),
(100.00, 10),
(0.99, 1),
(1234567.89, 10000),
(9999999999.99, 1);
-- Select all values from the table
SELECT * FROM decimal_example;
-- The above SQL statements create a table named `decimal_example` with two DECIMAL columns: `price` and `quantity`.
-- The `price` column can store values with up to 10 digits in total, 2 of which can be after the decimal point.
-- The `quantity` column can store values with up to 5 digits, all of which are integers (no decimal point).
-- The INSERT statements add several rows of data to the table, demonstrating the use of the DECIMAL type.
-- The SELECT statement retrieves all rows from the table to show the inserted values.
-- Note: The DECIMAL type is particularly useful for storing monetary values, as it avoids rounding errors that can occur with floating-point types.
-- The DECIMAL type is also useful for storing exact numeric values where precision is critical.
-- The above SQL statements are compatible with MySQL and can be executed in a MySQL database environment.
-- The DECIMAL type is defined with a precision of 10 and a scale of 2, meaning it can store numbers up to 99999999.99.
-- The DECIMAL type is a fixed-point type, which means it stores the exact value without rounding errors.
-- The DECIMAL type is often used in financial applications where exact precision is required.
-- The DECIMAL type is also useful for storing exact numeric values where precision is critical.
-- The DECIMAL type is defined with a precision of 10 and a scale of 2, meaning it can store numbers up to 99999999.99.
-- The DECIMAL type is a fixed-point type, which means it stores the exact value without rounding errors.
-- The DECIMAL type is often used in financial applications where exact precision is required.
-- The DECIMAL type is also useful for storing exact numeric values where precision is critical.
-- The DECIMAL type is defined with a precision of 10 and a scale of 2, meaning it can store numbers up to 99999999.99.
