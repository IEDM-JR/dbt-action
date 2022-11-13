SELECT * FROM IEDM1DB.PROJECT.ORDERS as O
INNER JOIN IEDM1DB.PROJECT.order_products_train as OP
ON O.order_id = OP.order_id