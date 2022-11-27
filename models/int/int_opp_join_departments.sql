SELECT a.*,
b.DEPARTMENT
FROM {{ref('int_op_join_product')}} AS a
JOIN {{ref('stg_departments')}} AS b
ON a.DEPARTMENT_ID = b.DEPARTMENT_ID