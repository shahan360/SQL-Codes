--TIME - contains only time
--DATE - contains only date
--TIMESTAMP - contains date and time
--TIMESTAMPTZ - Contains date,time, and timezone
--Careful considerations should be made
--when designing a table and database and
--choosing a time data type.

--Depending on the situation you may or may not
--need the full level of TIMESTAMPTZ
--Remember, you can always remove historical information,
--but you can't add it!

--Command to show parameters
SHOW ALL; --300 different parameters in PostgreSQL

--show timezone
SHOW TIMEZONE;

--get current time stamp
SELECT NOW();

--get time as well as day
SELECT TIMEOFDAY();

--Current time and date
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

--We can extract information from a time based 
--data type using:
--EXTRACT()
--AGE()
--TO_CHAR()

--EXTRACT() allows you to "extract" or obtain a
--sub-component of a date value
--YEAR
--MONTH
--DAY
--WEEK
--QUARTER
--Example: EXTRACT(YEAR FROM date_col)

--AGE() calculates and returns the current age
--given a timestamp
--Example: AGE(date_col) returns the calculated
--age of the date from the initial timestamp of the creation of database.

--TO_CHAR() is the general function to convert data types to text
--It is useful for timestamp formatting
--Example: TO_CHAR(date_col,'mm-dd-yyyy')

select * from payment;

select EXTRACT(year from payment_date) as payment_year
from payment;

select EXTRACT(month from payment_date) as payment_month
from payment;

select EXTRACT(quarter from payment_date) as payment_quarter
from payment;

select AGE(payment_date) as record_date
from payment;

select TO_CHAR(payment_date,'MONTH-YYYY')
from payment;

select TO_CHAR(payment_date,'DD/MM/YYYY')
from payment;

--Function							Return Type					Description								Example
-- to_char(timestamp, text)			text						convert time stamp to string			to_char(current_timestamp, 'HH12:MI:SS')
-- to_char(interval, text)			text						convert interval to string				to_char(interval '15h 2m 12s', 'HH24:MI:SS')
-- to_char(int, text)				text						convert integer to string				to_char(125, '999')
-- to_char(double precision, text)	text						convert real/double precision to string	to_char(125.8::real, '999D9')
-- to_char(numeric, text)			text						convert numeric to string				to_char(-125.8, '999D99S')
-- to_date(text, text)				date						convert string to date					to_date('05 Dec 2000', 'DD Mon YYYY')
-- to_number(text, text)			numeric						convert string to numeric				to_number('12,454.8-', '99G999D9S')
-- to_timestamp(text, text)			timestamp with time zone	convert string to time stamp			to_timestamp('05 Dec 2000', 'DD Mon YYYY')

-- Pattern					Description
-- HH						hour of day (01-12)
-- HH12						hour of day (01-12)
-- HH24						hour of day (00-23)
-- MI						minute (00-59)
-- SS						second (00-59)
-- MS						millisecond (000-999)
-- US						microsecond (000000-999999)
-- SSSS						seconds past midnight (0-86399)
-- AM, am, PM or pm			meridiem indicator (without periods)
-- A.M., a.m., P.M. or p.m.	meridiem indicator (with periods)
-- Y,YYY					year (4 or more digits) with comma
-- YYYY						year (4 or more digits)
-- YYY						last 3 digits of year
-- YY						last 2 digits of year
-- Y						last digit of year
-- IYYY	ISO 8601 			week-numbering year (4 or more digits)
-- IYY						last 3 digits of ISO 8601 week-numbering year
-- IY						last 2 digits of ISO 8601 week-numbering year
-- I						last digit of ISO 8601 week-numbering year
-- BC, bc, AD or ad			era indicator (without periods)
-- B.C., b.c., A.D. or a.d.	era indicator (with periods)
-- MONTH					full upper case month name (blank-padded to 9 chars)
-- Month					full capitalized month name (blank-padded to 9 chars)
-- month					full lower case month name (blank-padded to 9 chars)
-- MON						abbreviated upper case month name (3 chars in English, localized lengths vary)
-- Mon						abbreviated capitalized month name (3 chars in English, localized lengths vary)
-- mon						abbreviated lower case month name (3 chars in English, localized lengths vary)
-- MM						month number (01-12)
-- DAY						full upper case day name (blank-padded to 9 chars)
-- Day						full capitalized day name (blank-padded to 9 chars)
-- day						full lower case day name (blank-padded to 9 chars)
-- DY						abbreviated upper case day name (3 chars in English, localized lengths vary)
-- Dy						abbreviated capitalized day name (3 chars in English, localized lengths vary)
-- dy						abbreviated lower case day name (3 chars in English, localized lengths vary)
-- DDD						day of year (001-366)
-- IDDD						day of ISO 8601 week-numbering year (001-371; day 1 of the year is Monday of the first ISO week)
-- DD						day of month (01-31)
-- D						day of the week, Sunday (1) to Saturday (7)
-- ID						ISO 8601 day of the week, Monday (1) to Sunday (7)
-- W						week of month (1-5) (the first week starts on the first day of the month)
-- WW						week number of year (1-53) (the first week starts on the first day of the year)
-- IW						week number of ISO 8601 week-numbering year (01-53; the first Thursday of the year is in week 1)
-- CC						century (2 digits) (the twenty-first century starts on 2001-01-01)
-- J						Julian Date (integer days since November 24, 4714 BC at local midnight; see Section B.7)
-- Q						quarter
-- RM						month in upper case Roman numerals (I-XII; I=January)
-- rm						month in lower case Roman numerals (i-xii; i=January)
-- TZ						upper case time-zone abbreviation (only supported in to_char)
-- tz						lower case time-zone abbreviation (only supported in to_char)
-- TZH						time-zone hours
-- TZM						time-zone minutes
-- OF						time-zone offset from UTC (only supported in to_char)

-- Modifier		Description																Example
-- FM prefix	fill mode (suppress leading zeroes and padding blanks)					FMMonth
-- TH suffix	upper case ordinal number suffix										DDTH, e.g., 12TH
-- th suffix	lower case ordinal number suffix										DDth, e.g., 12th
-- FX prefix	fixed format global option (see usage notes)							FX Month DD Day
-- TM prefix	translation mode (print localized day and month names based on lc_time)	TMMonth
-- SP suffix	spell mode (not implemented)											DDSP

--for more formatting use below link:
--https://www.postgresql.org/docs/12/functions-formatting.html
