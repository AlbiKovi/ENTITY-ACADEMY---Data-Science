/* OUTER JOIN */

SELECT * FROM sakila.film
INNER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id;

SELECT * FROM sakila.film
LEFT OUTER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id;

SELECT * FROM sakila.film
RIGHT OUTER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id;