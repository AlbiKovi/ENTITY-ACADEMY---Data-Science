/* SQL-FinalProject - Part 3 */


/* 1. Run the following SQL query to add a new table into the database: */
CREATE TABLE sakila.WatchedList(
    watch_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    queue_id INTEGER NOT NULL,
    viewer_id INTEGER NOT NULL,
    FOREIGN KEY(viewer_id) REFERENCES sakila.viewer(viewer_id),
    FOREIGN KEY(queue_id) REFERENCES sakila.StreamingServiceQueue(queue_id)
);


/* 2. Next, run the following insert statements to add some data to the WatchedList table: */
-- query 1
INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (1, 2);

-- query 2
INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (2, 1);

-- query 3
INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (3, 2);

-- query 4
INSERT INTO sakila.WatchedList (viewer_id, queue_id)
VALUES (4, 1);


/* 3. Lastly, run a query to see the customer's full name, 
their email address, 
and their watch_id as well 
as the genre and title of the film they watched. 
The list of customers should be ordered in alphabetical order by their last name.
*/

/* first_name, last_name, email, watch_id, genre, filmTitle */
SELECT first_name, last_name, email, watch_id, genre, filmTitle
FROM sakila.viewer
JOIN sakila.WatchedList
USING(viewer_id)
JOIN sakila.StreamingServiceQueue
USING(queue_id)
ORDER BY last_name;

/* Example: 
SELECT actor_id, first_name, last_name, film_id, title
FROM sakila.actor
INNER JOIN sakila.film_actor
USING(actor_id)
INNER JOIN sakila.film
USING(film_id)
WHERE actor_id = 5;
*/

