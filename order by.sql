select * from customer;

select * from customer
order by first_name;

select first_name,last_name from customer
order by store_id, first_name;

select first_name, last_name from customer
order by store_id DESC, first_name ASC;