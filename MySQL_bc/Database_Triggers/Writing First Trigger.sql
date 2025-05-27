CREATE DATABASE trigger_demo;
USE trigger_demo;

CREATE TABLE users (
    username VARCHAR(100),
    age INT
);

INSERT INTO users (username, age) VALUES ('Alice', 30);


-- Writing a simple trigger to track when a user is inserted into the users table

DELIMITER $$

CREATE TRIGGER must_be_adult
       BEFORE INSERT ON users FOR EACH ROW
       BEGIN
           IF NEW.age < 18 THEN
               SIGNAL SQLSTATE '45000'
               SET MESSAGE_TEXT = 'User must be at least 18 years old';
           END IF;
       END$$
DELIMITER ;
-- This trigger checks if the age of a new user is less than 18 before allowing the insert operation.
-- If the age is less than 18, it raises an error and prevents the insert.
-- Testing the trigger by trying to insert a user under 18
INSERT INTO users (username, age) VALUES ('Bob', 16);
-- This will raise an error due to the trigger preventing the insert.
-- Now, let's insert a valid user to see the trigger in action
INSERT INTO users (username, age) VALUES ('Charlie', 20);
-- This will succeed since Charlie is over 18.
-- To view the contents of the users table after the operations
SELECT * FROM users;
-- The users table should now contain Alice and Charlie, but not Bob due to the trigger preventing the insert.
-- This example demonstrates how to create a trigger that enforces a business rule (minimum age requirement) on the users table.
-- The trigger is set to fire before an insert operation, ensuring that any new user must meet the age requirement.

