-- Customer who placed exactly one order 

SELECT COUNT(*) AS total_one_time_buyers
FROM (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(order_id) = 1
) AS single_order_list;