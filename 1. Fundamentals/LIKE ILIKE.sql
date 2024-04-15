--regex capabilites also supported by SQL

--Note: ILIKE is case insensitive and LIKE is case sensitive

select count(*) from customer
where first_name like 'J%';

select * from customer
where first_name like 'J%';

select count(*) from customer
where first_name like 'J%' AND last_name like 'S%';

select * from customer
where first_name like 'J%' AND last_name like 'S%';

select * from customer
where first_name ilike 'J%' AND last_name ilike 'S%';


--Inline selectors 
-- "_" for single character, "%" for continuing characters
select * from customer
where first_name like '%her%';

select * from customer
where first_name like '_her%';

select * from customer
where first_name not like '_her%';

select * from customer
where first_name like 'A%';

select * from customer
where first_name like 'A%'
order by last_name;

select * from customer
where first_name like 'A%' and last_name not like 'B%'
order by last_name;