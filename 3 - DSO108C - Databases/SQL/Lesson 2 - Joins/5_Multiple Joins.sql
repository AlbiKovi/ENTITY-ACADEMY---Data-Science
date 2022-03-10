/* Multiple Joins */

SELECT * from sakila.actor
JOIN sakila.film_actor USING (actor_id)
JOIN sakila.film_category USING (film_id);