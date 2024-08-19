--The ALTER clause allows for changes to an existing table structure, such as:
--Adding, dropping, or renaming columns
--Changing column data types
--Set DEFAULT values for a column
--Add CHECK constraints
--Rename table

--General Syntax:
--ALTER TABLE table_name action

--Adding Columns 
--ALTER TABLE table_name
--ADD COLUMN column_name TYPE;

--Removing Columns
--ALTER TABLE table_name
--DROP COLUMN column_name;

--Alter constraints
--ALTER TABLE table_name
--ALTER COLUMN column_name
--SET/DROP DEFAULT value;
--SET NOT NULL;
--DROP NOT NULL;
--ADD CONSTRAINT constraint_name CHECK (condition);

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

SELECT * FROM information;

ALTER TABLE information
RENAME TO new_info;

SELECT * FROM information; --will give the error that the table does not exist.
SELECT * FROM new_info; --will show the table

ALTER TABLE new_info
RENAME COLUMN person TO people;

SELECT * FROM new_info;

INSERT INTO new_info(title)
VALUES
('some new title');

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL; --To drop the constraint.

ALTER TABLE new_info
ALTER COLUMN people SET NOT NULL; --To set the constraint.

--Now as we dropped constraint so the below command should work
INSERT INTO new_info(title)
VALUES
('some new title');

SELECT * FROM new_info;






