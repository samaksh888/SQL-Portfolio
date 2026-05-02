-- Customer Average Order Value Per Customer
select customer_id,round(avg(order_total),2) as AOV
from orders 
group by customer_id
order by AOV desc;

-- if want to get customer name and city then do join customer with orders
select c.customer_id,first_name,city,round(avg(order_total),2) as AOV
from orders o
join customers c
on c.customer_id = o.customer_id
group by customer_id,first_name,city
order by AOV desc;