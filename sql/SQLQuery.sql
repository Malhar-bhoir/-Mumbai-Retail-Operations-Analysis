---- to add csv dataset in the sql serxer 
--Top Categories by Revenue (SUM(sales))
--Top Sub-Categories by Revenue
--Top Products by Revenue
--Most Profitable Categories (SUM(profit))
--Loss-Making Products (SUM(profit) < 0)
--Revenue by Region/City
--Monthly Sales Trend
-- create the database 
create database mumbai_sales_analysis

use [mumbai_sales_analysis]

-- imprting the data 
-- fro csv select flat file 
-- for excel use import data

select * from  [dbo].[Mumbai_Retail_Sales_Data]


--Identify Top Performers: Find out which Product Categories and Sub-Categories 
---are driving the most revenue in Mumbai

--case 1  : -- top product by category

select category , sum(sales) from  Mumbai_Retail_Sales_Data

group by category 


--case 2  : -- top product by sub  category

select sub_category , sum(sales) as sales from  Mumbai_Retail_Sales_Data

group by sub_category 
order by sales desc

-- top 10 profitable products

sELECT TOP 10
    product_name,
    category,
    sub_category,
    SUM(sales) AS total_revenue
FROM Mumbai_Retail_Sales_Data
GROUP BY
    product_name,
    category,
    sub_category



 --  Monthly Revenue Trends: We need to group sales by month and year. 
 --This will prove to the hiring manager that you understand time-series
 ---aggregation and will clearly highlight the Q4 festive spike.
select  month(order_date) [month] , year(order_date) [year], sum(sales) as totalrevenuw  from  Mumbai_Retail_Sales_Data
group by month(order_date) , year(order_date)
order by month(order_date) , year(order_date)


---- or 
SELECT
    FORMAT(order_date, 'yyyy-MM') AS year_month,
    SUM(sales) AS total_revenue,
    COUNT(order_id) AS total_orders,
    SUM(profit) AS total_profit
FROM Mumbai_Retail_Sales_Data
GROUP BY FORMAT(order_date, 'yyyy-MM')
ORDER BY year_month;



-- Geographical Performance: Compare our four local regions (Western Suburbs,
--- Eastern Suburbs, South Mumbai, Thane & Navi Mumbai) to see which one is the most profitable.

select region ,sum(profit) as profitable  from  Mumbai_Retail_Sales_Data
group by region
order by profitable 

---- or 
SELECT
    region,
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) * 100.0) / SUM(sales), 2) AS profit_margin_pct
FROM Mumbai_Retail_Sales_Data
GROUP BY region
ORDER BY profit_margin_pct DESC;