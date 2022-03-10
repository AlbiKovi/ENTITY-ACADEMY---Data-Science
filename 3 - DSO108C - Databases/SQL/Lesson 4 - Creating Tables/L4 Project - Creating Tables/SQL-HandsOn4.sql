/* SQL-HandsOn4 */


/* 1. Create a view named "initialCustomers" that shows the 
first name, last name, and email address of customers that 
have an id of less than 100. Once that is complete, 
select and view your newly created view.
*/

SELECT * FROM customer LIMIT 5;

CREATE VIEW initialCustomers AS
SELECT first_name, last_name, email
FROM customer
WHERE customer_id < 100;

SELECT * FROM initialCustomers;


/* 2. Create a table named "ProductList". Include the following columns:
ProductId, ProductName, Price, DateAdded, EmployeeSupportId
* Every product should have an automatically generated id number that should be unique for each product.
* Give each column a data type that would apply
* Give the DateAdded column a default value for the current local time.
* All columns CANNOT be null. */

DROP TABLE ProductList;

CREATE TABLE ProductList (
ProductId INTEGER PRIMARY KEY AUTO_INCREMENT, 
ProductName VARCHAR(50) NOT NULL, 
Price DECIMAL(13,2) NOT NULL, 
DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP, 
EmployeeSupportId TINYINT UNSIGNED NOT NULL);


/* 3. Next, insert one product into the table following the given guidelines 
when the table was created. When inserting the data, don't include the ProductId 
or the DateAdded. Finally, run a query to see the single product in your table.
*/
SELECT * FROM staff LIMIT 5;

INSERT INTO ProductList (ProductName, Price, EmployeeSupportId)
VALUES("Jewelry", 111.11, 1);

SELECT * FROM ProductList;


/* 4. EXPERIMENT: */
CREATE TABLE ProductList1 (
ProductId INTEGER PRIMARY KEY AUTO_INCREMENT, 
ProductName VARCHAR(50) NOT NULL, 
Price DECIMAL(13,2) NOT NULL, 
DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP, 
EmployeeSupportId TINYINT UNSIGNED NOT NULL,
FOREIGN KEY(EmployeeSupportId) REFERENCES staff(staff_id));
/* Both the EmployeeSupportId and staff_id need to have the same variable type
in order for this to work.
*/
DESCRIBE staff;
/* How do I find the variable type of staff_id? */

INSERT INTO ProductList1 (ProductName, Price, EmployeeSupportId)
VALUES("Jewelry", 111.11, 1);

SELECT * FROM ProductList1;

DROP TABLE ProductList1;