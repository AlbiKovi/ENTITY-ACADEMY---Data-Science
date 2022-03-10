/* INSERT INTO */


SELECT * from sakila.actor;


INSERT INTO sakila.actor
VALUES (202, "Kermit", "DaFrog", "2019-01-19 08:56:12"); 

INSERT INTO sakila.actor (first_name, last_name)
VALUES ("Miss", "Pigee");

INSERT INTO sakila.actor (first_name, last_name, last_update)
VALUES ("Johnny", "Smith", "2019-01-17 08:43:11");

SELECT * FROM sakila.actor
WHERE first_name = "Johnny" AND last_name = "Smith";