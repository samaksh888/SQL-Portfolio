-- Catch Revenue Leakage — Order Total vs Sum of Line Items | Data Quality Check |.

use malti_gauri;

select o.order_id, order_total, sum(line_total) as calculated_sum
from order_items oi 
join orders o
on oi.order_id =o.order_id
group by o.order_id, order_total
having order_total != sum(line_total);

-- No rows found means no Revenu b e leakage