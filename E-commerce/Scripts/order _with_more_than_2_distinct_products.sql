-- orders having more than 2 distinct products

select count(*) from 
		(
        Select order_id, count(distinct product_id) as distinct_products
        from order_items
        group by order_id
        having count(distinct product_id) >2
        )t;