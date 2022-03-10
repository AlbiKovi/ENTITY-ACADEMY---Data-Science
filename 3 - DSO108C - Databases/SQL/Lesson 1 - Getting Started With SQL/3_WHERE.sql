/*  WHERE */


/* 'Where' is a way to choose which rows to retrieve based on their contents. */
/*  SELECT [column names] FROM table_name WHERE [row restrictions] */
/* We can use symbols to check the equality and relative size. Below is a list of the common ones used:
Equality: =
Inequality: !=
Greater than: >
Greater than or equal to: >=
Less than: <
Less than or equal to: <= 
*/

/* Find all films less than 90 minutes. */
SELECT * FROM sakila.film WHERE length < 100;

/* How many films there are with the name of "Alone Trip"? */
SELECT * FROM sakila.film WHERE title = "ALONE TRIP";

/* How many films have a replacement cost of over $28.99? */
SELECT * FROM sakila.film WHERE replacement_cost > 28.99;