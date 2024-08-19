-- The CHECK constrait allows us to create more customized constraints that adhere to a certain condition.
-- Such as making sure all inserted integer values fall below a certain threshold.

-- General Syntax
-- CREATE TABLE example(
--    ex_id SERIAL PRIMARY KEY,
--    age SMALLINT CHECK (age > 21),
--    parent_age SMALLINT CHECK (parent_age > age)
-- );

CREATE TABLE employees(
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthdate DATE CHECK (birthday > '1900-01-01'),
    hire_date DATE CHECK (hire_date > birthdate),
    salary INTEGER CHECK (salary > 0)
)


INSERT INTO employees(
    first_name,
    last_name,
    birthdate,
    hire_date,
    salary
) VALUES (
    'John',
    'Doe',
    '1990-01-01',
    '2020-01-01',
    50000
)

INSERT INTO employees(
    first_name,
    last_name,
    birthdate,
    hire_date,
    salary
) VALUES (
    'Jane',
    'Doe',
    '1990-01-01',
    '2020-01-01',
    -50000
)