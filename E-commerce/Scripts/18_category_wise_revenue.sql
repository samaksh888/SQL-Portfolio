-- Category_wise_revenue_contribution

select p.category, sum(line_total) as category_revenue
from products p
join order_items oi 
on p.product_id = oi.product_id
group by p.category
order by category_revenue desc;