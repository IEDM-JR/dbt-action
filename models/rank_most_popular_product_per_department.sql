with sales as(
    select d.department_id, d.department, p.product_id, p.product_name, opp.order_id
    from  {{ source ('IEDM', 'ORDER_PRODUCTS_PRIOR')}} opp
    left join {{ source ('IEDM', 'PRODUCTS')}} p on opp.product_id = p.product_id
    left join {{ source ('IEDM', 'DEPARTMENTS')}} d on p.department_id = d.department_id
    order by opp.order_id DESC
),

product_cnt_per_department as(
    select distinct department_id, department, product_id, product_name, 
    count(order_id) over (partition by department_id, product_id) as product_cnt
    from sales
),

rank_cnt_per_department as(
    select *,
    rank() over (partition by department_id order by product_cnt desc) as rank_cnt
    from product_cnt_per_department
)

select * from rank_cnt_per_department where rank_cnt=1