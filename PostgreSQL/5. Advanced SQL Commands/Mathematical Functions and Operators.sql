select * from film;

select ROUND(rental_rate/replacement_cost,4)*100 AS percent_cost 
from film;

select 0.1*replacement_cost as percent_replacement_cost
from film;

--for more details on PostgreSQL mathematical functions follow below link:
--https://www.postgresql.org/docs/9.5/functions.html
