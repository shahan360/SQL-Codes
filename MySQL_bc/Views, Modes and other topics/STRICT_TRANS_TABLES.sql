-- STRICT_TRANS_TABLES mode
-- This mode is used to enforce strict SQL mode for transactional storage engines.
-- It ensures that invalid or missing values in a transaction will cause an error, rather than inserting a default value.
SET GLOBAL sql_mode =      
'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET SESSION sql_mode =      
'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION
_BY_ZERO,NO_ENGINE_SUBSTITUTION';

