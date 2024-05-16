-- Often there are specific combinations of tables and conditions that you
-- find yourself using quite often for a project.

-- Instead of having to perform the same query over and over again as a starting point,
-- you can create a VIEW to quickly see this query with a simple call.


-- A VIEW is a virtual table that is the result of a SELECT query.

-- A VIEW is a database object that is of a stored query.
-- A VIEW can be accessed as a virtual table in PostgreSQL.
-- Notice that a view does not store data physically, it simply stores the query.
-- You can also update and alter existing views.

SELECT * FROM customer
SELECT * FROM address

-- Creating view
CREATE VIEW customer_info AS 
SELECT first_name, last_name, address FROM customer
INNER JOIN address 
ON customer.address_id  = address.address_id

-- getting information using customer_info view
SELECT * FROM customer_info

-- to change or alter the underlying information in a VIEW
CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name, last_name, address, district FROM customer 
INNER JOIN address
ON customer.address_id = address.address_id;

SELECT * FROM customer_info; -- district column is also included

ALTER VIEW customer_info RENAME TO c_info 

SELECT * FROM customer_info -- will now throw an error.

SELECT * FROM c_info -- will work correctly.

DROP VIEW c_info -- to drop the view