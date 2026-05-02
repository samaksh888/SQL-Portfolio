-- find customer who return atleast one order

select o.customer_id from orders o join order_items oi on o.order_id = oi.order_id 
join returns r on oi.order_item_id = r.order_item_id  ;

