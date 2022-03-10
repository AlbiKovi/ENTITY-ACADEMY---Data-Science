/* SQL-HandsOn1 */ 


/* Part 1 */
SELECT * FROM sakila.actor WHERE first_name = "Cuba";

SELECT title, film_id FROM sakila.film WHERE film_id > 5 AND film_id < 20;

SELECT first_name, last_name, email FROM sakila.customer WHERE last_name = "Rodriguez" OR last_name LIKE "Mc%";

SELECT * FROM sakila.film WHERE title LIKE 'a%';

SELECT title from sakila.film WHERE language_id NOT IN(SELECT language_id from sakila.language WHERE name = "English" OR name = "Japanese");



/* Part 2 */
/*
They would like to see all payments that had a rental amount is over .99 cents. 
However, they only want to see the rental id and payment date that is attached to that payment. 
Once you have finished that, they would like to see the staff id and customer id 
from the payments that have an amount over .99 cents.
*/

SELECT rental_id, payment_date FROM sakila.payment WHERE amount > 0.99;

SELECT staff_id, customer_id FROM sakila.payment WHERE amount > 0.99;