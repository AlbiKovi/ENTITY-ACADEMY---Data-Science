/* Walkthrough */

/*
Now that you have learned a lot about Selecting in SQL, let's look at an example and break 
it down so we can figure out what queries to run.

Consider the following question:

Query all columns for actor from sakila.actor with an ID less than 20.

Let's break it down in steps:

First, we know that we will need a SELECT statement to query the needed columns.
Next, it is asking for all columns; so we can use the * wildcard.
Next, we know we are pulling this in from the customers table so we will use FROM sakila.actors.
Finally, we need a WHERE statement that says actor_id < 20 (actor_id is less than 20).
*/

SELECT * FROM sakila.actor
WHERE actor_id < 20;