--AS clause
select count(amount) as num_transactions
from payment;

--incorrect alias use in having clause
select customer_id, sum(amount) as total_spent
from payment
group by customer_id
having total_spent > 100;

----correct use in having clause
select customer_id, sum(amount) as total_spent
from payment
group by customer_id
having sum(amount) > 100;
--NOTE: we can't use alias clause in having statemet as 
--the alias gets assigned at the end of the query.

