create or replace view IEDM1DB.PROJECT.ORDERS_ON_ORDER_PRODUCTS_TRAIN(
	ORDER_ID,
	USER_ID,
	EVAL_SET,
	ORDER_NUMBER,
	ORDER_DOW,
	ORDER_HOUR_OF_DAY,
	DAYS_SINCE_PRIOR_ORDER,
	PRODUCT_ID,
	ADD_TO_CART_ORDER,
	REORDERED
) as
(
    select o.order_id, o.user_id, o.eval_set, o.order_number, o.order_dow, o.order_hour_of_day, o.days_since_prior_order, t.product_id, t.add_to_cart_order, t.reordered 
    from orders as o
    inner join order_products_train as t
    on o.order_id = t.order_id
);