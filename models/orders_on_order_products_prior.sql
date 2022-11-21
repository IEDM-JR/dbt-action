select o.order_id, o.user_id, o.eval_set, o.order_number, o.order_dow, o.order_hour_of_day, o.days_since_prior_order, p.product_id, p.add_to_cart_order, p.reordered 
    from {{ source ('IEDM','ORDERS')}} o
    inner join {{ source ('IEDM','ORDER_PRODUCTS_PRIOR')}} p
    on o.order_id = p.order_id