--RIGHT JOIN: A right join is essentially the same as a
--LEFT JOIN, except the tables are switched.
--This would be the same as switching the table order
--in a LEFT OUTER JOIN.

select * from film;

select * from inventory;

select film.film_id,title,inventory_id, store_id
from film
right join inventory on
inventory.film_id = film.film_id;

select film.film_id,title,inventory_id, store_id
from film
right join inventory on
inventory.film_id = film.film_id
where film.film_id is null;