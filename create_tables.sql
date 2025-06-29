
-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    region TEXT,
    signup_date DATE
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    category TEXT,
    name TEXT,
    price DECIMAL(10, 2),
    cost_price DECIMAL(10, 2)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- OrderItems Table
CREATE TABLE OrderItems (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
