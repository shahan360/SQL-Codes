-- DROP allows for the complete removal of a column in a table.
-- In PostgreSQL this will also automatically remove all of its indexes and constraints involving the column.
-- However, it will not remove columns used in views, triggers, or stored procedures without the additional CASCADE clause.

-- General Syntax:
-- ALTER TABLE table_name DROP COLUMN column_name;
-- Remove all dependencies:
-- ALTER TABLE table_name DROP COLUMN column_name CASCADE;

-- Check for existence to avoid error:
-- ALTER TABLE table_name DROP COLUMN IF EXISTS col_name;

-- Drop multiple columns:
-- ALTER TABLE table_name
-- DROP COLUMN column_name1,
-- DROP COLUMN column_name2;

ALTER TABLE new_info
DROP COLUMN people;

SELECT * FROM new_info;

ALTER TABLE new_info 
DROP COLUMN IF EXISTS people;


