/* LIMIT */


/* LIMIT is a keyword that will limit the data to a certain number of rows. */
SELECT title
FROM `sakila`.`film`;

SELECT title, description, release_year FROM sakila.film LIMIT 10;
