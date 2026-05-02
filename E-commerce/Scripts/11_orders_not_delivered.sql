-- Find orders that are not yet delivered

select count(*) from orders
where order_status <>"DELIVERED";