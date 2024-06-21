Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&) character as your separator (instead of a space).

For example, the output for all prime numbers <=10 would be:

2&3&5&7



-- Solution
/*
Enter your query here.
*/
WITH RECURSIVE Numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM Numbers WHERE n < 1000
),
Primes AS (
    SELECT n
    FROM Numbers
    WHERE NOT EXISTS (
        SELECT 1
        FROM Numbers AS Divisors
        WHERE Divisors.n < Numbers.n AND Numbers.n % Divisors.n = 0
    )
)
SELECT GROUP_CONCAT(n SEPARATOR '&') AS prime_numbers
FROM Primes;
