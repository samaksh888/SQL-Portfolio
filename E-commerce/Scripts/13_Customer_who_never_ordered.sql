--  Cutomer who signed up but never placed an order

use malti_gauri;

select c.customer_id, first_name, last_name
from customers c left join orders o 
on c.customer_id = o.customer_id
where o.customer_id IS null;