-- for each customer fetch their latest order along with order id

select customer_id, order_id, latest_order from ( select customer_id, order_id ,max(order_datetime) as latest_order, 
rank() over(partition by customer_id order by max(order_datetime) desc) as latest_order_ranking
from orders
group by customer_id, order_id) as t
where latest_order_ranking = 1;


