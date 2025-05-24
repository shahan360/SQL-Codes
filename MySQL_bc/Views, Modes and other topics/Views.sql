-- Views are virtual tables that are based on the result set of a SQL statement.
-- They can be used to simplify complex queries, encapsulate logic, and provide a layer of security.
-- A view is created using the CREATE VIEW statement, followed by the view name and the SELECT statement that defines the view.
-- The view can then be queried like a regular table.
-- The syntax for creating a view is as follows:
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
-- The view can be queried like a regular table:
SELECT * FROM view_name;
-- To update a view, you can use the CREATE OR REPLACE VIEW statement:
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
-- To drop a view, you can use the DROP VIEW statement:
DROP VIEW view_name;
-- To list all views in a database, you can query the information_schema.views table:
SELECT table_name
FROM information_schema.views
WHERE table_schema = 'database_name';
-- To check if a view exists, you can use the following query:
SELECT COUNT(*)
FROM information_schema.views
WHERE table_name = 'view_name'
AND table_schema = 'database_name';
-- To check the definition of a view, you can use the SHOW CREATE VIEW statement:
SHOW CREATE VIEW view_name;
-- To check the columns of a view, you can use the DESCRIBE statement:
DESCRIBE view_name;
-- To check the indexes of a view, you can use the SHOW INDEX statement:
SHOW INDEX FROM view_name;
-- To check the privileges on a view, you can use the SHOW GRANTS statement:
SHOW GRANTS FOR user_name;
-- To check the dependencies of a view, you can use the SHOW TABLE STATUS statement:
SHOW TABLE STATUS LIKE 'view_name';
-- To check the data types of the columns in a view, you can use the INFORMATION_SCHEMA.COLUMNS table:
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'view_name'
AND table_schema = 'database_name';
-- To check the row count of a view, you can use the COUNT function:
SELECT COUNT(*)
FROM view_name;
-- To check the size of a view, you can use the SHOW TABLE STATUS statement:
SHOW TABLE STATUS LIKE 'view_name';
-- To check the last update time of a view, you can use the SHOW TABLE STATUS statement:
SHOW TABLE STATUS LIKE 'view_name';
-- To check the creation time of a view, you can use the SHOW TABLE STATUS statement:
SHOW TABLE STATUS LIKE 'view_name';

-----------------------------------------


-- Views are stored queries that when invoked, return a result set. A view acts as a virtual table.
-- Views can be used to simplify complex queries, encapsulate logic, and provide a layer of security.

-- INSTEAD OF TYPING THIS QUERY ALL THE TIME...
SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;
 
-- WE CAN CREATE A VIEW:
CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;
 
-- NOW WE CAN TREAT THAT VIEW AS A VIRTUAL TABLE 
-- (AT LEAST WHEN IT COMES TO SELECTING)
SELECT * FROM full_reviews;