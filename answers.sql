# Question 1
-- create a product id/product name table
CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,  
    ProductName VARCHAR(100) UNIQUE
);

-- use unique product id in the productdetail table and remove multiple product names in the same row
CREATE TABLE ProductDetail(
	OrderID INT,
    CustomerName VARCHAR(100),
    Products  VARCHAR (100)
);

-- Each product is captured in a different row
INSERT INTO ProductDetail (OrderID, CustomerName, ProductS)
VALUES 
(101, 'John Doe', 1),
(101, 'John Doe', 2),
(102, 'Jane Smith', 3),
(102, 'Jane Smith', 4),
(102, 'Jane Smith', 2),
(103, 'Emily Clark', 5);


#QUESTION 2


-- create a CustomerOrder table which contains the order id and customer name.
CREATE TABLE CustomerOrder (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);


-- insert data into CustomerOrder table
INSERT INTO CustomerOrder (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

- create a Product table
CREATE TABLE Product (
    OrderID INT
    ProductName VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID,ProductName)
    Foreign KEY (OrderID) REFERENCES CustomerOrder(OrderID)
);


-- insert data into OrderDetails table
INSERT INTO Product (OrderID, ProductName, Quantity)
VALUES
(101, Laptop, 2),
(101, Mouse, 1),
(102,Tablet, 3),
(102, Keyboard, 1),
(102,Mouse, 2),
(103, Phone, 1);
