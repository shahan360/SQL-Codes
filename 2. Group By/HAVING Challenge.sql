--customers having count of payment greater then or equal to 40
select customer_id,count(payment_id) from payment
group by customer_id
having count(payment_id)>=40;

select customer_id,sum(amount) from payment
where staff_id = '2'
group by customer_id,staff_id
having sum(amount)>100;