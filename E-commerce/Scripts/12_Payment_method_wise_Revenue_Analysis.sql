-- Payment method wise Revenue Analysis
use malti_gauri;
select * from  orders;

select payment_method, sum(order_total) as total_revenue
from orders
group by payment_method
order by total_revenue desc
limit 1; # if asked top most payment method acc to revenue