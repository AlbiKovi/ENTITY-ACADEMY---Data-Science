/*  AND, OR, NOT */


/* The AND, OR, and NOT operators can be combined with the WHERE clause. 
The AND and OR operators are used to filter the data based on more than one condition. 
The NOT operator checks to see if something is not true. 
*/

/* The AND operator is checking to see if each condition separated by the keyword AND are all true. */
/* SELECT [column-names] FROM [table-name] WHERE condition1 AND condition2 AND condition3 ...; */
/* SELECT [column-names] FROM [table-name]
WHERE condition1
AND condition2
AND condition3 ...;
*/
SELECT title, rating, length, release_year FROM sakila.film
WHERE rating = "PG" AND length < 100 AND replacement_cost < 19.99;

/* The OR operator is very similar to the AND but its checking to see if a condition is true or another condition is true. */
SELECT title, rating, length, release_year FROM sakila.film
WHERE rating = "PG" OR length < 100 OR replacement_cost < 19.99;

/* The != operator is a way to check if a condition is not true. */
SELECT title, rating FROM sakila.film
WHERE rating != "PG";
/* It is also important to point out that in some cases I will use the word NOT for the NOT operator. 
An example of this case will be discussed with the LIKE operator. */