USE sakila;

-- Aggregation Functions --

SELECT 
	MAX(amount),
    MIN(amount),
    AVG(amount),
    SUM(amount),
    COUNT(amount)
FROM payment
WHERE staff_id = 2;

SELECT 
	customer_id,
    SUM(amount) AS TotalSpent
FROM payment
GROUP BY customer_id; # Amount spend by customer

SELECT 
	customer_id,
    SUM(amount) AS TotalSpent
FROM payment
GROUP BY customer_id
ORDER BY TotalSpent DESC; 

SELECT 
	customer_id,
    SUM(amount) AS TotalSpent
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
ORDER BY TotalSpent DESC;

-- Built-in Functions --

SELECT TRIM("Cars");

SELECT TRIM("  Cars   1 ");
SELECT LTRIM("  Cars   1 ");
SELECT RTRIM("  Cars   1 ");

SELECT TRIM(BOTH "a" FROM "aaa  Cars   1 ");
SELECT TRIM(LEADING "a" FROM "aaa  Cars   1 ");
SELECT TRIM(TRAILING "a" FROM "aaa  Cars   1 ");

SELECT LOCATE("s", "Cars");
SELECT LOCATE("r", "Cars");

SELECT LCASE("Cars");
SELECT UCASE("Cars");

SELECT LENGTH("Cars");

SELECT REPEAT("Cars", 4);

SELECT RIGHT("Cars", 2);
SELECT LEFT("Cars", 2);
