select * from payment;

select * from payment
order by payment_date desc;

select * from payment
order by payment_date desc
limit 5;

select * from payment
where amount != 0.00
order by payment_date desc
limit 5;