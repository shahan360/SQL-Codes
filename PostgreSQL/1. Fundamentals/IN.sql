select * from payment
limit 2;

select distinct(amount) from payment
order by amount;

select * from payment
where amount in (0.99,1.98,1.99);

select count(*) from payment
where amount in (0.99,1.98,1.99);

select count(*) from payment
where amount not in (0.99,1.98,1.99);

select * from customer
where first_name not in ('John','Jake','Julie');

select * from customer
where first_name in ('John','Jake','Julie');