--1.
select count(*) from payment
where amount>5.00;

--2.
select * from actor;

select count(*) from actor 
where first_name like 'P%';

--3.
select * from address;

select count(distinct(district))
from address;

select distinct(district)
from address;

--4.
select * from film;

select count(*) from film
where rating='R' and 
replacement_cost between 5 and 15;

--5.
select * from film;

select count(*) from film
where title like '%Truman%';


