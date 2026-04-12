-- order placed only weekends ( Sat) and ( Sun)
 
Select count(*) from (
SELECT order_id, order_datetime, dayname(order_datetime)
FROM orders 
WHERE DAYNAME(order_datetime) in ('Saturday', 'Sunday')) as only_weekends;