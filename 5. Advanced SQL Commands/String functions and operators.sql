select * from customer;

select length(first_name) from customer;

select first_name || ' ' || last_name as full_name
from customer;

select upper(first_name) || ' ' || upper(last_name) as full_name
from customer;

select lower(first_name) || '.' || lower(last_name) || '@gmail.com' as gmail_id
from customer;

--for more details on string functions use below reference
--https://www.postgresql.org/docs/9.1/functions-string.html
