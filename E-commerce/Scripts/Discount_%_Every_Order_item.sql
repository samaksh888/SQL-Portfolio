-- Discount % on Every Order_item

select order_item_id, product_id,
unit_price, discount,(discount/unit_price)*100 as discount_pct
from order_items
order by discount_pct desc
limit 10;