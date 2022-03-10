/* SQL-HandsOn2 */

/* 1. Write a query to find the first and last name, customer ID and rental ID for customers who have rented a film. */
SELECT * FROM sakila.customer LIMIT 5;
SELECT * FROM sakila.rental LIMIT 5;
SELECT first_name, last_name, customer_id FROM sakila.customer LIMIT 5;
SELECT * from sakila.actor LIMIT 5;

SELECT first_name, last_name, customer_id, rental_id
FROM sakila.customer
INNER JOIN sakila.rental
USING (customer_id);


/* 2. Write a query that finds all films with actors that have an actor_id 5. */
SELECT * FROM sakila.actor LIMIT 5;
SELECT * FROM sakila.film_actor LIMIT 5;
SELECT * FROM sakila.film LIMIT 5;

SELECT actor_id, first_name, last_name, film_id, title
FROM sakila.actor
INNER JOIN sakila.film_actor
USING(actor_id)
INNER JOIN sakila.film
USING(film_id)
WHERE actor_id = 5;


/* 3. Write a query that lists out all information of every film along with 
the name of the language for each film, even if a language doesn't exist for that film.
*/
SELECT * FROM sakila.film;
SELECT * FROM sakila.language;

SELECT * FROM sakila.film
LEFT OUTER JOIN sakila.language
USING (language_id);


/* 4. Write a query that lists out the title of films and the name of the actors 
who starred in those films. Additionally, only list films that starred 
artists whose first names start with a vowel.
*/
SELECT * FROM sakila.film LIMIT 5;
SELECT * FROM sakila.film_actor LIMIT 5;
SELECT * FROM sakila.actor LIMIT 5;

SELECT title, first_name, last_name FROM sakila.film
JOIN sakila.film_actor
USING (film_id)
JOIN sakila.actor
USING (actor_id)
WHERE first_name LIKE "a%"
OR first_name LIKE "e%"
OR first_name LIKE "i%"
OR first_name LIKE "o"
OR first_name LIKE "u";

/* SELECT title, first_name, last_name FROM sakila.film
JOIN sakila.film_actor
USING (film_id)
JOIN sakila.actor
USING (actor_id)
WHERE first_name IN (LIKE "a%", LIKE "e%", LIKE "i%", LIKE "o", LIKE "u"); */


/* 5. Make an inventory list of films that were rented for more than $4.99. */
SELECT film_id, title, rental_rate
FROM sakila.film
JOIN sakila.inventory
USING(film_id)
WHERE rental_rate > 4.99;