/* Walkthrough */

SELECT * FROM sakila.rental LIMIT 5;

SELECT * FROM sakila.payment LIMIT 5; 

SELECT * FROM sakila.inventory LIMIT 5; 

SELECT * FROM sakila.film LIMIT 5;

SELECT rental_date, return_date, amount
FROM sakila.rental
JOIN sakila.payment USING(rental_id);

SELECT rental_date, return_date, amount
FROM sakila.rental
JOIN sakila.payment USING(rental_id)
JOIN sakila.inventory USING(inventory_id);

SELECT rental_date, return_date, amount
FROM sakila.rental
JOIN sakila.payment USING(rental_id)
JOIN sakila.inventory USING(inventory_id)
JOIN sakila.film USING (film_id);

SELECT rental_date, return_date, amount, title
FROM sakila.rental
JOIN sakila.payment USING(rental_id)
JOIN sakila.inventory USING(inventory_id)
JOIN sakila.film USING (film_id);