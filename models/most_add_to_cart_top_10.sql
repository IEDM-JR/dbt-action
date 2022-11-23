select opp.product_id, p.product_name, sum(add_to_cart_order) as total_cart
from {{ source ('IEDM','ORDER_PRODUCTS_PRIOR')}} opp
left join {{ source ('IEDM','PRODUCTS')}} p
on opp.product_id = p.product_id
group by opp.product_id, p.product_name
order by 3 desc
limit 10