# Q8. Make order value bucketing against each customers order's
-- if order_total is below 1000 - "Low",
-- if order_total greater than or equal to 1000 and less than 5000 - "Medium"
-- otherwise "High" for any value of order total greater than 5000

select c.customer_id,first_name,order_id, 
case 
	when order_total <1000 then "low"
    when order_total >=1000 and order_total<5000 then "medium"
    when order_total >5000 then "high" End as order_bucketing
from orders 
join customers c
using(customer_id);


select * from products;
select * from order_items