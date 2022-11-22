with DEPARTMENT_PRODUCT as(
        select p.department_id, p.product_id, d.department 
        from  {{ source ('IEDM','PRODUCTS')}} p
        inner join {{ source ('IEDM','DEPARTMENTS')}} d
        on d.department_id = p.department_id
    )

    select * from DEPARTMENT_PRODUCT