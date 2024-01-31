-- CREATE DATABASE FruitMarketDBsql;
USE FruitMarketDBsql;

-- CREATE TABLE Suppliers (
-- 	SupplierID VARCHAR(10) PRIMARY KEY NOT NULL,
--     Companyname VARCHAR(30) NOT NULL,
--     ContactPerson VARCHAR(30) NOT NULL,
--     ContactNo VARCHAR(13) NOT NULL,
--     ProductCategory VARCHAR(55)
-- );
--     
-- CREATE TABLE Products (
-- 	ProductID INT NOT NULL,
--     ProductName VARCHAR(30),
--     Price DECIMAL(10, 2),
--     Weight VARCHAR(10),
--     Stock INT,
--     SupplierID VARCHAR(10),
--     FOREIGN KEY(SupplierID) REFERENCES Suppliers(SupplierID)
-- );

-- 1.4 Is One-to-many relationship

-- 1.5 Is SupplierID

-- INSERT INTO  Suppliers
-- 	VALUES('SUPP0001', 'Fruit City', 'Themba', '0115062089', 'Fruit'),
-- 		('SUPP0002', 'Vegan Veggie Xpress', 'Chinyere', '0137228936', 'Vegetables'),
--         ('SUPP0003', 'The Nut House', 'Sam', '0216965133', 'Nuts'),
--         ('SUPP0004', 'The Lazy Cow', 'Angelo', '0216964157', 'Dairy');

-- COMMIT;

-- SAVEPOINT ModifyDMRecords;

-- INSERT INTO Products
-- 	VALUES('1001', 'Lady Finger Bananas', '17.95', '750 g', '45', 'SUPP0001'),
-- 		('1002', 'Pink Lady Apples', '18.95', '1,5 kg', '15', 'SUPP0001'),
-- 		('1003', 'Red Anjou Pears', '22.99', '1 kg', '24', 'SUPP0001'),
-- 		('1004', 'Cavendish Bananas', '12.65', '900 g', '18', 'SUPP0001'),
-- 		('2001', 'Tenderstem Broccoli', '35.90', '400 g', '8', 'SUPP0002'),
-- 		('2002', 'Portabellini Mushrooms', '18.99', '250 g', '16', 'SUPP0002'),
-- 		('3001', 'Raw Almonds', '99.00', '1 kg', '6', 'SUPP0003'),
-- 		('3002', 'Macaroon Butter', '32.95', '410 g', '9', 'SUPP0003'),
-- 		('3003', 'Organic Coconut Oil', '89.95', '500 ml', '15', 'SUPP0003'),
-- 		('4001', 'Ayrshire Milk', '33.95', '3 l', '23', 'SUPP0004'),
-- 		('4002', 'Simonzola Blue Cheese', '27.65', '270 g', '4', 'SUPP0004');

-- COMMIT;

-- SAVEPOINT ModifyDMRecords;
        
-- SELECT p.ProductID, p.ProductName, p.Price, p.Weight, p.Stock, s.ProductCategory as ProductCategory
-- FROM Products p
-- JOIN suppliers s ON p.SupplierID = s.SupplierID
-- WHERE stock < 20
-- ORDER BY price DESC;

-- CREATE VIEW Q9 AS
-- SELECT ProductID, ProductName, Price, Weight, Stock, (Price * Stock * 1.15) AS TotalPrice
-- FROM Products
-- WHERE stock < 20
-- ORDER BY price DESC;

-- CREATE USER 'ericZukisa_maza'@'localhost' IDENTIFIED BY 'zukisam@za';
-- GRANT INSERT ON FruitMarketDBsql.Suppliers TO 'ericZukisa_maza'@'localhost';


SELECT User, Host FROM mysql.user;

-- DROP USER 'zukisaproctor_maza'@'localhost';

-- FLUSH PRIVILEGES;

CREATE USER 'zukisaa_maza'@'localhost' IDENTIFIED BY 'maz@proctor7';
GRANT INSERT ON FruitMarketDBsql.Suppliers TO 'zukisaa_maza'@'localhost';
FLUSH PRIVILEGES;

SHOW TABLES;

REVOKE SELECT ON FruitMarketDBsql.* FROM 'zukisaa_maza'@'localhost';

GRANT PROCESS ON *.* TO 'zukisaa_maza'@'localhost';

GRANT LOCK TABLES ON *.* TO 'zukisaa_maza'@'localhost';

FLUSH PRIVILEGES;

GRANT SELECT ON fruitmarketdbsql.suppliers TO 'zukisaa_maza'@'localhost';

INSERT INTO FruitMarketDBsql.Suppliers
VALUES ('SUPP006', 'Fruit&Veg', 'Abdu', '0216965111', 'Nuts');

SELECT * FROM FruitMarketDBsql.Suppliers;

-- CREATE VIEW Q114 AS
-- SELECT *
-- FROM FruitMarketDBsql.Suppliers
-- WHERE SupplierID = 'SUPP006' OR SupplierID = 'root';
CREATE TABLE NewProducts AS
SELECT *
FROM Products
WHERE SupplierID = 'SUPP0001' OR SupplierID = 'SUPP0002' OR SupplierID = 'SUPP0003' OR SupplierID = 'SUPP0004'
ORDER BY Stock ASC;


