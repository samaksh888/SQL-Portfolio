-- Latest order Placed by Each Customer

use malti_gauri;
 
select c.customer_id, first_name, phone, city,count(*), max(o.order_datetime)
from customers c 
join orders o
using(customer_id)
group by c.customer_id, first_name, phone, city

