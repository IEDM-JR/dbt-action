Select o.*, op.PRODUCT_ID,
	op.ADD_TO_CART_ORDER,
	op.REORDERED from {{ref('stg_orders')}} AS o 
join {{ref('stg_order_product')}} AS op
on o.order_id = op.order_id