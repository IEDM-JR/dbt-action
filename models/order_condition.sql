create or replace view IEDM1DB.PROJECT.ORDER_CONDITION(
	USER_ID,
	USE_HOURS,
	GAP_DAYS
) as 
SELECT DISTINCT user_id , 
SUM(order_hour_of_day) AS use_hours, SUM(days_since_prior_order) AS gap_days
FROM orders
GROUP BY user_id
ORDER BY use_hours DESC
LIMIT 40;