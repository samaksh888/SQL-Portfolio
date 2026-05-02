-- Product sold more than average quantity

select product_id,sum(quantity) from order_items 
group by product_id
having sum(quantity) > (select avg(quantity) from order_items)