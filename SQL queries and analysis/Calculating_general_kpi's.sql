--Calculating Basic KPI's according to requirements

--Total sales
SELECT CONCAT(CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)),' million') AS Total_Sales
FROM Grocery_data;

--Total sales made with low fat items
SELECT CONCAT(CAST(SUM(Sales)/1000000 AS DECIMAL(10,2)),' million') AS Total_Sales
FROM Grocery_data
WHERE Item_Fat_Content = 'Low Fat';

--Mean sales
SELECT CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales
FROM Grocery_data;

--Mean sales with selective year to check change over time
SELECT CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales
FROM Grocery_data
WHERE Outlet_Establishment_Year = 2015;

SELECT CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales
FROM Grocery_data
WHERE Outlet_Establishment_Year = 2017;

--Total count of items
SELECT COUNT(*) AS No_of_Items
FROM Grocery_data;

--Average rating as per customer reviews
SELECT CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data;
