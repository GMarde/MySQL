USE sakila;

CREATE VIEW sales_by_client AS
SELECT 
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id;

SELECT *
FROM sales_by_client;

SELECT *
FROM sales_by_client
WHERE amount > 5;

CREATE OR REPLACE VIEW sales_by_client AS
SELECT 
	cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.amount
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id
	ORDER BY pay.amount DESC;
    
