SELECT DISTINCT user_id , 
SUM(order_hour_of_day) AS use_hours, SUM(days_since_prior_order) AS gap_days
FROM {{ source ('IEDM','ORDERS')}}
GROUP BY user_id
ORDER BY use_hours DESC
LIMIT 40