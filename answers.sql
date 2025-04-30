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
    ProductID INT,FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
);

-- Insert sample data into Product table
INSERT INTO Product (ProductName) VALUES 
('Laptop'),
('Mouse'),
('Tablet'),
('Keyboard'),
('Phone');

-- Each product is captured in a different row
INSERT INTO ProductDetail (OrderID, CustomerName, ProductID)
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

-- create a Product table
CREATE TABLE Product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,  
    ProductName VARCHAR(100) UNIQUE
);

/*  OrderDetails table where the customer name is not included. we paired the order id to customer name on 
another table eliminating partial dependacy  */

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- insert data into CustomerOrder table
INSERT INTO CustomerOrder (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


-- insert data into Product table
INSERT INTO Product (ProductName) VALUES
('Laptop'),
('Mouse'),
('Tablet'),
('Keyboard'),
('Phone');


-- insert data into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES
(101, 1, 2),
(101, 2, 1),
(102,3, 3),
(102, 4, 1),
(102,2, 2),
(103, 5, 1);