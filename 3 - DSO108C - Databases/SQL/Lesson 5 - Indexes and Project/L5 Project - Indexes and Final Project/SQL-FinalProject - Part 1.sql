/* SQL-FinalProject - Part 1*/


/* 1. Run a query that creates a table named viewer that has the following columns: 
viewer_id, first_name, last_name, email. 
Make sure the viewer_id is the primary key and auto increments.
*/
CREATE TABLE viewer (
viewer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL,
email VARCHAR(50) NOT NULL
);


/* 2. Add the following customers:
Name			Email
Kenneth Davis	kenneth.davis@gmail.com
David Shirley	david.shirley@gmail.com
Gaby Garcia		gaby.garcia@gmail.com
Donna Bumbleton	donna.bumbleton@gmail.com
*/
INSERT INTO viewer (first_name, last_name, email)
VALUES 
("Kenneth", "Davis", "kenneth.davis@gmail.com"),
("David", "Shirley", "david.shirley@gmail.com"),
("Gaby", "Garcia", "gaby.garcia@gmail.com"),
("Donna", "Bumbleton", "donna.bumbleton@gmail.com");


/* 3. Run a query to see all of the new customers within the database. */
SELECT * FROM viewer;
