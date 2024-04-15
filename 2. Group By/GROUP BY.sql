--Group By
select * from payment;

select customer_id from payment
group by customer_id
order by customer_id;

select customer_id,sum(amount) from payment
group by customer_id
order by sum(amount);

select customer_id,count(amount) from payment
group by customer_id
order by count(amount) desc;

--this query
select customer_id,staff_id, SUM(amount) from payment
group by staff_id,customer_id
order by customer_id;
--and this query will produce the same results
select staff_id,customer_id,SUM(amount) from payment
group by staff_id,customer_id
order by customer_id;

select staff_id,customer_id,SUM(amount) from payment
group by staff_id,customer_id
order by SUM(amount);

--timestamps
select date(payment_date),sum(amount) from payment
group by date(payment_date)
order by sum(amount) desc