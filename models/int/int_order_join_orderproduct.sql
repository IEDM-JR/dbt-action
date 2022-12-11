SELECT o.*,op.PRODUCT_ID,
	op.ADD_TO_CART_ORDER,
	op.REORDERED
FROM {{ref('stg_order_product_prior')}} AS op
NATURAL JOIN {{ref('stg_orders')}} AS o 
