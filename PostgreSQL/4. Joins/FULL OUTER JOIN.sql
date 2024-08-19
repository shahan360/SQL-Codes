--full outer joins
--grabs all the data from both the tables that are joined

--full outer join with WHERE
--gets rows unique to either table(rows not found in both tables)
--Ex:
--Select * from registrations full outer join logins
--on registrations.name = logins.name
--where registrations.reg_id is null or 
--logins.log_id is null

select * from customer;
select * from payment;

select * from customer
full outer join payment
on customer.customer_id = payment.customer_id;

select * from customer
full outer join payment
on customer.customer_id = payment.customer_id
where customer.customer_id is null
or payment.payment_id is null;

select count(distinct customer_id) from payment;

select count(distinct customer_id) from customer;