
-- show the orders with corresponding order hour and order day of the week

select 
    ORDER_ID,
	USER_ID,
	ORDER_HOUR_OF_DAY,
	ORDER_DOW
from 
    (select order_id, user_id, order_hour_of_day, order_dow
    FROM {{source('instacart','orders')}});