--challenge 1
select * from payment;

select Distinct(TO_CHAR(payment_date,'MONTH')) as payment_month
from payment;

--challenge 2
select * from payment;

select count(*) from payment
where extract(dow from payment_date)=1; --dow for day of week