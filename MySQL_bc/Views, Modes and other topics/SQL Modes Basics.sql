-- To View Modes:
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

-- The above commands will show the current SQL modes set for the global and session levels.
-- To Change Modes:
-- The SQL modes can be set at the global or session level.
-- Global mode affects all sessions, while session mode only affects the current session.
-- To Reset Modes:
SET GLOBAL sql_mode = '';
SET SESSION sql_mode = '';
-- To View Current Modes:
SELECT @@GLOBAL.sql_mode AS global_sql_mode, @@SESSION.sql_mode AS session_sql_mode;
-- To Set Modes:
-- You can set the SQL modes by specifying a comma-separated list of modes.
-- Example of setting SQL modes:
SET GLOBAL sql_mode =           'mode1,modes2,...';
SET SESSION sql_mode =          'mode1,modes2,...';


-- In the below example, we will set the SQL modes to include strict mode and no zero date.
 
-- To Set Them:
SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';