-- orders with quantity > 1 in any order item OR   Which orders had quantity > 1 item?
use malti_gauri;

SELECT distinct order_id
FROM order_items
WHERE quantity > 1;
