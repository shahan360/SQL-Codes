--LEFT OUTER JOIN: It results in the set of records
--that are in the left table, if there is no match
--with the right table, the results are null.

--LEFT OUTER JOIN or LEFT JOIN both are same

--LEFT OUTER JOIN with WHERE Clause will return all the rows in left table that are unique to the left table.
--Ex:
--Select * From Registrations
--Left Outer Join Logins
--On Registrations.name = Logins.name
--Where Logins.log_id is null.

select * from film;

select * from inventory;

select film.film_id,title,inventory_id, store_id
from film
left join inventory on
inventory.film_id = film.film_id;

select film.film_id,title,inventory_id, store_id
from film
left join inventory on
inventory.film_id = film.film_id
where inventory.film_id is null;

