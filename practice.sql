-- Table - Person 
DROP TABLE IF EXISTS person;

CREATE TABLE IF NOT EXISTS person (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
age INTEGER NOT NULL,
height INTEGER NOT NULL,
city TEXT NOT NULL, 
favoriteColor TEXT NOT NULL
);

INSERT INTO person
(name, age, height, city, favoriteColor)
VALUES
('Summer',17,175,'Phoenix','blue'),
('Rick',62,200,'The Citadel','green'),
('Morty',14,120,'Home','yellow'),
('Jerry',42,169,'Home','red'),
('Beth',39,150,'Home','pink');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;
    
SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favoriteColor != 'red';

SELECT * FROM person
WHERE favoriteColor != 'red' AND favoriteColor != 'blue';

SELECT * FROM person
WHERE favoriteColor = 'orange' OR favoriteColor = 'green';

SELECT * FROM person
WHERE favoriteColor IN ('orange','green','blue');

SELECT * FROM person
WHERE favoriteColor IN ('yellow','purple');


--Table - Orders
DROP TABLE IF EXISTS orders;

CREATE TABLE IF NOT EXISTS orders (
id INTEGER PRIMARY KEY AUTOINCREMENT,
personID INTEGER NOT NULL,
productName TEXT NOT NULL,
productPrice INTEGER NOT NULL, 
qty INTEGER NOT NULL
);

INSERT INTO orders
(personID, productName, productPrice, qty)
VALUES
(1,'poduct',15,1),
(1,'product',10,2),
(3,'portal gun',400,1),
(2,'yellow shirt',12,3),
(4,'ham',4,1);

SELECT * FROM orders;

SELECT SUM(qty) FROM orders; 

SELECT SUM(productPrice * qty) FROM orders;

SELECT SUM(productPrice * qty) FROM orders
WHERE personID = 1;

--Table - Artists
INSERT INTO Artist
(Name)
VALUES 
('Hello there'),
('Pickle Rick'),
('Uhhh');

SELECT * FROM Artist
ORDER BY Name
LIMIT 5;

SELECT * FROM Artist
WHERE Name LIKE 'Black %';

SELECT * FROM Artist
WHERE Name LIKE '% Black %';

--Table - Employee
SELECT FirstName, LastName FROM Employee
WHERE City = 'Calgary';

SELECT FirstName, LastName, MAX(BirthDate) FROM Employee;

SELECT FirstName, LastName, MIN(BirthDate) FROM Employee;

SELECT * FROM Employee
where ReportsTo = 2;

SELECT COUNT(*) FROM Employee
WHERE City = 'Lethbridge';

-- Table - Invoice
SELECT COUNT(*) FROM Invoice
WHERE billingCountry = 'USA';

SELECT Max(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT * FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billingState IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
