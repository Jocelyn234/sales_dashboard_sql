select 
strftime('%Y-%m',order_date) as order_month,
sum(sales),
sum(profit),
sum(quantity)
from orders
group by
strftime('%Y-%m',order_date)
order by order_month;

select 
sum(sales),
sum(profit),
ship_mode
from orders
group by ship_mode; 

select 
sum(sales),
sum(profit),
segment 
from orders
group by segment; 

select 
sum(sales),
sum(profit),
category,
sub_category 
from orders
group by 
category,
sub_category;

select 
quantity,
region,
count(region)
from orders
group by 
quantity;

select 
AVG(discount),
product_id,
category 
from orders
group by category;

select 
AVG(sales),
AVG(profit),
order_id 
from orders
group by order_id;

select 
profit,
product_id,
product_name 
from orders
group by product_id
order by profit desc
limit 1;

select 
sales,
customer_name
from orders
group by sales 
order by sales desc
limit 5;

select 
strftime('%Y',order_date) as year,
count(order_date)
from orders
group by year;

select 
count(order_id)
from "returns";

select 
count(order_id),
product_id,
category 
from orders
group by category;


