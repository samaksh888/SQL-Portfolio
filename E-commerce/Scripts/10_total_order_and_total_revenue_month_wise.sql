-- Total orders and total revenue month-wise 

Select * from (SELECT 
    date_format(order_datetime, "%Y-%m") AS month,
    COUNT(*) AS Total_order,
    sum(order_total) as total_revenue
FROM orders
GROUP BY date_format(order_datetime, "%Y-%m")) t ;
 