CREATE DATABASE sales_dashboard;

USE sales_dashboard;

CREATE TABLE Salespersons (
    salesperson_id INT PRIMARY KEY,
    salesperson_name VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    salesperson_id INT,
    product_id INT,
    quantity INT,
    sale_amount DECIMAL(10,2),
    sale_date DATE,
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(salesperson_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);