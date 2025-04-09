
--Exploring data
SELECT *
FROM Grocery_data;

SELECT COUNT(*)
FROM Grocery_data;


-- Clening data for Item fat content column, to remove inconsistency
UPDATE Grocery_data
SET Item_Fat_Content = 
CASE 
	WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
	WHEN Item_Fat_Content = 'reg' THEN 'Regular'
	ELSE Item_Fat_Content
END;

SELECT DISTINCT(Item_Fat_Content) 
FROM Grocery_data;