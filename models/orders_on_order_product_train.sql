select o.order_id, o.user_id, o.eval_set, o.order_number, o.order_dow, o.order_hour_of_day, o.days_since_prior_order, t.product_id, t.add_to_cart_order, t.reordered 
    from {{ source ('IEDM','ORDERS')}} o
    inner join {{ source ('IEDM','ORDER_PRODUCTS_TRAIN')}} t
    on o.order_id = t.order_id