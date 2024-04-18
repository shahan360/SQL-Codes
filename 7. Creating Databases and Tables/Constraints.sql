--Constraints
--These are the rules enforced on data columns on table.
--These are used to prevent invalid data from being entered into the database.
--This ensures the accuracy and reliability of the data in the database.
--Constraints can be divided into two main categories:
--Column Constraints: Constrains the data in a column to adhere to certain conditions.
--Table Constraints: applied to the entire table rather than to an individual column.

--The most common constraints used:
--NOT NULL Constraint: Ensures that a column cannot have NULL value.
--UNIQUE Constraint: Ensures that all values in a column are different.
--PRIMARY Key: Uniquely identifies each row/record in a database table.
--FOREIGN Key: Constrains data based on columns in other tables.
--CHECK Constraint: Ensures that all values in a column satisfy certain conditions.
--EXCLUSION Constraint: Ensures that if any two rows are compared on the specified column or expression using the sepcified operator, not all of these comparisons will return TRUE.

--Table Constraints:
--CHECK (Condition): to check a condition when inserting or updating data.
--REFERENCES: to constrain the value stored in the column that must exist in a column in another table.
--UNIQUE(column_list): forces the values stored in the columns listed inside the paranthese to be unique.
--PRIMARY KEY(column_list): Allows you to define the primary key that consists of multiple columns.





