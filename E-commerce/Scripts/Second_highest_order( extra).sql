-- Write a query to find the second highest order from an orders table without using MAX in subquery.

use malti_gauri;

select *, Nth_Value(order_total,2) over(order by order_total desc 
									Rows Between unbounded preceding and unbounded following)
from orders;

select distinct top_customer from (SELECT 
    customer_id,
    order_total,
    NTH_VALUE(customer_id, 2) OVER (
        ORDER BY order_total DESC
        RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS top_customer
FROM orders) t




