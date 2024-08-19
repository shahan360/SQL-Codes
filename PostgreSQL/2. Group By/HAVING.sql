select * from payment;

select customer_id,sum(amount) from payment 
where customer_id not in (184,87,477)
group by customer_id;

select customer_id, sum(amount) from payment
group by customer_id 
having sum(amount) > 100;

select * from customer;

select store_id,count(customer_id) from customer
group by store_id
having count(customer_id) > 300;