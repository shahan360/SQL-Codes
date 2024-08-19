--Data Types in PostgreSQL
--Refer below link for data types available in PostgreSQL
--https://www.postgresql.org/docs/current/datatype.html

--Primary Keys and Foreign Keys
--Primary Key:
--A primary key is a column or a group of columns used to 
--identify a row uniquely in a table.
--Example: in dvdrental database in customers table
--customer_id column is having non-null,unique values as primary key.
--Primary keys are also important since they allow us
--to easily discern what columns should be used for
--joining tables together.

--Foreign Key:
--A foreign key is a field or group of fields in a table
--that uniquely identifies a row in another table.
--A foreign key is defined in a table that references to the primary key
--of the other table.
--The table that contains the foreign key is called referencing table or child table.
--The table to which the foreign key references is called referenced table or parent table.
--A table can have multiple foreign keys depending on its relationships
--with other tables.
--Recall in the dvdrental database payment table, each 
--payment row had its unique payment_id (a primary key) and identified the customer
--that made the payment through the customer_id(a foreign key
--since it references the customer table's primary key)

--NOTE: Primary Key and Foreign Key typically make good column choices for joining together two or more tables.
--When creating tables and defining columns, we can use constraints to define columns as being a primary key, or attaching a foreign key relationship to another table.




