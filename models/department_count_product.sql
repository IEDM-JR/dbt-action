
    -- select department_id, and department, and count the number of product of each department from the tmp table
    select dp.department_id, dp.department, count(dp.product_id) as count_product
    from {{ref('stg_department_product')}} dp
    group by dp.department_id, dp.department
    order by dp.department_id