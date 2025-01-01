create database project;
use project;


-- 1. What are the details of all the car sales records?
SELECT * FROM carsale;

-- 2. What are the distinct car models sold in the dataset?
SELECT DISTINCT CarModel FROM carsale;

-- 3. How many car sales were recorded in the dataset?
SELECT COUNT(*) AS TotalSales FROM carsale;

-- 4. Which cities have the highest number of car sales?
SELECT City, COUNT(*) AS SalesCount FROM carsale GROUP BY City ORDER BY SalesCount DESC;

-- 5. What are the names of the customers who made a purchase in a specific country (e.g., USA)?
SELECT CustomerName FROM carsale WHERE Country = 'USA';

-- 6. What is the total revenue generated from car sales?
SELECT SUM(Sale) AS TotalRevenue FROM carsale;

-- 7. What is the total quantity of cars sold across all transactions?
SELECT SUM(QuantitySold) AS TotalQuantity FROM carsale;

-- 8. What is the average price of cars sold?
SELECT AVG(Price) AS AveragePrice FROM carsale;

-- 9. Which transaction generated the highest profit?
SELECT * FROM carsale ORDER BY Profit DESC LIMIT 1;

-- 10. Which transaction had the highest sale amount?
SELECT * FROM carsale ORDER BY Sale DESC LIMIT 1;

-- 11. How much revenue was generated for each car make?
SELECT CarMake, SUM(Sale) AS TotalRevenue FROM carsale GROUP BY CarMake;

-- 12. What is the total profit for each car type?
SELECT CarType, SUM(Profit) AS TotalProfit FROM carsale GROUP BY CarType;

-- 13. How many sales were made in each country?
SELECT Country, COUNT(*) AS TotalSales FROM carsale GROUP BY Country;

-- 14. What is the average profit generated per payment method?
SELECT PaymentMethod, AVG(Profit) AS AverageProfit FROM carsale GROUP BY PaymentMethod;

-- 15. What is the average car price per car type?
SELECT CarType, AVG(Price) AS AveragePrice FROM carsale GROUP BY CarType;

-- 16. Which car sales were made to customers younger than 30 years old?
SELECT * FROM carsale WHERE Age < 30;

-- 17. What are the details of sales for cars priced above $50,000?
SELECT * FROM carsale WHERE Price > 50000;

-- 18. Which sales were made in 2024?
SELECT * FROM carsale WHERE YEAR(DateOfSale)=2024;

-- 19. Which sales had a profit greater than $10,000?
SELECT * FROM carsale WHERE Profit > 10000;

-- 20. Which sales were made using credit cards?
SELECT * FROM carsale WHERE PaymentMethod = 'Credit Card';

-- 21. What are the top 5 highest-revenue transactions?
SELECT * FROM carsale ORDER BY Sale DESC LIMIT 5;

-- 22. Which are the 5 least profitable car models?
SELECT CarModel, MIN(Profit) AS LeastProfit FROM carsale GROUP BY CarModel ORDER BY LeastProfit ASC LIMIT 5;

-- 23. Which cities recorded the highest number of sales transactions?
SELECT City, COUNT(*) AS SalesCount FROM carsale GROUP BY City ORDER BY SalesCount DESC;

-- 24. Which salesperson achieved the most revenue in a single transaction?
SELECT SalespersonName, Sale FROM carsale ORDER BY Sale DESC LIMIT 1;

-- 25. What are the top 3 most sold car makes based on quantity sold?
SELECT CarMake, SUM(QuantitySold) AS TotalQuantity FROM carsale GROUP BY CarMake ORDER BY TotalQuantity DESC LIMIT 3;

-- 26. Which customer made the highest total purchase amount across all transactions?
SELECT CustomerName, SUM(Sale) AS TotalPurchase FROM carsale GROUP BY CustomerName ORDER BY TotalPurchase DESC LIMIT 1;

-- 27. What is the total profit generated for each dealership location?
SELECT DealershipLocation, SUM(Profit) AS TotalProfit FROM carsale GROUP BY DealershipLocation;

-- 28. How many SUVs were sold each year?
SELECT YEAR(DateOfSale) AS Yeard ,SUM(QuantitySold) AS TotalSUVs FROM carsale WHERE CarType = 'SUV' GROUP BY Yeard;

-- 29. What are the top 3 most common payment methods used in car sales?
SELECT PaymentMethod, COUNT(*) AS TotalUsage FROM carsale GROUP BY PaymentMethod ORDER BY TotalUsage DESC LIMIT 3;

-- 30. Which years saw the highest total revenue from sales?
SELECT YEAR(DateOfSale) AS Yeard, SUM(Sale) AS TotalRevenue FROM carsale GROUP BY Yeard ORDER BY TotalRevenue DESC;
