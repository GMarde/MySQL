USE sakila;

SELECT * 
FROM payment
WHERE amount > (
	SELECT AVG(amount)
    FROM payment);
    
SELECT *
FROM payment
WHERE amount = (
	SELECT MAX(amount)
    FROM payment
    WHERE customer_id = 1
);


SELECT * 
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id
	HAVING COUNT(*) > 40
);