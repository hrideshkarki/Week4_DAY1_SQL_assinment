Week 5 - Monday Questions

1. How many actors are there with the last name ‘Wahlberg’?
-- 2
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';


2. How many payments were made between $3.99 and $5.99?
-- 0
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;


3. What film does the store have the most of? (search in inventory)
-- a lot of them
SELECT film_id, COUNT(*) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC;

SELECT *
FROM inventory

4. How many customers have the last name ‘William’?
-- 0
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';


5. What store employee (get the id) sold the most rentals?
-- 1
SELECT staff_id, COUNT(*) AS rental_count
FROM rental
GROUP BY staff_id;

6. How many different district names are there?
-- 603
SELECT count(district)
FROM address;


7. What film has the most actors in it? (use film_actor table and get film_id)
-- 508 - Lambs Cincinatti

SELECT film_id, COUNT(*) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC;

SELECT film_id, title
FROM film
WHERE film_id = 508;

8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 21
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';


9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)
--
SELECT amount, customer_id, COUNT(rental_id)
FROM payment
WHERE customer_id BETWEEN 380 AND 430 AND amount in (4.99, 5.99)
GROUP BY amount, customer_id
HAVING COUNT(rental_id) > 250;

SELECT *
FROM payment;

10. Within the film table, how many rating categories are there? And what rating has the most
movies total?
-- 5, PG-13
SELECT rating, COUNT(*) AS rating_count
FROM film
GROUP BY rating
ORDER BY rating_count DESC;
