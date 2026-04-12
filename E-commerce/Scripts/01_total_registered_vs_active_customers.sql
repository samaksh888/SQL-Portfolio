-- Q1 Total registered customers vs customers who placed at least one order

SELECT 
    COUNT(DISTINCT cu.customer_id) AS total_registered_customers,
    COUNT(DISTINCT o.customer_id) AS customers_with_at_least_one_order
FROM customers AS cu
LEFT JOIN orders AS o ON cu.customer_id = o.customer_id;

-- total register customer vs  atleast 2 customer 
SELECT 
    (SELECT COUNT(customer_id) FROM customers) AS total_registered,
    COUNT(*) AS customers_with_at_least_2_orders
FROM (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(order_id) >= 2
) AS active_repeat_customers;




