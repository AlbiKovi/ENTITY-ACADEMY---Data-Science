/* SQL-HandsOn3 */

/* 1. Write a query that Inserts a new actor into the database. 
Once you have completed the insert, write a query to view all information for that specific actor.
*/

SELECT * FROM sakila.actor;

INSERT INTO sakila.actor
VALUES (201, "Keanu", "Reeves", "2021-07-03 07:57:00");

SELECT * FROM sakila.actor
WHERE actor_id = 201;

/* 2. Write a query to Update the actor that you just inserted. Give your new actor 
a first_name of Emmy and a last_name of Rock. When you have completed that 
update, run another query to see your updated employee.
*/

UPDATE sakila.actor
SET first_name = "Emmy", last_name = "Rock"
WHERE actor_id = 201;

SELECT * FROM sakila.actor
WHERE actor_id = 201;

/* 3. Write a query that finds all staff that do not have a value specified for password. */
SELECT * FROM sakila.staff
WHERE password IS NULL;

/* 4. Write a query that finds all staff's information that has a value for first_name and store_id. */
SELECT * FROM sakila.staff
WHERE first_name IS NOT NULL and store_id IS NOT NULL;

/* 5. Write a query that updates all people with a Null value in the address2 column. 
If the district is Alberta, put address2 as Canada, and if the district is QLD, put Australia.
*/
SELECT * FROM sakila.address;

UPDATE sakila.address
SET address2 = "Canada"
WHERE district = "Alberta";

UPDATE sakila.address
SET address2 = "Australia"
WHERE district = "QLD";

SELECT * FROM sakila.address;