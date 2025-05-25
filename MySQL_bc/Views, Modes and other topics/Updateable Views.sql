-- The portion of the views that is not updateable is the part that contains the aggregate functions, such as SUM, COUNT, AVG, etc.
-- -- YOU CAN CREATE A VIEW LIKE THIS:
CREATE OR REPLACE VIEW series_reviews AS
SELECT 
    title, 
    released_year, 
    genre, 
    rating, 
    first_name, 
    last_name
FROM    
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id;
-- -- The view can be queried like a regular table:
SELECT * FROM series_reviews;
-- -- To update a view, you can use the CREATE OR REPLACE VIEW statement:
CREATE OR REPLACE VIEW series_reviews AS
SELECT 
    title, 
    released_year, 
    genre, 
    rating, 
    first_name, 
    last_name
FROM
    reviews
        JOIN
    series ON series.id = reviews.series_id
        JOIN
    reviewers ON reviewers.id = reviews.reviewer_id
WHERE 
    rating > 4;  -- Example condition to filter the view
-- -- To drop a view, you can use the DROP VIEW statement:
DROP VIEW series_reviews;

---------------------------------

-- Creating a temporary view for demonstration
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

-- Querying the temporary view
SELECT * FROM ordered_series;

-- Inserting into the temporary view
-- Note: In MySQL, you can insert into a view only if it is updatable.
-- In this case, the view is updatable because it is based on a single table (series).
-- Inserting a new record into the ordered_series view
INSERT INTO ordered_series (title, released_year, genre)
VALUES ('The Great', 2020, 'Comdey');


-- Querying the view after insertion
SELECT * FROM ordered_series;

-- Deleting from the temporary view
DELETE FROM ordered_series
WHERE title = 'The Great';

-- CREATE OR REPLACE VIEW command is used to update the definition of an existing view or create a new one if it does not exist.
CREATE OR REPLACE VIEW ordered_series AS SELECT * FROM series ORDER BY released_year DESC;

SELECT * FROM ordered_series;

ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year ASC;
-- The ALTER VIEW command is used to modify the definition of an existing view.

DROP VIEW ordered_series;
-- The DROP VIEW command is used to remove a view from the database.