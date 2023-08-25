USE sakila;

-- SELECT --

SELECT * 
FROM actor;

SELECT actor_id, first_name 
FROM actor;

-- ORDER BY --

SELECT actor_id, first_name 
FROM actor 
ORDER BY first_name;

SELECT actor_id, first_name, last_name
FROM actor 
ORDER BY last_name;

-- WHERE --

SELECT actor_id, first_name 
FROM actor 
WHERE actor_id = 1;

SELECT actor_id, first_name 
FROM actor 
WHERE actor_id < 10
ORDER BY actor_id;

SELECT actor_id, first_name, last_name
FROM actor 
WHERE first_name = "CUBA"
ORDER BY first_name;

SELECT *
FROM payment
WHERE amount > 0.99;

SELECT *
FROM payment
WHERE amount >= 0.99;

SELECT *
FROM payment
WHERE amount != 0.99;

SELECT *
FROM payment
ORDER BY amount desc;

-- AND, OR and NOT operators

SELECT *
FROM address;

SELECT *
FROM address
WHERE district = "Alberta";

SELECT *
FROM address
WHERE district = "Alberta" OR district = "QLD";

SELECT *
FROM address
WHERE district = "Alberta" AND city_id = "300";

SELECT *
FROM address
WHERE NOT district = "Alberta";

-- IN --

SELECT *
FROM address
WHERE district IN ("Alberta", "Texas");

SELECT *
FROM address
WHERE district IN ("Alberta", "Texas", "California");

-- BETWEEN --

SELECT *
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99;

SELECT *
FROM payment
WHERE amount BETWEEN 3 AND 7;

-- LIKE --

-- Starts with
SELECT *
FROM actor
WHERE first_name LIKE "D%";


-- Ends with
SELECT *
FROM actor
WHERE first_name LIKE "%D";

-- Single character
SELECT *
FROM actor
WHERE first_name LIKE "_D";

-- IS NULL --

SELECT *
FROM address
WHERE address2 IS NULL;

-- LIMIT --

-- First 10 rows
SELECT *
FROM actor
LIMIT 10;

-- First 10 rows after the 5th row
SELECT *
FROM actor
LIMIT 5, 10;

-- REGEXP --

SELECT *
FROM actor
WHERE first_name REGEXP "A";

-- Starts with
SELECT *
FROM actor
WHERE first_name REGEXP "^A";


-- Starts with one or the other
SELECT *
FROM actor
WHERE first_name REGEXP "^A|^B";


-- Follows the logic "ga", "ca" and "ra"
SELECT *
FROM actor
WHERE first_name REGEXP "[gcr]a";


-- Starts with "ga", "ca" or "ra"
SELECT *
FROM actor
WHERE first_name REGEXP "^[gcr]a";

-- Math Operators --

SELECT actor_id, actor_id*10 AS actor_times_10
FROM actor
ORDER BY actor_id;
