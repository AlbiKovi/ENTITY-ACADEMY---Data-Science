/* NULL */


SELECT * FROM sakila.address;

SELECT * FROM sakila.address
WHERE address2 IS NULL;

SELECT * FROM sakila.address
WHERE address2 IS NOT NULL;

/* Incorrect: */
SELECT * FROM staff
WHERE picture and password IS NULL;

/* Correct: */
SELECT * FROM staff
WHERE picture IS NULL and password IS NULL;

SELECT * FROM staff
WHERE picture IS NULL AND store_id = 2;