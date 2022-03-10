/* SELECT */


/* The most basic form of a select: */
/* SELECT [column_names] FROM [table_name]; */

/* Select specific columns from 'film' table in Sakila database */
SELECT film_id, title, description, release_year, language_id FROM sakila.film;

/* Select all columns from 'film' table in Sakila database */
SELECT * FROM sakila.film;

/* Select one specific from 'film' table in Sakila database */
SELECT title FROM sakila.film;

/* Select specific columns from 'film' table in Sakila database */
SELECT title, description, release_year FROM sakila.film;

/* Capitalization does NOT matter when running queries and using SQL keywords. 
I could run "select", "SELECT", "Select" and even "SeLECt" and the query will still work. 
That being said, it is common practice to use all uppercase to distinguish 
what SQL keywords I am using easily. It does, however, matter when writing out 
the column or table names. */