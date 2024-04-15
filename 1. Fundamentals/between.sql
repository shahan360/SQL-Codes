select * from payment
limit 2;

select * from payment 
where amount not between 8 and 9;

select count(*) from payment 
where amount not between 8 and 9;

select * from payment
where payment_date between '2007-02-01' and '2007-02-15';

