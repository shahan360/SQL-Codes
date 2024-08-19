--JOIN Challenge Tasks

--Task 1
Select * from customer;

Select * from address;

Select district,email from customer
inner join address
on customer.address_id = address.address_id
where district='California';

--Task 2
Select * from film;

Select * from film_actor;

Select * from actor;


--Multi Join Query
Select title, first_name, last_name from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
where first_name = 'Nick' and last_name = 'Wahlberg';





