-- Find top 5 cities by order value
   -- note - choose shiping city not customers city 
   
use malti_gauri;
select shipping_state,Sum(order_total) as order_value 
from orders 
group by shipping_state 
order by order_value desc
limit 5;