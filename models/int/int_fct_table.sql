SELECT a.*, b.AISLE
FROM {{ref('int_opp_join_departments')}} AS a
JOIN {{ref('stg_aisles')}} AS b
ON a.AISLE_ID = b.AISLE_ID 