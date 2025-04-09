--Detailed KPI's gathering

--Aggregates by Item Fat content
SELECT Item_Fat_Content,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales;


--By Year
SELECT Item_Fat_Content,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
WHERE Outlet_Establishment_Year = 2022
GROUP BY Item_Fat_Content
ORDER BY Total_Sales;


--Aggregates by Item Type
SELECT Item_Type,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;


--Total sales as per Outlet location typer and Low fat, Regular by using Pivot
SELECT Outlet_Location_Type,
	   CASE WHEN [Low Fat] IS NULL THEN 0 ELSE [Low Fat] END AS Low_Fat,
       CASE WHEN [Regular] IS NULL THEN 0 ELSE [Regular] END AS Regular
FROM
(
SELECT Outlet_Location_Type, Item_Fat_Content,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM Grocery_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT
(
	SUM(Total_Sales)
	FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type
;


--Aggregate year over year
SELECT Outlet_Establishment_Year,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;


--Percentage sales by Outlet size
SELECT Outlet_Size,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CONCAT(CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,0)), '%') AS Sales_Percent
FROM Grocery_data
GROUP BY Outlet_Size
ORDER BY Sales_Percent DESC;


--All aggregate over Outlet location type
SELECT Outlet_Location_Type,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CONCAT(CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,0)), '%') AS Sales_Percent,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;


--All aggregate over Outlet type
SELECT Outlet_Type,
	   CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	   CONCAT(CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,0)), '%') AS Sales_Percent,
	   CAST(AVG(Sales) AS DECIMAL(10,0)) AS Avg_Sales,
	   COUNT(*) AS No_of_Items,
	   CONCAT(CAST(AVG(Rating) AS DECIMAL(10,2)), ' stars') AS Avg_Rating
FROM Grocery_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

--Ready for further exploration and visualization