--select everything from film
SELECT * FROM film;

SELECT MIN(replacement_cost) FROM film;

SELECT MAX(replacement_cost),MIN(replacement_cost) 
FROM film;

select count(*) from film;

select round(avg(replacement_cost),2) from film;

select sum(replacement_cost) from film;

