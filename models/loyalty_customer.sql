
SELECT user_id,
MAX(ORDER_NUMBER) as NumberOfOrder
FROM {{ref('stg_order')}}
GROUP BY user_id
ORDER BY NumberOfOrder DESC 