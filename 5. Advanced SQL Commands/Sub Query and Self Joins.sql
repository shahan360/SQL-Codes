--Sub Query 
--Example
--SELECT student,grade
--FROM test_scores
--WHERE grade>(SELECT AVG(grade) FROM test_scores);

--SELECT student,grade
--FROM test_scores
--WHERE student IN
--(SELECT student 
--FROM honor_roll_table);

--The EXISTS operator is used to test for 
--existance of rows in a subquery.
--Typically a subquery is passed in the 
--EXISTS() function to check if any rows are
--returned with the subquery.
--SELECT column_name
--FROM table_name
--WHERE EXISTS
--(SELECT column_name FROM
--table_name WHERE condition);

select * from film;

select avg(rental_rate) from film;

select title,rental_rate
from film
where rental_rate > 
(select avg(rental_rate) from film);

--NOTE: if a sub-query returns single value then we can use comparison operators(>,<,>=,<=)
--But if a sub-query returns multiple values then we use IN operator.

select * from rental;

select * from inventory;

select * from rental 
where return_date between '2005-05-29' and '2005-05-30';

select film_id, title 
from film
where film_id in
	(select inventory.film_id
	from rental
	inner join inventory 
	on inventory.inventory_id = rental.inventory_id
	where return_date between '2005-05-29' and '2005-05-30')
order by film_id;


select first_name,last_name
from customer as c 
where exists
	(select * from payment as p
	where p.customer_id = c.customer_id
	and amount>11);

--*************************************

--self join
--A self join is a query in which a table is joined to itself.
--Self-joins are useful for comparing values 
--in a column of rows within the same table.
--The self join can be viewed as a join of two copies of the same table.
--The table is not actually copied, but SQL performs the command as though it were,
--There is no special keyword for a self join,
--its simply standard JOIN syntax with the same table in both parts.
--However, when using a self join it is necessary to use an alias for the table,
--otherwise the table names would be ambiguous.
--Syntax Example:
--SELECT tableA.col, tableB.col
--FROM table AS tableA
--JOIN table AS tableB ON
--tableA.some_col = tableB.other_col;

--SELECT emp.name, report.name AS rep
--FROM employees AS emp
--JOIN employees AS report ON
--emp.emp_id  = report.report_id;

select * from film;

select title,length from film
where length = 117;

select title,length from film;

select f1.title, f2.title, f1.length
from film as f1
inner join film as f2 on 
f1.film_id != f2.film_id
and f1.length = f2.length;



	