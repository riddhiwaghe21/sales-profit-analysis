select * from superstore_project;
select * from orders;

select top 10 * from orders;

--total orders--
select count(*) as total_orders from orders;

--for checking structure of table--
EXEC sp_help Orders;

--Date range of data--
select min(Order_Date) as first_order,
max(Order_Date) as last_order
from orders;

--total sale and total profit--
select  sum(Sales) as total_sales,
sum(Profit) as total_profit from orders;

--Total loss-making orders--
select count(*) as loss_orders
from orders where Profit <0;

--monthly sales and profit trends--
select year(Order_Date) as order_year,
month(Order_Date) as order_month,
sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit
from orders
group by year(Order_Date),month(Order_Date)
order by order_year,order_month;

--REGION-WISE PERFORMANCE--
select Region,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from orders
group by Region
order by total_profit;

--LOSS-MAKING SUB-CATEGORIES--
select Sub_Category,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from orders
group by Sub_Category
having sum(Profit)<0
order by Sub_Category;


--PROFIT MARGIN BY CATEGORY--
SELECT
    Category,
    SUM(Sales)  AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS profit_margin_pct
FROM Orders
GROUP BY Category;

--Top 10 Customers by Sales--
select top 10 Customer_Name,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from orders
group by Customer_Name
order by total_sales desc;

--Loss-Making Customers--
SELECT
    Customer_Name,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM Orders
GROUP BY Customer_Name
HAVING SUM(Profit) < 0
ORDER BY total_profit;

--10 Profitable Sub-Categories

select top 10 Sub_Category,
sum(Sales) as total_Sales,
sum(Profit) as total_profit
from orders
group by Sub_Category
having sum(Profit)>0
order by total_profit desc;

--DISCOUNT IMPACT ANALYSIS Profit vs Discount
select Discount,
count(*) as total_orders,
sum(Sales) as total_sales,
sum(Profit) as total_profit
from orders
group by Discount
order by Discount;

--Order Profit Category
select Order_ID,
Sales,
Profit,
case
when Profit < 0 then 'loss'
when Profit between 0 and 100 then 'low profit'
else 'high profit'
end as Profit_category
from orders;

--Top 3 Sub-Categories by Profit per Category
SELECT
    Category,
    Sub_Category,
    SUM(Profit) AS total_profit,
    RANK() OVER (
        PARTITION BY Category
        ORDER BY SUM(Profit) DESC
    ) AS profit_rank
FROM Orders
GROUP BY Category, Sub_Category;

--Customer Profit vs Average Profit--
SELECT
    Customer_Name,
    SUM(Profit) AS customer_profit,
    AVG(SUM(Profit)) OVER () AS avg_customer_profit
FROM Orders
GROUP BY Customer_Name;

--Running Total of Sales(time series)

SELECT
    Order_Date,
    SUM(Sales) AS daily_sales,
    SUM(SUM(Sales)) OVER (
        ORDER BY Order_Date
    ) AS running_sales
FROM Orders
GROUP BY Order_Date
ORDER BY Order_Date;

