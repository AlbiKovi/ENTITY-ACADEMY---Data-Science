/* USING */

SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
ON sakila.actor.actor_id = sakila.film_actor.actor_id;

SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
USING(actor_id);