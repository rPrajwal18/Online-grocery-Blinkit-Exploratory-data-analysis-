# Online-grocery Blinkit (Exploratory data analysis)

## Project Background
Blinkit is an online grocery delivery company aiming to improve business performance and enhance customer satisfaction through data-driven insights. The business collects data related to items sold, outlet details, and customer ratings. However, they lacked a structured approach to extract meaningful insights from this data.

Insights and recommendations are provided on the following key areas:

- **Sales Trend Analysis**: Evaluation of sales patterns of Y-O-Y, both both Outlets size and Outlets location type, Focusing on Average sales, Sales percent, Average rating and Items Volume.
- **Product Level Performance**: An analysis of Blinkit's various product lines, understanding their impact on sales and sales percent.

The SQL queries used to inspect and calculate the kpi's for this analysis can be found [here](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/1e776ed8ce8a4335be2793879bfa2591d0463331/SQL%20queries%20and%20analysis/Calculating_general_kpi's.sql).

Targed SQL queries regarding various granular kpi's can be found [here](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/1e776ed8ce8a4335be2793879bfa2591d0463331/SQL%20queries%20and%20analysis/Calculating_granular_requirements.sql).

## Executive Summary

### Overview of Findings
Blinkit's sales analysis of 8k records across 2011-2022 shows annual sales stabilizing at around 1.20 million, with Tier 3 cities and Medium Outlet-sizes contributing 40% of sales. Where top 5 items being Fruits and Vegetables, Snack Foods, Household Items, Frozen Foods, and Dairy Items for 40% of revenue, though customer rating is a concern as  ratings have declined by 15%. Blinkit can benefit from expanding these Item types by adding more products lines, optimizing shipping, customer satisfaction and rating to increase customer purchase value. Targeted growth in Low and Medium Outlet sizes, along with improvements to digital channels like the mobile app and UPI payment capabilities, will strengthen Blinkit's market position and drive sustainable growth.

![Year on Year aggregated image](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/73e0dcaee4ef70e2d050ca550f945d53840ff6b7/Analysed%20Tables/year_over_year_aggregated.png)

## Insights Deep-Dive

### Sales Trend Analysis
- Blinkit's total sales 1.2 million with 800+ orders per year.
- Sales surged in 2018 due to the expansion in Outlet location types mainly Tier-2 and Tier-3 cities by 30%, returning to regular levels as post 2018 that is 2020 and 2022 due to Pandemic.
- Blinkit shows peak sales in Small and Medium Outlet sizes with about 42% and 37%, where Large Outlet Size lower sales to 21%.
- The Outlet type of Supermarket-1 and Grocery stores has most number of Items volumes sold with 5577 and 1083 respectively also with an average rating of 3.96
- Item Fat Content of Low-Fat and Regular has sold of 60% and 40% respectively.

![sales percent over outlet type](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/cb951eaeedbb9b419e68c5de7e020417ef4ba4e6/Analysed%20Tables/aggregates_by_outlet_type.png)

![Outlet location type and Item fat content](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/cb951eaeedbb9b419e68c5de7e020417ef4ba4e6/Analysed%20Tables/total_sales_by_outlet_location_type_and_item_fat_content.png)

![sales percent over outlet size](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/cb951eaeedbb9b419e68c5de7e020417ef4ba4e6/Analysed%20Tables/sales_percent_over_outlet_size.png)

### Product Level Performance
- Five Item types: Fruits and Vegetables, Snack Foods, Household Items, Frozen Foods, and Dairy Items, generate 40% of total revenue.
- Fruits and Vegetables account for 10% of all orders (1232 items ordered).
- The Top 5 Item types including Canned goods has an Average rating of 3.97.

![aggregates over item type](https://github.com/rPrajwal18/Online-grocery-Blinkit-Exploratory-data-analysis-/blob/cc0d3aa0042e6f1eb2210e148d490b7a28275a15/Analysed%20Tables/aggregated_by_item_type.png)
