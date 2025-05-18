-- link for date and time functions: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, 'BORN ON: %r') FROM people;