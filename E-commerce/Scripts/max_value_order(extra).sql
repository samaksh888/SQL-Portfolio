-- → Finds the highest order_total value in the table

use malti_gauri;

-- m-1 - using subquery -- shows editable null - row ?????
SELECT COUNT(*) FROM orders;
SELECT *
FROM orders
WHERE order_total = (SELECT MAX(order_total) FROM orders);

-- m-2 Using limit and order by
-- SELECT *
-- FROM orders
-- ORDER BY order_total DESC
-- LIMIT 1;

# m-3 -- Subquery and window function over
-- SELECT Max(order_total) FROM (
--     SELECT *, 
--            MAX(order_total) OVER() as max_val
--     FROM orders
-- ) t
-- WHERE t.order_total = t.max_val;

-- m-4  - WINDOW Function

SELECT *
FROM (
    SELECT *,
           RANK() OVER (ORDER BY order_total DESC) AS rnk
    FROM orders
) t
WHERE rnk = 1;
