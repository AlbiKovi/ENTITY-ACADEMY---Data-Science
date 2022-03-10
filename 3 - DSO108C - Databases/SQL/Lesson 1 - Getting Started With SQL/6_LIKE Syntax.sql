/*  The LIKE operator is a type of restriction, similar to Direct equality or numeric comparisons.
It is used in a WHERE clause to search for a particular pattern or character. 
When using LIKE, you need to use one of two wildcards:
% (percent sign) represents zero, one or multiple characters
_ (underscore) represents a single character
SELECT [column-names] FROM [table-name] WHERE [column-name] LIKE pattern;
*/

/* Find all tracks that start with the word 'the' */
SELECT title FROM sakila.film WHERE title LIKE 'the%';
/* LIKE */


/* Find any data that ends with 'teen'. */
SELECT title FROM sakila.film WHERE title LIKE '%en';

/* Find any data that has "or" anywhere within the value. */
SELECT title FROM sakila.film WHERE title LIKE '%or%';

/* Find a value with a specific character in a particular position. */
SELECT title FROM sakila.film WHERE title LIKE '_r%';

/* The above query will find an "r" that lives in the second position of the value. 
If I wanted to find an "r" in the third position, I just add another underscore before the "r". */
SELECT title FROM sakila.film WHERE title LIKE '__r%';

/* Find any values that start with "h" and are at least three characters in length. */
SELECT title FROM sakila.film WHERE title LIKE 'h_%_%';

/* Find any values that begin with "b" and end with "y". */
SELECT title FROM sakila.film WHERE title LIKE 'b%y';

/* Find any values that begin with "b" and end with "y". */
SELECT title FROM sakila.film WHERE title NOT LIKE 'e%';
