/* Join */
/* A JOIN is an operand that allows you to select a row that contains columns from multiple tables. */


/* INNER JOIN */
/* Select data that have matching values within two different tables. */

SELECT title, release_year, category_id
FROM sakila.film
INNER JOIN sakila.film_category
ON sakila.film.film_id = sakila.film_category.film_id;

SELECT title, release_year, category_id
FROM sakila.film
INNER JOIN sakila.film_category
ON sakila.film.film_id = sakila.film_category.film_id
WHERE film.film_id = 1;

SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
ON sakila.actor.actor_id = sakila.film_actor.actor_id;