/*these queries summarise the Project solution to Database Sales/ 
  
/*what is the monthly sales, profit, and quantity?*/ 
select 
strftime('%Y-%m',order_date) as order_month,
sum(sales) AS total_monthly_sales,
sum(profit) AS total_monthly_profit,
sum(quantity) AS total_monthly_quantity,
from orders
group by
strftime('%Y-%m',order_date)
order by order_month;

/*the query of summary on the total sales and profit by different ship mode*/ 
select 
ship_mode,
sum(sales) AS total_sales,
sum(profit) AS total_profit
from orders
group by ship_mode; 

/*what is the total sales and profit by different segment*/ 
SELECT
segment,
sum(sales) AS total_sales,
sum(profit) AS total_profit 
from orders
group by segment; 

/*what is the total sales and profit by different categories*/ 
SELECT
category,
sub_category,
sum(sales) AS total_sales,
sum(profit) AS total_profit
from orders
group by 
category,
sub_category;

/*this query summarises the total quantity for each region*/ 
select 
region,
sum(quantity) AS total_quantity
from orders
group by 
region;

/*this query summarises the average discount for each product category*/ 
select 
category, 
AVG(discount) AS average_discount
from orders
group by category;

/*what is the average sales and profit per order*/ 
select 
order_id, 
AVG(sales) AS average_sales,
AVG(profit)  AS average_profit
from orders
group by order_id;

/*what is the query shows the most profitable product*/ 
select 
sum(profit),
product_id  
from orders
order by product_id DESC
limit 1;

/*this query summarises the top 5 customers based on their totalm spending*/ 
select 
customer_name,
sum(sales)
from orders
GROUP BY sales
order by sales DESC
limit 5;

/*this query summarises the total orders placed in each year*/ 
select 
strftime('%Y',order_date) as year,
count(DISTINCT order_id) 
from orders
group by year;

/*this query shows total orders returned*/ 
select 
count(order_id) AS total_orders_returned
from "returns";

/*this query shows the product category with most orders*/ 
select 
category,
count(DISTINCT order_id),
product_name AS most_ordered_product
from orders
group by category;


