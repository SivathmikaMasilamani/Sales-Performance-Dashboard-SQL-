SELECT * FROM Salespersons;

SELECT * FROM Products;

SELECT * FROM Sales;

SELECT SUM(sale_amount) AS Total_Sales
FROM Sales;

SELECT AVG(sale_amount) AS Average_Sales
FROM Sales;

SELECT MAX(sale_amount) AS Highest_Sale
FROM Sales;

SELECT MIN(sale_amount) AS Lowest_Sale
FROM Sales;

SELECT COUNT(*) AS Total_Transactions
FROM Sales;

SELECT sp.salesperson_name, s.sale_amount
FROM Salespersons sp
JOIN Sales s
ON sp.salesperson_id = s.salesperson_id;

SELECT p.product_name, s.sale_amount
FROM Products p
JOIN Sales s
ON p.product_id = s.product_id;

SELECT region, COUNT(*) AS Salesperson_Count
FROM Salespersons
GROUP BY region;

SELECT category, COUNT(*) AS Product_Count
FROM Products
GROUP BY category;