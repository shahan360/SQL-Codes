-- Example to create a Database
-- CREATE DATABASE database_name;

CREATE DATABASE Customers;

-- We use 'USE' statement to Select the Database
-- Example 
-- USE database_name;

USE Customers;

DROP TABLE CustomerDetails;

CREATE TABLE CustomerDetails 
(
    ID SMALLINT UNSIGNED  NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    Age TINYINT UNSIGNED  NOT NULL,
    Gender CHAR(6) NOT NULL,
    ProductsBought TINYINT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY (ID),
    CHECK (Age > 12)
);