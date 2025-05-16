SELECT * FROM books
ORDER BY author_lname;
 
SELECT * FROM books
ORDER BY author_lname DESC;
 
SELECT * FROM books
ORDER BY released_year;


--- More complex examples of order by

-- Order by the place of columns in the table
SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY 2 desc;

-- Order by multiple columns
SELECT book_id, author_fname, author_lname, pages
FROM books ORDER BY author_lname, author_fname;