-- Top 5 best-selling products by quantity

-- select * from products;
-- select * from order_items;

select p.product_id,p.product_name,sum(quantity) as total_quantity from 
order_items oi 
join products p
on oi.product_id = p.product_id
group by product_id, product_name
order by total_quantity desc
limit 5;