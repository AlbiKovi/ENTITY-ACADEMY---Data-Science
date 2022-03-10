/* IN */


/* The IN operator allows you to specify multiple values when using WHERE. 
It is shorthand for having multiple OR conditions.
*/

/*  There are two ways to use IN. The first is below: 
SELECT [column_names] FROM [table_name]
WHERE [column_name] IN (value1, value2, value3...);
*/

/* And the second:  
SELECT [column_names] FROM [table_name]
WHERE [column_name] IN (SELECT statement)'
*/

SELECT title, rating FROM sakila.film WHERE rating IN ("G", "PG", "PG-13");

SELECT title FROM sakila.film
WHERE language_id
IN (SELECT language_id FROM sakila.language WHERE name = "english");