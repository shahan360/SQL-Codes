CREATE TABLE people (
	name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10');
 
INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');

-- Above is the code to create a table named "people" with columns for name, birthdate, birthtime, and birthdt.
-- The table is populated with three records, each containing a name and corresponding date and time values.
-- The date format is 'YYYY-MM-DD', the time format is 'HH:MM:SS', and the datetime format is 'YYYY-MM-DD HH:MM:SS'.
-- The table is designed to store information about individuals and their birth dates and times.
-- The table can be used to query and analyze the birth dates and times of the individuals listed.
-- The data types used are DATE, TIME, and DATETIME, which are standard SQL data types for handling date and time values.
-- The DATE type stores only the date, the TIME type stores only the time, and the DATETIME type stores both date and time.
-- The table can be extended with additional columns or records as needed for further analysis or data storage.
-- The table can be queried to retrieve specific information about individuals, such as their names and birth dates or times.
-- The table can also be used to perform calculations or comparisons based on the date and time values stored in the columns.
-- The table can be indexed for faster retrieval of data based on specific criteria, such as birth dates or names.
-- The table can be joined with other tables to create more complex queries and analyses involving multiple data sources.
-- The table can be exported or imported to and from other databases or data formats for further processing or analysis.
-- The table can be backed up or restored to ensure data integrity and availability in case of system failures or data loss.
-- The table can be used in conjunction with other SQL features, such as triggers, stored procedures, and views, to enhance its functionality and usability.