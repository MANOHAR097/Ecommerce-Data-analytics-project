SELECT * FROM ecommerce_database.ecommerce;
select * from ecommerce_database.ecommerce;
alter table ecommerce_database.ecommerce
rename to Ecommerce;
select * from Ecommerce;
#Q1. What is the total revenue generated from all orders?
select round(sum(Revenue),2) as total_revenue
 from Ecommerce;
 #Q2. How many orders were placed in total?
 select count( distinct(Order_ID) )as Total_orders
 from  Ecommerce;
 #Q3. How many unique customers have made purchases?
 select count(distinct(Customer_ID)) 
 as total_customers 
 from Ecommerce;
 #Q4. What is the average customer rating?
 select round(avg(Customer_Rating) ,2)
 as average_customer 
 from Ecommerce;
 #Q5. What is the total quantity of products sold?
 select sum(Quantity) as total_quantity
 from Ecommerce;
 #Q6. What is the average revenue generated per order?
 select round(avg(Revenue),2) as Avg_revenue 
 from Ecommerce;
 #Q7. How many orders are there for each order status?
 select Order_Status,count(distinct(Order_ID)) as orders 
 from Ecommerce
 group by Order_Status;
 #Q8. How many customers are there for each customer rating?
 select Customer_Rating , count(distinct(Customer_ID)) as customers
 from Ecommerce
 group by Customer_Rating
 order by customers desc;
 #Q9. Which product categories generated the highest revenue?
 select Product_Name , round(sum(Revenue)) as Revenue
 from Ecommerce
 group by Product_Name
 order by Revenue desc;
 #Q10. Which 10 products generated the highest revenue?
 select Product_Name , round(sum(Revenue)) as Revenue
 from Ecommerce
 group by Product_Name
 order by Revenue desc
 limit 10;
 #Q11. Which 10 products generated the lowest revenue?
  select Product_Name , round(sum(Revenue)) as Revenue
 from Ecommerce
 group by Product_Name
 order by Revenue asc
 limit 10;
 #Q12. Which payment methods generated the highest revenue?
 select Payment_Method , round(sum(Revenue),2) 
 as total_Revenue 
 from Ecommerce
 group by Payment_Method
 order by  total_Revenue desc;
 #Q13. Which countries generated the highest revenue?
 select Country , round(sum(Revenue),2) As Revenue 
 from Ecommerce
 group by Country
 order by Revenue desc;
 #Q14.Which customers have generated more than 1,000 in total revenue?
select Customer_ID, round(sum(Revenue), 2) AS Total_Revenue
from Ecommerce
group by  Customer_ID
having sum(Revenue) > 1000
ORDER BY Total_Revenue DESC;
#Q15.Which customers placed more than 5 orders?
select Customer_ID , count(Order_ID) as no_of_orders from Ecommerce
group by Customer_ID
having no_of_orders > 5
order by no_of_orders desc; 
#Q16.Which product categories have both high revenue and high quantity sold?
select Product_Category,sum(Quantity) as Total_Quantity,
round(sum(Revenue),2) as Total_Revenue from Ecommerce
group by Product_Category
having sum(Quantity) > 5
and sum(Revenue) > 1000 ;
#17.Which country has the highest number of orders?
select Country ,count(distinct(Order_ID)) as total_orders
from Ecommerce 
group by Country
order by total_orders desc
limit 1;
#18.Which payment method has the highest number of orders?
select Payment_Method ,count(distinct(Order_ID)) as total_order
from Ecommerce
group by Payment_Method
order by total_order desc
limit 1;

 