CREATE VIEW Q1_16 AS
SELECT s.CompanyName, s.ContactNo, p.ProductName, p.Price
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID;

CREATE VIEW Q1_17 AS
SELECT SUM(Price) AS Total_Unit_Price,  AVG(Price) AS Average_Price, COUNT(*) AS Number_Of_Products
FROM Products;

CREATE VIEW Q1_18 AS
SELECT COUNT(DISTINCT SupplierID) AS NumSuppliers
FROM Products;

CREATE VIEW Q1_19 AS
SELECT COUNT(ProductID) AS NumberOfProducts, SupplierID
FROM Products
GROUP BY SupplierID;

CREATE VIEW Q1_20 AS
SELECT COUNT(p.ProductID) AS NumberOfProducts, p.SupplierID, SUM(p.Price * p.Stock) AS TotalValue
FROM Products p
GROUP BY p.SupplierID;

-- Q1.21 SET AUTOCOMMIT = 0;

-- UPDATE Products
-- SET ProductName = 'Cavendish Banana', Price = 15.95, Weight = '1Kg', Stock = 18, SupplierID = 'SUPP0001'
-- WHERE ProductID = 1004;

-- ROLLBACK;

-- COMMIT;

-- SET AUTOCOMMIT = 1;

-- Q1.22 mysqldump -u zukisaa_maza -p FruitMarketdbsql > FruitMarketdbsqlZukisa_Maza.sql

-- Q1.23 Applying ON DELETE CASCADE in a foreign key constraint is to ensure referential integrity and maintain consistency in the database. When a record in the parent table is deleted, the ON DELETE CASCADE option automatically deletes all the related records in the child table.alter

-- Q1.24 Between the two - composite key and candidate key is that a composite key is a key that consists of two or more columns to uniquely identify a record in a table, while a candidate key is a key that can uniquely identify a record in a table.

-- Q1.25 Between the two - SQL and DBMS is that SQL (Structured Query Language) is a language used to communicate with and manipulate databases, while a DBMS (Database Management System) is a software that provides an interface for users to interact with the database, and it also includes the database engine that allows data to be stored, retrieved, and manipulated. In summary, SQL is a language, while a DBMS is a software system.


CREATE TABLE Suppliers_Zukisa (
    SupplierID VARCHAR(10) PRIMARY KEY NOT NULL,
    Companyname VARCHAR(30) NOT NULL,
    ContactPerson VARCHAR(30) NOT NULL,
    ContactNo VARCHAR(13) NOT NULL,
    ProductCategory VARCHAR(55)
);

INSERT INTO Suppliers_Zukisa
VALUES
    ('SUPP0001', 'Fruit City', 'Themba', '0115062089', 'Fruit'),
    ('SUPP0002', 'Vegan Veggie Xpress', 'Chinyere', '0137228936', 'Vegetables'),
    ('SUPP0003', 'The Nut House', 'Sam', '0216965133', 'Nuts'),
    ('SUPP0004', 'The Lazy Cow', 'Angelo', '0216964157', 'Dairy');


CREATE TABLE Products_Zukisa (
    ProductID INT NOT NULL,
    ProductName VARCHAR(30),
    Price DECIMAL(10, 2),
    Weight VARCHAR(10),
    Stock INT,
    SupplierID VARCHAR(10),
    PRIMARY KEY (ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers_Zukisa(SupplierID)
);

INSERT INTO Products_Zukisa
VALUES
    ('1001', 'Lady Finger Bananas', '17.95', '750 g', '45', 'SUPP0001'),
    ('1002', 'Pink Lady Apples', '18.95', '1,5 kg', '15', 'SUPP0001'),
    ('1003', 'Red Anjou Pears', '22.99', '1 kg', '24', 'SUPP0001'),
    ('1004', 'Cavendish Bananas', '12.65', '900 g', '18', 'SUPP0001'),
    ('2001', 'Tenderstem Broccoli', '35.90', '400 g', '8', 'SUPP0002'),
    ('2002', 'Portabellini Mushrooms', '18.99', '250 g', '16', 'SUPP0002'),
    ('3001', 'Raw Almonds', '99.00', '1 kg', '6', 'SUPP0003'),
    ('3002', 'Macaroon Butter', '32.95', '410 g', '9', 'SUPP0003'),
    ('3003', 'Organic Coconut Oil', '89.95', '500 ml', '15', 'SUPP0003'),
    ('4001', 'Ayrshire Milk', '33.95', '3 l', '23', 'SUPP0004'),
    ('4002', 'Simonzola Blue Cheese', '27.65', '270 g', '4', 'SUPP0004');

SELECT *
FROM Products_Zukisa
JOIN Suppliers_Zukisa ON Products_Zukisa.SupplierID = Suppliers_Zukisa.SupplierID;


SELECT SupplierID, SUM(Price), GROUP_CONCAT(DISTINCT ProductName)
FROM Products
GROUP BY SupplierID
ORDER BY CASE SupplierID
WHEN 'SUPP0003' THEN 1
	WHEN 'SUPP0002' THEN 2
         WHEN 'SUPP0004' THEN 3
	WHEN 'SUPP0001' THEN 4
         ELSE 5
END;

