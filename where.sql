select * from customer;

select * from customer
where first_name='Jared';

select * from film 
where rental_rate > 4 
AND replacement_cost>=19.99
AND rating='R';

select count(*) from film 
where rating = 'R' or rating = 'PG-13';

select * from film
where rating !='R';