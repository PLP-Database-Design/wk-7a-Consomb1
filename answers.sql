-- Question 1, Achieving 1NF

-- Normalizing the table to achieve 1NF
CREATE TABLE ProductOrders (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO ProductOrders VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductOrders VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductOrders VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductOrders VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductOrders VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductOrders VALUES (103, 'Emily Clark', 'Phone');


-- END OF QUESTION 1

-- START OF QUESTION 2
-- Question 2, Achieving 2NF


-- For this normalization 2 tables are created: Orders and ordersdetails 
-- Table 1 contains OrderID and CustomerName

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Table 2 contains OrderID and Product and Quantity
 CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);



-- MOVING THE DATA TO THE NEW TABLES
-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES 
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');
 
-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

  -- END OF QUESTION 2

