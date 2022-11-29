 -- select department_id, and department, and count the number of product of each department from the tmp table
    select department, count(product_id) as count_product
    from {{ref('int_fct_table')}} 
    group by department
    