select * from payment;

select customer_id from payment
order by payment_date asc
limit 10;

select * from film;

select title,length from film
order by length asc
limit 5;


select count(title) from film
where length<=50;