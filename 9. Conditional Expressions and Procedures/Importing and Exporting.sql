-- Import/Export functionality of PgAdmin, which allows us to import data from a .csv file to an already existing table.
-- There are some important notes to keep in mind when using Import/Export.
-- Important Note!
-- Not every outside data file will work, variations in formatting, macros, data types, etc. may prevent the Import cammand from reading the file, at which point, you must edit your file to be compatible with SQL.
-- Details of compatible file types and examples are available in the online documentation:
-- postgresql.org/docs/12/sql-copy.html
-- You must provide the 100% correct file path to your outside file, otherwise the Import command will fail to find the file.
-- The most common mistake if failing to provide the correct file path, confirm the file's location under its properties.
-- Very Important Note!
-- The import command DOES NOT create a table for you.
-- It assumes a table is already created.
-- Currently there is no automated way within pgAdmin to create a table directly from a .csv file.


-- Use commands in testme database

CREATE TABLE simple(
    a INTEGER,
    b INTEGER,
    c INTEGER
);

SELECT * FROM simple;

--https://www.enterprisedb.com/postgres-tutorials/how-import-and-export-data-using-csv-files-postgresql
--https://stackoverflow.com/questions/21018256/can-i-automatically-create-a-table-in-postgresql-from-a-csv-file-with-headers
--https://stackoverflow.com/questions/2987433/how-to-import-csv-file-data-into-a-postgresql-table
