select staff_id,count(payment_id) from payment
group by staff_id;
--staff_id 2 should get the bonus as it 
--processed most of the payments with count as 7304

--ratings with average replacement cost
select rating, round(avg(replacement_cost),2) as avg_replacement_cost from film
group by rating
order by avg_replacement_cost desc;

--top 5 customers by spending
select * from payment;

select customer_id, sum(amount) as Amount 
from payment group by customer_id
order by Amount desc
limit 5;