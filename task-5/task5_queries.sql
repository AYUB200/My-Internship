create database customers;
use customers;

-- Query is used to create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

-- Query is used to create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Query is used to insert records into Customers table
INSERT INTO Customers (CustomerID, CustomerName) VALUES
(1, 'Ayub'),
(2, 'Rahul'),
(3, 'Sneha');

select * from Customers;

-- Query is used to insert records into Orders table
INSERT INTO Orders (OrderID, CustomerID, Product) VALUES
(101, 1, 'Laptop'),
(102, 2, 'Phone'); 

Select * from Orders;

-- Query is used to perform INNER JOIN 
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Query is used to perform LEFT JOIN 
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Query is used to perform RIGHT JOIN 
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Query is used to perform FULL JOIN (shows all customers and all orders)
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerID, Customers.CustomerName, Orders.Product
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
