--Inner Join: results with the set of records 
--that match in both tables.

--If joining tables are having a column name in common
--then we must specify the column name as 
--table_name.column_name in the query.

--Table order won't matter in INNER JOIN
--If there is JOIN without the use of INNER keyword
--PostgreSQL will treat it as an INNER JOIN.

select * from payment
inner join customer
on payment.customer_id = customer.customer_id;

select payment_id,payment.customer_id,first_name
from payment
inner join customer
on payment.customer_id = customer.customer_id;