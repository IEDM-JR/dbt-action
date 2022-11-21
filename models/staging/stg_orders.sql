SELECT ORDER_ID, USER_ID, ORDER_NUMBER, ORDER_DOW AS DOW, ORDER_HOUR_OF_DAY AS HOD, DAYS_SINCE_PRIOR_ORDER AS DSPO
FROM {{source('instacart','orders')}}
WHERE EVAL_SET = 'test'

-- since only the orders_products_train will get visualized, the staging process, need to make a change to overall things.