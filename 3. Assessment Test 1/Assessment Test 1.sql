--Assessment Test 1
--1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
--The answer should be customers 187 and 148.
select * from payment;

select customer_id,staff_id, sum(amount) from payment
where staff_id=2
group by customer_id,staff_id
having sum(amount)>=110;

--2. How many films begin with the letter J?
--The answer should be 20.

select count(*) from film
where title like 'J%';

--3. What customer has the highest customer ID number whose name starts with an 'E' and has an address ID lower than 500?
--The answer is Eddie Tomlin

select * from customer;

select customer_id,first_name,last_name, address_id
from customer;

select first_name,last_name
from customer
where first_name like 'E%' and address_id<500
order by customer_id desc
limit 1;