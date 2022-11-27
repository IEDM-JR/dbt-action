SELECT 
a.ORDER_ID,
a.USER_ID,
a.ORDER_NUMBER,
a.DOW,
a.HOD,
a.DSPO,
a.ADD_TO_CART_ORDER,
a.REORDERED, 
b.* FROM {{ref('int_order_join_orderproduct')}} AS a JOIN 
{{ref('stg_products')}} AS b ON
a.PRODUCT_ID = b.PRODUCT_ID