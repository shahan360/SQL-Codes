-- What are Database Triggers?
-- Database triggers are special types of stored procedures that automatically execute in response to certain events on a particular table or view.
-- They can be used to enforce business rules, validate data, or maintain audit trails.
-- Triggers can be set to fire before or after an INSERT, UPDATE, or DELETE operation.
-- Example of a simple trigger that logs changes to a table:
CREATE TRIGGER log_changes
AFTER UPDATE ON my_table
FOR EACH ROW
BEGIN
    INSERT INTO change_log (table_name, changed_at, old_value, new_value)
    VALUES ('my_table', NOW(), OLD.column_name, NEW.column_name);
END;
-- This trigger will log the changes made to 'my_table' into a 'change_log' table whenever an update occurs.
-- Triggers can also be used to enforce referential integrity or to prevent invalid data from being inserted into the database.
-- Example of a trigger that prevents deletion of a record if it has related records in another table:
CREATE TRIGGER prevent_deletion
BEFORE DELETE ON parent_table
FOR EACH ROW
BEGIN
    DECLARE related_count INT;
    SELECT COUNT(*) INTO related_count FROM child_table WHERE parent_id = OLD.id;
    IF related_count > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete record with related records in child_table';
    END IF;
END;
-- This trigger checks if there are any related records in 'child_table' before allowing a deletion from 'parent_table'.
-- Triggers can be powerful tools for maintaining data integrity and automating tasks, but they should be used judiciously to avoid performance issues and complexity in debugging.
-- It's important to note that triggers can lead to cascading effects if not managed properly, especially if multiple triggers are set on the same table.
-- Always test triggers thoroughly in a development environment before deploying them to production.
-- Additionally, consider the implications of using triggers on database performance and maintainability.
-- Triggers can also be used to implement complex business logic that cannot be easily handled by application code.

